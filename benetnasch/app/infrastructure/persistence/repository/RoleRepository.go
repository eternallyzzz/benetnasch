package repository

import (
	"benetnasch/app/facade/model"
	"benetnasch/app/infrastructure/exception"
	"benetnasch/app/infrastructure/persistence/ormInit"
	"benetnasch/app/infrastructure/persistence/pgsql"
	"fmt"
	"log"
)

func ListResourceRoles() []*model.ResourceRoleDTO {
	engine := ormInit.GetEngine()
	var resourceRoles []*model.ResourceRoleDTO
	err := engine.SQL(pgsql.ListResourceRoles).Find(&resourceRoles)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	for _, v := range resourceRoles {
		var s []string
		err := engine.SQL(pgsql.ResourceRoles, v.Id).Find(&s)
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
		v.RoleList = s
	}
	return resourceRoles
}

func ListRolesByUserInfoId(userInfoId int) []string {
	engine := ormInit.GetEngine()
	var s []string
	sql := fmt.Sprintf(pgsql.ListRolesByUserInfoId, userInfoId)
	err := engine.SQL(sql).Find(&s)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	return s
}

func ListRoles(current, size int, vo *model.ConditionVO) []*model.RoleDTO {
	s := ""
	if vo.Keywords != "" {
		s += " where role_name like '%" + vo.Keywords + "%'"
	}
	sql1 := fmt.Sprintf(pgsql.ListRoles, s, size, (current-1)*size)
	engine := ormInit.GetEngine()
	var roles []*model.RoleDTO
	err := engine.SQL(sql1).Find(&roles)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	for _, v := range roles {
		var rIds []int
		var mids []int
		sql2 := fmt.Sprintf(pgsql.ResourceIds, s, size, (current-1)*size, v.Id)
		sql3 := fmt.Sprintf(pgsql.MenuIds, s, size, (current-1)*size, v.Id)
		err := engine.SQL(sql2).Find(&rIds)
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
		err = engine.SQL(sql3).Find(&mids)
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
		v.MenuIds = mids
		v.ResourceIds = rIds
	}
	return roles
}
