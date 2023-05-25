package oss

import (
	"benetnasch/app/infrastructure/config"
	"benetnasch/app/infrastructure/exception"
	"benetnasch/app/infrastructure/shared"
	"github.com/aliyun/aliyun-oss-go-sdk/oss"
	"io"
	"log"
	"mime/multipart"
	"strings"
)

func Upload(file *multipart.FileHeader, path string) string {
	c := getOssClient()
	open, err := file.Open()
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	index := strings.LastIndex(file.Filename, ".")
	preSuffix := file.Filename[:index]
	postSuffix := file.Filename[index:]
	fileName := shared.GetMD5(preSuffix)

	exist, err := c.IsObjectExist(path + fileName + postSuffix)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	if !exist {
		err = c.PutObject(path+fileName+postSuffix, io.Reader(open))
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
	}
	return path + fileName + postSuffix
}

func getOssClient() *oss.Bucket {
	client, err := oss.New(config.OssEndPoint, config.OssAccessKeyID, config.OssAccessKeySecret)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	bucket, err := client.Bucket(config.OssBucketName)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	return bucket
}

func UploadFile(value io.Reader, fileName, path string) string {
	c := getOssClient()
	exist, err := c.IsObjectExist(path + fileName)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	if !exist {
		err = c.PutObject(path+fileName, value)
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
	}
	return path + fileName
}
