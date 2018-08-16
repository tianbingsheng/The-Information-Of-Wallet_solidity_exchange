
let web3 = require("../utils/myUtils").getweb3()

module.exports = {
    unlockAccountWithPrivate: (ctx) => {
        let privatekey = ctx.request.body.privatekey
        console.log(privatekey)
        let account = web3.eth.accounts.privateKeyToAccount(privatekey)
        console.log(account)
        ctx.body = "私钥解锁"
        
    }
}