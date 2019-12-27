package main
import (
	"github.com/gin-gonic/gin"
	"net/http"
)

func main() {
	router := gin.Default()

	router.Handle("GET","/",Test2)

	router.Run(":9999")
}

func Test2(c *gin.Context){
	c.JSON(http.StatusOK,gin.H{"user":"zzg...."})
}
