

let Koa = require("koa")
let app = new Koa()

let Router = require("koa-router")
router = new Router()

let fs = require("fs")
let path = require("path")

let static = require("koa-static")

//静态资源的路径以注册的路径为根目录去访问
app.use(static(path.join(__dirname, "static")))

//第一个参数是请求的路径，第二个就是执行的函数
router.get("/login", (ctx, next) => {
    ctx.response.type = "text/html"
    ctx.body = fs.createReadStream("./view/index.html")
})

//将router注册到中间件
app.use(router.routes())

app.listen(3000)
