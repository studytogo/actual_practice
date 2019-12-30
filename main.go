package main

import (
	"github.com/gin-gonic/gin"
	"github.com/google/uuid"
	"net/http"
)

func main() {
	router := gin.Default()

	router.Handle("GET", "/", Test2)

	router.Run(":9999")
}

func Test2(c *gin.Context) {
	uuidStr := uuid.New().String()
	c.JSON(http.StatusOK, gin.H{uuidStr: "赵公子大笨蛋加大白痴...."})
}
