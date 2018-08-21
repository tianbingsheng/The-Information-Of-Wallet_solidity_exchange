

let sqlHelpper = require("../utils/sqlHelpper")

module.exports = {
    findUsertokenWithId: async(userid, tokenid) => {
        //usertoken和token内连接查询
        let sql = `select tokenid,usertoken.balance,usertoken.lockbalance,token.symbol 
        from usertoken inner join token on 
        userid=? and tokenid=? and tokenid=token.id`
        let data = await sqlHelpper.query(sql, [userid, tokenid])
        return data
    },

    subBalance: async(userid, tokenid, num) => {
        let sql = "update usertoken set balance=balance-? where userid=? and tokenid=?"
        let data = await sqlHelpper.query(sql, [num, userid, tokenid])
        return data
    }
}
