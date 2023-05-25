package repository

import (
	"benetnasch/app/infrastructure/exception"
	"benetnasch/app/infrastructure/persistence/ormInit"
	"benetnasch/app/infrastructure/persistence/pgsql"
	"log"
)

func ListJobLogGroups() (s string) {
	engine := ormInit.GetEngine()
	_, err := engine.SQL(pgsql.ListJobLogGroups).Get(&s)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	return s
}
