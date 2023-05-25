package service

import (
	"benetnasch/app/domain/entity"
	"benetnasch/app/facade/model"
	"benetnasch/app/infrastructure/exception"
	"benetnasch/app/infrastructure/persistence/ormInit"
	"benetnasch/app/infrastructure/persistence/repository"
	"container/list"
	"github.com/gin-gonic/gin"
	"github.com/goccy/go-json"
	"log"
	"xorm.io/builder"
)

func ListCategories() model.ResultVO {
	data := repository.ListCategories()
	return model.ResultOkWithData(data)
}

func ListCategoriesAdmin(c *gin.Context) model.ResultVO {
	var conditionVO model.ConditionVO
	err := c.ShouldBind(&conditionVO)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	engine := ormInit.GetEngine()
	var count int64
	if conditionVO.Keywords != "" {
		count, err = engine.Where(builder.Like{"category_name", conditionVO.Keywords}).Count(&entity.TCategory{})
	} else {
		count, err = engine.Count(&entity.TCategory{})
	}
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	if count == 0 {
		return model.ResultOkWithData(model.PageResultDTO{Records: list.New(), Count: 0})
	}
	data := repository.ListCategoriesAdmin(conditionVO.Current, conditionVO.Size, &conditionVO)
	return model.ResultOkWithData(model.PageResultDTO{Records: data, Count: int(count)})
}

func ListCategoriesAdminBySearch(c *gin.Context) model.ResultVO {
	var conditionVO model.ConditionVO
	err := c.ShouldBind(&conditionVO)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	var categorys []entity.TCategory
	err = ormInit.GetEngine().Where(builder.Like{"category_name", conditionVO.Keywords}).OrderBy("id").Desc("id").Find(&categorys)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	marshal, err := json.Marshal(categorys)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	var categoryOptionDTOs []model.CategoryOptionDTO
	err = json.Unmarshal(marshal, &categoryOptionDTOs)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	return model.ResultOkWithData(categoryOptionDTOs)
}

func DeleteCategories(c *gin.Context) model.ResultVO {
	var iDs []int
	err := c.ShouldBind(&iDs)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	engine := ormInit.GetEngine()
	count, err := engine.In("category_id", iDs).Count(&entity.TArticle{})
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	if count > 0 {
		return model.ResultFailWithMessage("删除失败，该分类下存在文章")
	}
	_, err = engine.In("id", iDs).Delete(&entity.TCategory{})
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	return model.ResultOk()
}

func SaveOrUpdateCategory(c *gin.Context) model.ResultVO {
	var categoryVO model.CategoryVO
	err := c.ShouldBind(&categoryVO)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	engine := ormInit.GetEngine()
	var existCategory entity.TCategory
	_, err = engine.Select("id").Where("category_name = '" + categoryVO.CategoryName + "'").Get(&existCategory)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	if existCategory.CategoryName != "" && existCategory.Id != categoryVO.Id {
		return model.ResultFailWithMessage("分类名已存在")
	}
	category := entity.TCategory{Id: categoryVO.Id, CategoryName: categoryVO.CategoryName}
	session := engine.NewSession()
	session.Begin()
	defer session.Close()
	if categoryVO.Id != 0 {
		_, err = session.ID(categoryVO.Id).Update(&category)
	} else {
		_, err = session.Insert(&category)
	}
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
