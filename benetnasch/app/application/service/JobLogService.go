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
	"log"
	"strconv"
)

func ListJobLogs(c *gin.Context) model.ResultVO {
	current, err := strconv.Atoi(c.Query("current"))
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	size, err := strconv.Atoi(c.Query("size"))
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	var vo model.JobLogSearchVO
	err = c.ShouldBind(&vo)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	engine := ormInit.GetEngine()
	s := ""
	if vo.JobId != 0 {
		s += fmt.Sprintf(" where job_id = %d", vo.JobId)
	}
	if vo.JobGroup != "" && s == "" {
		s += " where job_group like '%" + vo.JobGroup + "%'"
	} else if vo.JobGroup != "" && s != "" {
		s += " and job_group like '%" + vo.JobGroup + "%'"
	}
	if vo.JobName != "" && s == "" {
		s += " where job_name like '%" + vo.JobName + "%'"
	} else if vo.JobName != "" && s != "" {
		s += " and job_name like '%" + vo.JobName + "%'"
	}
	if vo.Status != nil && s == "" {
		s += fmt.Sprintf(" where status = %d", vo.Status)
	} else if vo.Status != nil && s != "" {
		s += fmt.Sprintf(" and status = %d", vo.Status)
	}
	if vo.StartTime != "" && vo.EndTime != "" && s == "" {
		s += fmt.Sprintf(" where create_time between %s and %s", vo.StartTime, vo.EndTime)
	} else if vo.StartTime != "" && vo.EndTime != "" && s != "" {
		s += fmt.Sprintf(" and create_time between %s and %s", vo.StartTime, vo.EndTime)
	}
	count, err := engine.Prepare().Count(&entity.TJobLog{})
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	var joblogs []entity.TJobLog
	err = engine.Prepare().SQL(fmt.Sprintf("select * from t_job_log %s limit %d offset %d", s, size, size*(current-1))).Find(&joblogs)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	var dtos []model.JobLogDTO
	shared.StructCopy(joblogs, &dtos)
	if count == 0 {
		return model.ResultOkWithData(model.PageResultDTO{Records: list.New(), Count: 0})
	}
	return model.ResultOkWithData(model.PageResultDTO{Records: dtos, Count: int(count)})
}

func DeleteJobLogs(c *gin.Context) model.ResultVO {
	var iDs []int
	err := c.ShouldBind(&iDs)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	_, err = ormInit.GetEngine().Prepare().In("id", iDs).Delete(&entity.TJobLog{})
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	return model.ResultOk()
}

func CleanJobLogs() model.ResultVO {
	_, err := ormInit.GetEngine().Prepare().Delete(&entity.TJobLog{})
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	return model.ResultOk()
}

func ListJobLogGroups() model.ResultVO {
	data := repository.ListJobLogGroups()
	return model.ResultOkWithData(data)
}
