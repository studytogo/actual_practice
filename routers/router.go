package routers

import (
	"github.com/astaxie/beego"
	"qrProject/controllers"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/form", &controllers.MainController{}, "post:FormData")
	beego.Router("/tel", &controllers.MainController{}, "get:TelData")
}
