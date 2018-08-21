
let router = require("koa-router")()
let registerController = require("../controllers/register")
let loginController = require("../controllers/login")
let profileController = require("../controllers/profile")
let cashController = require("../controllers/cash")

router.get("/", (ctx) => {
    ctx.body = "交易所"
})

//注册页面
router.get("/register.html", registerController.registerHtml)
//注册表单提交
router.post("/register", registerController.register)
//登录页面
router.get("/login.html", loginController.loginHtml)
router.post("/login", loginController.login)

//我的财富页面
router.get("/profile.html", profileController.profileHtml)

//提现页面
router.get("/cash.html", cashController.cashHtml)
//提现请求被提交
router.post("/cash", cashController.cash)


module.exports = router