package main

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

func main() {
	router := gin.Default()

	router.Handle("GET", "/", Test2)

	router.Run(":9999")
}

func Test2(c *gin.Context) {
	name := c.Query("name")
	c.JSON(http.StatusOK, gin.H{"内容": name + "拍了拍赵公子"})
}
