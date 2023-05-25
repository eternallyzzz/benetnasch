package service

import (
	"benetnasch/app/domain/entity"
	"benetnasch/app/facade/model"
	"benetnasch/app/infrastructure/exception"
	"benetnasch/app/infrastructure/persistence/ormInit"
	"benetnasch/app/infrastructure/persistence/repository"
	"benetnasch/app/infrastructure/shared"
	"container/list"
	"fmt"
	"github.com/gin-gonic/gin"
	"github.com/goccy/go-json"
	"log"
	"xorm.io/builder"
)

func ListUserRoles() model.ResultVO {
	engine := ormInit.GetEngine()
	var roles []entity.TRole
	err := engine.Select("id, role_name").Find(&roles)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	var userRoleDTOs []model.UserRoleDTO
	marshal, err := json.Marshal(roles)
	err = json.Unmarshal(marshal, &userRoleDTOs)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	return model.ResultOkWithData(userRoleDTOs)
}

func ListRoles(c *gin.Context) model.ResultVO {
	var vo model.ConditionVO
	err := c.ShouldBind(&vo)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	var count int64
	engine := ormInit.GetEngine()
	if vo.Keywords != "" {
		count, err = engine.Where(builder.Like{"role_name", vo.Keywords}).Count(&entity.TRole{})
	} else {
		count, err = engine.Count(&entity.TRole{})
	}
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	data := repository.ListRoles(vo.Current, vo.Size, &vo)
	if count == 0 {
		return model.ResultOkWithData(model.PageResultDTO{Records: list.New(), Count: 0})
	}
	return model.ResultOkWithData(model.PageResultDTO{Records: data, Count: int(count)})
}

func SaveOrUpdateRole(c *gin.Context) model.ResultVO {
	var vo model.RoleVO
	err := c.ShouldBind(&vo)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	engine := ormInit.GetEngine()
	var roleCheck entity.TRole
	_, err = engine.Select("id").Where("role_name = '" + vo.RoleName + "'").Get(&roleCheck)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	if roleCheck.Id != 0 && roleCheck.Id != vo.Id {
		return model.ResultFailWithMessage("该角色存在")
	}
	role := entity.TRole{
		Id:        vo.Id,
		RoleName:  vo.RoleName,
		IsDisable: shared.FALSE,
	}
	session := engine.NewSession()
	session.Begin()
	defer session.Close()
	if roleCheck.Id != 0 {
		_, err = session.Prepare().ID(roleCheck.Id).Update(&role)
	} else {
		_, err = session.Prepare().Insert(&role)
	}
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		session.Rollback()
		return model.ResultFail()
	}
	if len(vo.ResourceIds) != 0 {
		if vo.Id != 0 {
			_, err = session.Where(fmt.Sprintf("role_id = %d", vo.Id)).Delete(&entity.TRoleResource{})
			if err != nil {
				exception.Logger.Println(err)
				exception.PrintStack()
				log.Println(err)
				session.Rollback()
				return model.ResultFail()
			}
		}
		var roleResources []entity.TRoleResource
		for _, v := range vo.ResourceIds {
			roleResources = append(roleResources, entity.TRoleResource{
				RoleId:     role.Id,
				ResourceId: v,
			})
		}
		_, err = session.Insert(&roleResources)
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
			session.Rollback()
			return model.ResultFail()
		}
	}
	if len(vo.MenuIds) != 0 {
		if vo.Id != 0 {
			_, err = session.Where(fmt.Sprintf("role_id = %d", vo.Id)).Delete(&entity.TRoleMenu{})
			if err != nil {
				exception.Logger.Println(err)
				exception.PrintStack()
				log.Println(err)
				session.Rollback()
				return model.ResultFail()
			}
		}
		var roleMenus []entity.TRoleMenu
		for _, v := range vo.MenuIds {
			roleMenus = append(roleMenus, entity.TRoleMenu{
				RoleId: role.Id,
				MenuId: v,
			})
		}
		_, err = session.Insert(&roleMenus)
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

func DeleteRoles(c *gin.Context) model.ResultVO {
	var iDs []int
	err := c.ShouldBind(&iDs)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	engine := ormInit.GetEngine()
	var count int64
	count, err = engine.In("role_id", iDs).Count(&entity.TUserRole{})
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	if count > 0 {
		return model.ResultFailWithMessage("该角色下存在用户")
	}
	_, err = engine.In("id", iDs).Delete(&entity.TRole{})
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	return model.ResultOk()
}
