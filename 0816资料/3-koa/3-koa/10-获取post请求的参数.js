

let Koa = require("koa")
let app = new Koa()

let Router = require("koa-router")
router = new Router()

let koaBody = require("koa-body")

router.post("/login", (ctx, next) => {
    let name = ctx.request.body.name
    ctx.body = "欢迎登录"
})

//注册koa-body
app.use(koaBody())

//将router注册到中间件
app.use(router.routes())

app.listen(3000)
