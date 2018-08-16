
let Koa = require("koa")
let koa = new Koa()

//通过koa.use去注册中间件，所有的网络请求都会通过中间件
//请求的信息在ctx.request里面
//响应信息通过设置ctx.resqonse去返回给客户端
//若中间件不调用next方法，那么后面的中间件将不会被执行
koa.use(function(ctx, next) {
    ctx.response.body = "hello node.js"
    console.log(ctx.response.type)

    // next()
})

koa.use(ctx => {
    ctx.body = "haha"
    console.log(ctx.url)
})

koa.listen(3000)
