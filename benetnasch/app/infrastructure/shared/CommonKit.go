package shared

import (
	"benetnasch/app/infrastructure/exception"
	"log"
	"math/rand"
	"regexp"
	"strconv"
)

func CheckEmail(check string) bool {
	rule := "\\w[-\\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\\.)+[A-Za-z]{2,14}"
	match, err := regexp.MatchString(rule, check)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	return match
}

func RandomCode() string {
	return strconv.Itoa(rand.Intn(899999) + 100000)
}
