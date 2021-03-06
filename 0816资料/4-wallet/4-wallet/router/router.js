
let router = require("koa-router")()
let newAccountController = require("../controllers/newAccount")
let trasactionConytoller = require("../controllers/transaction")
let accountController = require("../controllers/account")

//获取创建钱包账户的页面
router.get("/newaccount", newAccountController.newAccountHtml)
//提交创建钱包账户的表单
router.post("/newaccount", newAccountController.newAccount)

//获取转账的页面
router.get("/transaction", trasactionConytoller.transactionHtml)
//通过私钥解锁账户
router.post("/privateunlock", accountController.unlockAccountWithPrivate)

module.exports = router
