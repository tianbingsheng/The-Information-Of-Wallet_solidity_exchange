

let Koa = require("koa")
let app = new Koa()

let Router = require("koa-router")
router = new Router()

let views = require("koa-views")
let path = require("path")

//第一个参数是请求的路径，第二个就是执行的函数
router.get("/login", async (ctx, next) => {
    let address = "北京市海淀区"
    await ctx.render("index.html", {
        title:"我来登录",
        address
    })
})

//将views注册到中间件
//views的作用是配合模板引擎使用，配置模板引擎的路径,需要指定模板引擎的后缀，如：ejs
app.use(views(path.join(__dirname, "view"), {extension:"ejs", map:{html:"ejs"}}))

//将router注册到中间件
app.use(router.routes())

app.listen(3000)
