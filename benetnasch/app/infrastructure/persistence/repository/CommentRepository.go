package repository

import (
	"benetnasch/app/domain/entity"
	"benetnasch/app/facade/model"
	"benetnasch/app/infrastructure/exception"
	"benetnasch/app/infrastructure/persistence/ormInit"
	"benetnasch/app/infrastructure/persistence/pgsql"
	"fmt"
	"log"
	"strconv"
)

func ListComments(current, size int, vo *model.CommentVO) []*model.CommentDTO {
	engine := ormInit.GetEngine()
	var comments []*model.CommentDTO
	s := ""
	if vo.TopicId != "" {
		s += " where topic_id = " + vo.TopicId + " AND type = " + strconv.Itoa(vo.Type) + " AND c.is_review = 1 AND parent_id = 0"
	} else {
		s += " where type = " + strconv.Itoa(vo.Type) + " AND c.is_review = 1 AND parent_id = 0"
	}
	s = fmt.Sprintf(pgsql.ListComments, s, size, (current-1)*size)
	err := engine.SQL(s).Find(&comments)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	return comments
}

func ListReplies(commentIds []int) []*model.ReplyDTO {
	engine := ormInit.GetEngine()
	var replys []*model.ReplyDTO
	s := "("
	for k, v := range commentIds {
		if k == len(commentIds)-1 {
			s += strconv.Itoa(v) + ")"
			break
		}
		s += strconv.Itoa(v) + ","
	}
	s = fmt.Sprintf(pgsql.ListReplies, s)
	err := engine.SQL(s).Find(&replys)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	return replys
}

func ListTopSixComments() []*model.CommentDTO {
	engine := ormInit.GetEngine()
	var comments []*model.CommentDTO
	err := engine.SQL(pgsql.ListTopSixComments).Find(&comments)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	return comments
}

func CountComments(vo *model.ConditionVO) (count int64) {
	s := ""
	if vo.Type != 0 {
		s += " where c.type = " + strconv.Itoa(vo.Type)
	}
	if vo.IsReview != 0 && s != "" {
		s += " and c.is_review = " + strconv.Itoa(vo.IsReview)
	} else if vo.IsReview != 0 && s == "" {
		s += " where c.is_review = " + strconv.Itoa(vo.IsReview)
	}
	if vo.Keywords != "" && s != "" {
		s += " and u.nickname like '%" + vo.Keywords + "%'"
	} else if vo.Keywords != "" && s == "" {
		s += " where u.nickname like '%" + vo.Keywords + "%'"
	}
	s = fmt.Sprintf(pgsql.CountComments, s)
	engine := ormInit.GetEngine()
	count, err := engine.SQL(s).Count(&entity.TComment{})
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	return count
}

func ListCommentsAdmin(current, size int, vo *model.ConditionVO) []*model.CommentAdminDTO {
	s := ""
	if vo.Type != 0 {
		s += " where c.type = " + strconv.Itoa(vo.Type)
	}
	if vo.IsReview != 0 && s != "" {
		s += " and c.is_review = " + strconv.Itoa(vo.IsReview)
	} else if vo.IsReview != 0 && s == "" {
		s += " where c.is_review = " + strconv.Itoa(vo.IsReview)
	}
	if vo.Keywords != "" && s != "" {
		s += " and u.nickname like '%" + vo.Keywords + "%'"
	} else if vo.Keywords != "" && s == "" {
		s += " where u.nickname like '%" + vo.Keywords + "%'"
	}
	s = fmt.Sprintf(pgsql.ListCommentsAdmin, s, size, (current-1)*size)
	engine := ormInit.GetEngine()
	var commentsAdmin []*model.CommentAdminDTO
	err := engine.SQL(s).Find(&commentsAdmin)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	return commentsAdmin
}

func ListCommentCountByTypeAndTopicIds(ty int, topicIds []int) []*model.CommentCountDTO {
	s := "("
	for k, v := range topicIds {
		if k == len(topicIds)-1 {
			s += strconv.Itoa(v) + ")"
			break
		}
		s += strconv.Itoa(v) + ","
	}
	s = fmt.Sprintf(pgsql.ListCommentCountByTypeAndTopicIds, ty, s)
	engine := ormInit.GetEngine()
	var cscount []*model.CommentCountDTO
	err := engine.SQL(s).Find(&cscount)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	return cscount
}

func ListCommentCountByTypeAndTopicId(ty, topicId int) (commentCountDTO model.CommentCountDTO) {
	engine := ormInit.GetEngine()
	s := fmt.Sprintf(pgsql.ListCommentCountByTypeAndTopicId, ty, topicId)
	_, err := engine.SQL(s).Get(&commentCountDTO)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	return commentCountDTO
}
