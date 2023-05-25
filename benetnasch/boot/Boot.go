package boot

import (
	"benetnasch/app/infrastructure/exception"
	"benetnasch/app/infrastructure/middlewares"
	"benetnasch/app/infrastructure/rabbit"
	"benetnasch/app/infrastructure/task"
	"benetnasch/gateway"
	"github.com/gin-gonic/gin"
	"io"
	"log"
	"os"
)

func Run() {
	// 打印logo
	banner()
	// 设置项
	settings()
	// 创建服务
	router := gin.Default()
	// 配置中间件
	router.Use(gin.Recovery())
	router.Use(middlewares.Log())
	router.Use(middlewares.SpiderReject())
	router.Use(middlewares.Cors())
	router.Use(middlewares.LoginFilter())
	router.Use(middlewares.AuthorizationFilter())
	router.Use(middlewares.AdminResourceFilter())
	router.Use(middlewares.AccessLimiter())
	// 路由网关
	gateway.WebAdapter(router)
	// 启动消息监听项
	listener()
	// 启动
	err := router.Run("0.0.0.0:7777")
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

}
func banner() {
	open, err := os.Open("resource/banner.txt")
	if err != nil {
		exception.Logger.Println(err)
		log.Println(err)
	}
	var data []byte
	buf := make([]byte, 1024)
	for {
		read, err := open.Read(buf)
		if err != nil && err != io.EOF {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
		if read == 0 {
			break
		}
		data = append(data, buf[:read]...)
	}
	log.Println(string(data))
}

func settings() {
	// 禁用控制台日志颜色
	gin.DisableConsoleColor()
	// 记录到文件
	file, _ := os.Create("resource/log/server.log")
	// 同时将日志写入文件和控制台
	gin.DefaultWriter = io.MultiWriter(file, os.Stdout)
}

func listener() {
	go rabbit.EmailListener()
	go task.StatisticsUserArea()
}
