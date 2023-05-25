package shared

import (
	"benetnasch/app/facade/model"
	"benetnasch/app/infrastructure/exception"
	"crypto/hmac"
	"crypto/sha256"
	"encoding/base64"
	"encoding/hex"
	"fmt"
	"github.com/goccy/go-json"
	jwt2 "github.com/golang-jwt/jwt/v5"
	"github.com/google/uuid"
	"log"
	"strconv"
	"strings"
	"time"
)

func CreateToken(dto *model.UserDetailsDTO) string {
	refreshToken(dto)
	userAuthId := strconv.Itoa(dto.Id)
	mapCla := jwt2.RegisteredClaims{
		ID:        GetUUID(),
		Subject:   userAuthId,
		Issuer:    "红白",
		IssuedAt:  jwt2.NewNumericDate(time.Now()),
		ExpiresAt: jwt2.NewNumericDate(time.Now().Add(time.Hour * 24 * 7)),
	}
	token := jwt2.NewWithClaims(jwt2.SigningMethodHS256, mapCla)
	tokenString, err := token.SignedString([]byte(generalKey()))
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	return tokenString
}

func refreshToken(dto *model.UserDetailsDTO) {
	expireTime := time.Now().Add(EXPIRE_TIME)
	dto.ExpireTime = expireTime
	dto.LastLoginTime = time.Now()
	marshal, err := json.Marshal(dto)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	HSet(LOGIN_USER, strconv.Itoa(dto.Id), marshal, EXPIRE_TIME)
}

func generalKey() string {
	encodedKey := base64.StdEncoding.EncodeToString([]byte(SECRET))
	h := hmac.New(sha256.New, []byte(SECRET))
	h.Write([]byte(encodedKey))
	return hex.EncodeToString(h.Sum(nil))
}

func GetUUID() string {
	newUUID, err := uuid.NewUUID()
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	return strings.ReplaceAll(newUUID.String(), "-", "")
}

func TokenParse(tokenStr string) jwt2.MapClaims {
	token, err := jwt2.Parse(tokenStr, func(token *jwt2.Token) (interface{}, error) {
		if _, ok := token.Method.(*jwt2.SigningMethodHMAC); !ok {
			return nil, fmt.Errorf("unexpected signing method: %v", token.Header["alg"])
		}
		return []byte(generalKey()), nil
	})
	if claims, ok := token.Claims.(jwt2.MapClaims); ok && token.Valid {
		return claims
	} else {
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
		return nil
	}
}
