pragma solidity ^0.4.24;


contract Demo {
    address owner ;

    function Demo () {
        owner = msg.sender ;
    }
    //合约方法的调用者向owner进行转账,一般进行转账是要用transfer,send更为底层
    function transaction() payable {
        owner.transfer(msg.value);
    }
    //获取owner余额
    function getOwnerBalance() constant returns(uint){
        return owner.balance;
    }
    //获取地址的余额
    function getAddressBalance ()constant returns (uint){
        return msg.sender.balance ;
    }
}