

let Koa = require("koa")
let koa = new Koa()
let fs = require("fs")

//通过koa.use去注册中间件，所有的网络请求都会通过中间件
//请求的信息在ctx.request里面
//响应信息通过设置ctx.resqonse去返回给客户端
//若中间件不调用next方法，那么后面的中间件将不会被执行
koa.use(function(ctx, next) {
    console.log(ctx.response.type)
    //注意，如果使用fs.createReadStream返回页面给客户端那么需要设置响应的类型
    ctx.response.type = "text/html"
    //返回给客服端一个网页数据
    ctx.response.body = fs.createReadStream("./view/index.html")

    console.log(ctx.response.type)
    // next()
})


koa.listen(3000)
