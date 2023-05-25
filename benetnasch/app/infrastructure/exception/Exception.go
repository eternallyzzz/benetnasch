package exception

import (
	"log"
	"os"
	"runtime/debug"
	"time"
)

var Logger *log.Logger
var ErrorInfo string

type BizException struct {
	Code    int    `json:"code"`
	Message string `json:"message"`
}

func init() {
	now := time.Now().Format("2006-01-02")
	file, err := os.OpenFile("resource/log/error_"+now+".log", os.O_RDWR|os.O_CREATE|os.O_APPEND, 0666)
	if err != nil {
		debug.PrintStack()
	}
	Logger = log.New(file, "[error] ", log.LstdFlags|log.Llongfile)
}

func PrintStack() {
	now := time.Now().Format("2006-01-02")
	file, err := os.OpenFile("resource/log/stackInfo_"+now+".log", os.O_RDWR|os.O_CREATE|os.O_APPEND, 0666)
	if err != nil {
		debug.PrintStack()
	}
	logTime := time.Now().Format("2006-01-02 15:04:05")
	_, err = file.WriteString(logTime + "\n" + string(debug.Stack()))

	if err != nil {
		ErrorInfo = string(debug.Stack())
		debug.PrintStack()
	}
}
