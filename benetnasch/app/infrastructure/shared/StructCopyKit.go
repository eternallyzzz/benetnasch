package shared

import (
	"benetnasch/app/infrastructure/exception"
	"github.com/goccy/go-json"
	"log"
)

func StructCopy(old, new interface{}) {
	marshal, err := json.Marshal(old)
	err = json.Unmarshal(marshal, new)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return
	}
}
func Unmarsh(old, new interface{}) {
	err := json.Unmarshal([]byte(old.(string)), new)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
		return
	}
}
