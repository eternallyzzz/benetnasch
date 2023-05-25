package repository

import (
	"benetnasch/app/facade/model"
	"benetnasch/app/infrastructure/exception"
	"benetnasch/app/infrastructure/persistence/ormInit"
	"benetnasch/app/infrastructure/persistence/pgsql"
	"fmt"
	"log"
)

func ListUniqueViews(startTime, endTime string) []model.UniqueViewDTO {
	s := fmt.Sprintf(pgsql.ListUniqueViews, startTime, endTime)
	engine := ormInit.GetEngine()
	var uqvs []model.UniqueViewDTO
	err := engine.SQL(s).Find(&uqvs)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	return uqvs
}
