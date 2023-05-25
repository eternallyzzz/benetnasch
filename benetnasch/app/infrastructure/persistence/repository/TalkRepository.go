package repository

import (
	"benetnasch/app/facade/model"
	"benetnasch/app/infrastructure/exception"
	"benetnasch/app/infrastructure/persistence/ormInit"
	"benetnasch/app/infrastructure/persistence/pgsql"
	"fmt"
	"log"
	"strconv"
)

func ListTalks(current, size int) []*model.TalkDTO {
	s := fmt.Sprintf(pgsql.ListTalks, size, (current-1)*size)
	engine := ormInit.GetEngine()
	var talks []*model.TalkDTO
	err := engine.SQL(s).Find(&talks)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	return talks
}

func GetTalkById(talkId int) (talk model.TalkDTO) {
	s := fmt.Sprintf(pgsql.GetTalkById, talkId)
	engine := ormInit.GetEngine()
	_, err := engine.SQL(s).Get(&talk)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	return talk
}

func ListTalksAdmin(current, size int, vo *model.ConditionVO) []*model.TalkAdminDTO {
	s := ""
	if vo.Status != 0 {
		s += " where t.status = " + strconv.Itoa(vo.Status)
	}
	s = fmt.Sprintf(pgsql.ListTalksAdmin, s, size, (current-1)*size)
	engine := ormInit.GetEngine()
	var talksAdmin []*model.TalkAdminDTO
	err := engine.SQL(s).Find(&talksAdmin)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	return talksAdmin
}

func GetTalkByIdAdmin(talkId int) (talkAdmin model.TalkAdminDTO) {
	s := fmt.Sprintf(pgsql.GetTalkByIdAdmin, talkId)
	engine := ormInit.GetEngine()
	_, err := engine.SQL(s).Get(&talkAdmin)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	return talkAdmin
}
