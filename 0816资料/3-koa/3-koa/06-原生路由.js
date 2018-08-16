
let Koa = require("koa")
let app = new Koa()

//async标记的方法就是异步方法，如果调用异步方法。
//我们可以使用await标记，就是同步去调用异步方法.
//如果方法体里面使用了await，那么它所在的方法必须用async标记，
app.use(async (ctx, next) => {
    console.log(`${ctx.method} ${ctx.path} ${ctx.url}`)
    await next()
})

app.use(async (ctx, next) => {
    if (ctx.path == "/login") {
        ctx.body = "欢迎登录"
    } else if (ctx.path == "/register") {
        ctx.body = "欢迎来注册"
    }
    
})


app.listen(3000)
