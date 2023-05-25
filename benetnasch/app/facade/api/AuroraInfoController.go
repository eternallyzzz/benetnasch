package api

import (
	"benetnasch/app/application/service"
	"github.com/gin-gonic/gin"
	"net/http"
)

// aurora信息

// Report 上报访客信息
func Report(c *gin.Context) {
	res := service.Report(c.Request)
	c.JSON(http.StatusOK, res)
}

// GetBlogHomeInfo 获取系统信息
func GetBlogHomeInfo(c *gin.Context) {
	res := service.GetBlogHomeInfo()
	c.JSON(http.StatusOK, res)
}

// GetBlogBackInfo 获取系统后台信息
func GetBlogBackInfo(c *gin.Context) {
	res := service.GetBlogBackInfo()
	c.JSON(http.StatusOK, res)
}

// UpdateWebsiteConfig 更新网站配置
func UpdateWebsiteConfig(c *gin.Context) {
	res := service.UpdateWebsiteConfig(c)
	c.JSON(http.StatusOK, res)
}

// GetWebsiteConfig 获取网站配置
func GetWebsiteConfig(c *gin.Context) {
	res := service.GetWebsiteConfig()
	c.JSON(http.StatusOK, res)
}

// GetAbout 查看关于我信息
func GetAbout(c *gin.Context) {
	res := service.GetAbout()
	c.JSON(http.StatusOK, res)
}

// UpdateAbout 修改关于我信息
func UpdateAbout(c *gin.Context) {
	res := service.UpdateAbout(c)
	c.JSON(http.StatusOK, res)
}

// SaveBlogPhotoAlbumCover 上传博客配置图片
func SaveBlogPhotoAlbumCover(c *gin.Context) {
	res := service.SaveBlogPhotoAlbumCover(c)
	c.JSON(http.StatusOK, res)
}
