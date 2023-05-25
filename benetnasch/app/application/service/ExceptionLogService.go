package service

import (
	"benetnasch/app/domain/entity"
	"benetnasch/app/facade/model"
	"benetnasch/app/infrastructure/exception"
	"benetnasch/app/infrastructure/persistence/ormInit"
	"benetnasch/app/infrastructure/shared"
	"container/list"
	"github.com/gin-gonic/gin"
	"log"
	"xorm.io/builder"
)

func ListExceptionLogs(c *gin.Context) model.ResultVO {
	var vo model.ConditionVO
	err := c.ShouldBind(&vo)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	var operationLogs []entity.TExceptionLog
	engine := ormInit.GetEngine()
	if vo.Keywords != "" {
		err = engine.Prepare().Where(builder.Like{"opt_desc", vo.Keywords}).
			OrderBy("id").Desc("id").Limit(vo.Size, vo.Size*(vo.Current-1)).Find(&operationLogs)
	} else {
		err = engine.Prepare().OrderBy("id").Desc("id").Limit(vo.Size, vo.Size*(vo.Current-1)).Find(&operationLogs)
	}
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	count, err := engine.Count(&entity.TExceptionLog{})
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	var exceptionLogDTOs []model.ExceptionLogDTO
	shared.StructCopy(operationLogs, &exceptionLogDTOs)
	if count == 0 {
		return model.ResultOkWithData(model.PageResultDTO{Records: list.New(), Count: 0})
	}
	return model.ResultOkWithData(model.PageResultDTO{Records: exceptionLogDTOs, Count: int(count)})
}

func DeleteExceptionLogs(c *gin.Context) model.ResultVO {
	var iDs []int
	err := c.ShouldBind(&iDs)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	_, err = ormInit.GetEngine().In("id", iDs).Delete(&entity.TExceptionLog{})
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	return model.ResultOk()
}
