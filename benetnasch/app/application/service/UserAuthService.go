package service

import (
	"benetnasch/app/domain/entity"
	"benetnasch/app/facade/model"
	"benetnasch/app/infrastructure/exception"
	"benetnasch/app/infrastructure/persistence/ormInit"
	"benetnasch/app/infrastructure/persistence/repository"
	"benetnasch/app/infrastructure/rabbit"
	"benetnasch/app/infrastructure/shared"
	"container/list"
	"github.com/gin-gonic/gin"
	"github.com/goccy/go-json"
	"golang.org/x/crypto/bcrypt"
	"log"
	"strconv"
	"strings"
	"xorm.io/xorm"
)

func SendCode(c *gin.Context) model.ResultVO {
	Username := c.Query("username")
	if !shared.CheckEmail(Username) {
		return model.ResultFailWithMessage("请输入正确邮箱")
	}
	code := shared.RandomCode()
	codem := make(map[string]interface{})
	codem["content"] = "您的验证码为 " + code + " 有效期15分钟，请不要告诉他人哦！"
	emailDTO := model.EmailDTO{
		Email:      Username,
		CommentMap: codem,
		Template:   "resource/template/common.html",
		Subject:    shared.CAPTCHA,
	}
	rabbit.ConvertAndSend(shared.EMAIL_EXCHANGE, "", emailDTO)
	shared.SetWithTime(shared.USER_CODE_KEY+Username, code, shared.CODE_EXPIRE_TIME)
	return model.ResultOk()
}

func ListUserAreas(c *gin.Context) model.ResultVO {
	typeId := c.Query("type")
	var userAreaDTOs []model.UserAreaDTO
	switch typeId {
	case "1":
		userArea := shared.Get(shared.USER_AREA).(string)
		if userArea != "" {
			err := json.Unmarshal([]byte(userArea), &userAreaDTOs)
			if err != nil {
				exception.Logger.Println(err)
				exception.PrintStack()
				log.Println(err)
			}
		}
		return model.ResultOkWithData(userAreaDTOs)
	case "2":
		visitorArea := shared.HGetAll(shared.VISITOR_AREA)
		if visitorArea != nil {
			for k, v := range visitorArea {
				visitCount, err := strconv.Atoi(v)
				region := strings.Split(k, "|")[2]
				province := region
				if strings.HasSuffix(region, "省") {
					province = strings.Split(region, "省")[0]
				}
				if err != nil {
					exception.Logger.Println(err)
					exception.PrintStack()
					log.Println(err)
				}
				userAreaDTO := model.UserAreaDTO{
					Name:  province,
					Value: int64(visitCount),
				}
				userAreaDTOs = append(userAreaDTOs, userAreaDTO)
			}
		}
	default:
		break
	}
	return model.ResultOkWithData(userAreaDTOs)
}

func ListUsers(c *gin.Context) model.ResultVO {
	var vo model.ConditionVO
	err := c.ShouldBind(&vo)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	count := repository.CountUser(&vo)
	if count == 0 {
		return model.ResultOkWithData(model.PageResultDTO{Records: list.New(), Count: 0})
	}
	data := repository.ListUsers(vo.Current, vo.Size, &vo)
	return model.ResultOkWithData(model.PageResultDTO{Records: data, Count: int(count)})
}

func Register(c *gin.Context) model.ResultVO {
	var userVo model.UserVO
	err := c.ShouldBind(&userVo)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}

	if userVo.Code != shared.Get(shared.USER_CODE_KEY+userVo.Username) {
		return model.ResultFailWithMessage("验证码有误！")
	}

	if !shared.CheckEmail(userVo.Username) {
		return model.ResultFailWithMessage("邮箱格式不对！")
	}
	if CheckUser(userVo) {
		return model.ResultFailWithMessage("邮箱已被注册！")
	}
	userInfo := entity.TUserInfo{
		Email:    userVo.Username,
		Nickname: shared.DEFAULT_NICKNAME,
		Avatar:   GetWebsiteConfig().Data.(model.WebsiteConfigDTO).UserAvatar,
	}

	engine := ormInit.GetEngine()
	session := engine.NewSession()
	defer func(session *xorm.Session) {
		err := session.Close()
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
	}(session)

	err = session.Begin()
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	_, err = session.Prepare().Insert(&userInfo)
	if err != nil {
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
		err := session.Rollback()
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
		return model.ResultFailWithMessage("注册失败，稍后再试")
	}
	userRole := entity.TUserRole{
		UserId: userInfo.Id,
		RoleId: 2,
	}
	_, err = session.Prepare().Insert(&userRole)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFailWithMessage("注册失败，稍后再试")
	}
	password, err := bcrypt.GenerateFromPassword([]byte(userVo.Password), bcrypt.DefaultCost)
	if err != nil {
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
		err := session.Rollback()
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
		return model.ResultFailWithMessage("注册失败，稍后再试")
	}
	userAuth := entity.TUserAuth{
		UserInfoId: userInfo.Id,
		Username:   userVo.Username,
		Password:   string(password),
		LoginType:  1,
	}
	_, err = session.Prepare().Insert(&userAuth)
	if err != nil {
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}

		err := session.Rollback()
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
		return model.ResultFailWithMessage("注册失败，稍后再试")
	}

	err = session.Commit()
	if err != nil {
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}

		err := session.Rollback()
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
		return model.ResultFailWithMessage("注册失败，稍后再试")
	}
	return model.ResultOk()
}

