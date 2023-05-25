package repository

import (
	"benetnasch/app/domain/entity"
	"benetnasch/app/infrastructure/exception"
	"benetnasch/app/infrastructure/persistence/ormInit"
	"log"
)

func SaveOptLog(optLog entity.TOperationLog) {
	session := ormInit.GetEngine().NewSession()
	defer session.Close()
	session.Begin()
	_, err := session.Prepare().Insert(optLog)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		session.Rollback()
		return
	}
	session.Commit()
}
