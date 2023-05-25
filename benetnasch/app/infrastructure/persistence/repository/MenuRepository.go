package repository

import (
	"benetnasch/app/domain/entity"
	"benetnasch/app/infrastructure/exception"
	"benetnasch/app/infrastructure/persistence/ormInit"
	"benetnasch/app/infrastructure/persistence/pgsql"
	"fmt"
	"log"
)

func ListMenusByUserInfoId(userInfoId int) []*entity.TMenu {
	s := fmt.Sprintf(pgsql.ListMenusByUserInfoId, userInfoId)
	engine := ormInit.GetEngine()
	var menu []*entity.TMenu
	err := engine.SQL(s).Find(&menu)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	return menu
}
