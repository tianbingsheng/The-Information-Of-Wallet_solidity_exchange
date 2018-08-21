
let sqlHelpper = require("../utils/sqlHelpper")
let myUtils = require("../utils/myUtils")

module.exports = {
    createWalletorder: async(userid, tokenid, hash, type, count) => {
        let sql = "insert into walletorder values(0,?,?,?,?,?,?)"
        let params = [userid, tokenid, hash, type, count, myUtils.timestamp()]
        let data = await sqlHelpper.query(sql, params)
        return data;
    }
}