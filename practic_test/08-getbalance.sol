pragma solidity ^0.4.24;

//值类型数据:布尔,整型,地址,固定长度的字节数组,枚举类型
//以太坊的地址类型,是一个20字节的值,不同账户之间的交易就是地址之间的交易
//查询地址的余额
contract Balance {
    //返回当前地址的余额
    function getAddressBalance(address add) constant returns (uint){
        return add.balance ;
    }
}