func UpdatePassword(c *gin.Context) model.ResultVO {
	var userVO model.UserVO
	err := c.ShouldBind(&userVO)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	if userVO.Code != shared.Get(shared.USER_CODE_KEY+userVO.Username) {
		return model.ResultFailWithMessage("验证码有误！")
	}
	if !shared.CheckEmail(userVO.Username) {
		return model.ResultFailWithMessage("邮箱格式不对！")
	}
	if !CheckUser(userVO) {
		return model.ResultFailWithMessage("邮箱未注册！")
	}

	password, err := bcrypt.GenerateFromPassword([]byte(userVO.Password), bcrypt.DefaultCost)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	userAuth := entity.TUserAuth{
		Password: string(password),
		Username: userVO.Username,
	}
	session := ormInit.GetEngine().NewSession()
	err = session.Begin()
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	defer func(session *xorm.Session) {
		err := session.Close()
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
	}(session)

	_, err = session.Prepare().Where("username = '" + userAuth.Username + "'").Update(&userAuth)
	if err != nil {
		err := session.Rollback()
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
		return model.ResultFailWithMessage(err.Error())
	}
	err = session.Commit()
	if err != nil {
		err := session.Rollback()
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
		return model.ResultFailWithMessage(err.Error())
	}
	return model.ResultOk()
}

func UpdateAdminPassword(c *gin.Context) model.ResultVO {
	var passwordVO model.PasswordVO
	err := c.ShouldBind(&passwordVO)
	if err != nil && passwordVO.NewPassword == "" || passwordVO.OldPassword == "" {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	engine := ormInit.GetEngine()
	var user entity.TUserAuth
	_, err = engine.ID(shared.GetUserDetailsDTO().Id).Get(&user)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}

	err = bcrypt.CompareHashAndPassword([]byte(user.Password), []byte(passwordVO.OldPassword))
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	password, err := bcrypt.GenerateFromPassword([]byte(passwordVO.NewPassword), bcrypt.DefaultCost)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return model.ResultFail()
	}
	if user.Username != "" && err == nil {
		userAuth := entity.TUserAuth{
			Id:       shared.GetUserDetailsDTO().Id,
			Password: string(password),
		}
		session := engine.NewSession()
		err := session.Begin()
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
			return model.ResultFail()
		}
		defer func(session *xorm.Session) {
			err := session.Close()
			if err != nil {
				exception.Logger.Println(err)
				exception.PrintStack()
				log.Println(err)
			}
		}(session)
		_, err = session.Prepare().ID(userAuth.Id).Update(&userAuth)
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
			return model.ResultFail()
		}
		err = session.Commit()
		if err != nil {
			err := session.Rollback()
			if err != nil {
				exception.Logger.Println(err)
				exception.PrintStack()
				log.Println(err)
			}
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
			return model.ResultFail()
		}
		return model.ResultOk()
	}
	return model.ResultFailWithMessage("旧密码不正确")
}

func Logout() model.ResultVO {
	shared.HDel(shared.LOGIN_USER, strconv.Itoa(shared.GetUserDetailsDTO().Id))
	return model.ResultOkWithData(model.UserLogoutStatusDTO{
		Message: "注销成功",
	})
}

func QQLogin(c *gin.Context) model.ResultVO {
	return model.ResultOk()
}

func CheckUser(vo model.UserVO) bool {
	var userAuth entity.TUserAuth
	b, err := ormInit.GetEngine().SQL("select Username from t_user_auth where Username = '" + vo.Username + "'").Get(&userAuth)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return false
	}
	return b
}

func CheckUserAuth(vo model.UserVO) *model.UserDetailsDTO {
	var userAuth entity.TUserAuth
	engine := ormInit.GetEngine()
	_, err := engine.SQL("select * from t_user_auth where Username = '" + vo.Username + "'").Get(&userAuth)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return nil
	}
	err = bcrypt.CompareHashAndPassword([]byte(userAuth.Password), []byte(vo.Password))
	if err != nil {
		return nil
	}
	var userInfo entity.TUserInfo
	_, err = engine.SQL("select * from t_user_info where id = " + strconv.Itoa(userAuth.UserInfoId)).Get(&userInfo)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return nil
	}
	var roles []string
	err = engine.SQL("select role_name from t_role where id in (select role_id from t_user_role where user_id = " + strconv.Itoa(userInfo.Id) + ")").Find(&roles)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return nil
	}
	userDetailsDTO := &model.UserDetailsDTO{
		Id:          userAuth.Id,
		UserInfoId:  userInfo.Id,
		Email:       userInfo.Email,
		LoginType:   userAuth.LoginType,
		Username:    userAuth.Username,
		Password:    userAuth.Password,
		Roles:       roles,
		Nickname:    userInfo.Nickname,
		Avatar:      userInfo.Avatar,
		Intro:       userInfo.Intro,
		Website:     userInfo.Website,
		IsSubscribe: userInfo.IsSubscribe,
		IsDisable:   userInfo.IsDisable,
	}
	return userDetailsDTO
}

func UpdateUserIp(user entity.TUserAuth) {
	if user.IpSource == "0" || user.IpSource == "" {
		user.IpSource = shared.UNKNOWN
	}
	session := ormInit.GetEngine().NewSession()
	err := session.Begin()
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return
	}
	defer func(session *xorm.Session) {
		err := session.Close()
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
	}(session)
	_, err = session.Prepare().ID(user.Id).MustCols("ip_source", "ip_address").Update(&user)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		err := session.Rollback()
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
			return
		}
		return
	}
	err = session.Commit()
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		err := session.Rollback()
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
			return
		}
		return
	}
}
