package service

import (
	"benetnasch/app/domain/entity"
	"benetnasch/app/facade/model"
	"benetnasch/app/infrastructure/exception"
	"benetnasch/app/infrastructure/oss"
	"benetnasch/app/infrastructure/persistence/ormInit"
	"benetnasch/app/infrastructure/shared"
	"container/list"
	"fmt"
	"github.com/gin-gonic/gin"
	"log"
	"strconv"
)

func SavePhotosAlbumCover(c *gin.Context) model.ResultVO {
	file, err := c.FormFile("file")
	if err != nil {
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
			return model.ResultFail()
		}
	}
	fileUri := oss.Upload(file, "photos/")
	return model.ResultOkWithData(shared.FILEURL + fileUri)
}

func ListPhotos(c *gin.Context) model.ResultVO {
	var vo model.ConditionVO
	err := c.ShouldBind(&vo)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	engine := ormInit.GetEngine()
	var photos []entity.TPhoto
	if vo.AlbumId != 0 {
		err = engine.Prepare().
			SQL(fmt.Sprintf("select * from t_photo where album_id = %d and is_delete = %d order by id, update_time desc limit %d offset %d",
				vo.AlbumId, vo.IsDelete, vo.Size, vo.Size*(vo.Current-1))).Find(&photos)
	} else {
		err = engine.Prepare().
			SQL(fmt.Sprintf("select * from t_photo where is_delete = %d order by id, update_time desc limit %d offset %d",
				vo.IsDelete, vo.Size, vo.Size*(vo.Current-1))).Find(&photos)
	}
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	count, err := engine.Count(&entity.TPhoto{})
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	if count == 0 {
		return model.ResultOkWithData(model.PageResultDTO{Records: list.New()})
	}
	var dtos []model.PhotoAdminDTO
	shared.StructCopy(photos, &dtos)
	return model.ResultOkWithData(model.PageResultDTO{Records: dtos, Count: int(count)})
}

func UpdatePhoto(c *gin.Context) model.ResultVO {
	var vo model.PhotoInfoVO
	err := c.ShouldBind(&vo)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	var photo entity.TPhoto
	shared.StructCopy(vo, &photo)
	session := ormInit.GetEngine().NewSession()
	session.Begin()
	defer session.Close()
	_, err = session.Prepare().ID(photo.Id).Update(&photo)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		session.Rollback()
		return model.ResultFail()
	}
	session.Commit()
	return model.ResultOk()
}

func SavePhotos(c *gin.Context) model.ResultVO {
	var vo model.PhotoVO
	err := c.ShouldBind(&vo)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	uuid := shared.GetUUID()
	aId, _ := strconv.Atoi(vo.AlbumId)
	var photos []entity.TPhoto
	for _, v := range vo.PhotoUrls {
		photos = append(photos, entity.TPhoto{
			AlbumId:   aId,
			PhotoName: uuid[:20],
			PhotoSrc:  v,
		})
	}
	session := ormInit.GetEngine().NewSession()
	session.Begin()
	defer session.Close()
	_, err = session.Prepare().Insert(&photos)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		session.Rollback()
		return model.ResultFail()
	}
	session.Commit()
	return model.ResultOk()
}

func UpdatePhotosAlbum(c *gin.Context) model.ResultVO {
	var vo model.PhotoVO1
	err := c.ShouldBind(&vo)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	var photos []entity.TPhoto
	for _, v := range vo.PhotoIds {
		photos = append(photos, entity.TPhoto{
			Id:      v,
			AlbumId: vo.AlbumId,
		})
	}
	session := ormInit.GetEngine().NewSession()
	session.Begin()
	defer session.Close()
	for _, v := range photos {
		_, err = session.Prepare().ID(v.Id).Update(&v)
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
			session.Rollback()
			return model.ResultFail()
		}
	}
	session.Commit()
	return model.ResultOk()
}

func UpdatePhotoDelete(c *gin.Context) model.ResultVO {
	var vo model.DeleteVO
	err := c.ShouldBind(&vo)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	var photos []entity.TPhoto
	for _, v := range vo.Ids {
		photos = append(photos, entity.TPhoto{
			Id:       v,
			IsDelete: vo.IsDelete,
		})
	}
	session := ormInit.GetEngine().NewSession()
	session.Begin()
	defer session.Close()
	for _, v := range photos {
		_, err = session.Prepare().ID(v.Id).MustCols("is_delete").Update(&v)
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
			session.Rollback()
			return model.ResultFail()
		}
	}
	if vo.IsDelete == 0 {
		var photoList []entity.TPhoto
		err = session.Prepare().Select("album_id").In("id", vo.Ids).GroupBy("album_id").Find(&photoList)
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
			session.Rollback()
			return model.ResultFail()
		}
		var photoAlbums []entity.TPhotoAlbum
		for _, v := range photoList {
			photoAlbums = append(photoAlbums, entity.TPhotoAlbum{
				Id:       v.AlbumId,
				IsDelete: shared.FALSE,
			})
		}
		for _, v := range photoAlbums {
			_, err = session.Prepare().ID(v.Id).Update(&v)
			if err != nil {
				exception.Logger.Println(err)
				exception.PrintStack()
				log.Println(err)
				session.Rollback()
				return model.ResultFail()
			}
		}
	}
	session.Commit()
	return model.ResultOk()
}

func DeletePhotos(c *gin.Context) model.ResultVO {
	var iDs []int
	err := c.ShouldBind(&iDs)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	_, err = ormInit.GetEngine().Prepare().In("id", iDs).Delete(&entity.TPhoto{})
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	return model.ResultOk()
}

func ListPhotosByAlbumId(c *gin.Context) model.ResultVO {
	current := c.Query("current")
	size := c.Query("size")
	albumId := c.Param("albumId")
	engine := ormInit.GetEngine()
	var photoAlbum entity.TPhotoAlbum
	_, err := engine.Where("id = " + albumId + " and is_delete = 0 and status = 1").Get(&photoAlbum)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	if photoAlbum.Id == 0 {
		return model.ResultFailWithMessage("相册不存在")
	}
	var photos []entity.TPhoto
	cu, err := strconv.Atoi(current)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	si, err := strconv.Atoi(size)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	err = engine.SQL("select photo_src from t_photo where album_id = " + albumId + " and is_delete = 0 order by id desc " +
		"limit " + size + " offset " + strconv.Itoa((cu-1)*si)).Find(&photos)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	if len(photos) == 0 {
		return model.ResultOkWithData(model.PhotoDTO{
			PhotoAlbumCover: photoAlbum.AlbumCover,
			PhotoAlbumName:  photoAlbum.AlbumName,
			Photos:          list.New(),
		})
	}
	var psrc []string
	for _, v := range photos {
		psrc = append(psrc, v.PhotoSrc)
	}
	return model.ResultOkWithData(model.PhotoDTO{
		PhotoAlbumCover: photoAlbum.AlbumCover,
		PhotoAlbumName:  photoAlbum.AlbumName,
		Photos:          psrc,
	})
}
