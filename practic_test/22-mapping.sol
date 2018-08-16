pragma solidity ^0.4.24;


contract Demo {
    mapping(address=>uint)public balances ;
    function update(address add,uint newBalance){
        balances[add] = newBalance ;
    }
    //不知会返回mapping类型的数据
    function getBalance(address add)public returns(uint){
        return balances[add];
    }
}