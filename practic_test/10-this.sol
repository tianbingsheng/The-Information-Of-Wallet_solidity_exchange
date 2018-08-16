pragma solidity ^0.4.24;

contract Demo {
    //返回的就是合约本身的地址,当前的合约的地址
    //当前调用者的地址就是msg.sender;
    //合约既然有自己的地址,所以合约本身也会有自己的余额
    function getContractAddress () constant returns (address){
        return this ;
    }
    //合约初始化的时候就是0
    function getContractBalance ()constant returns(uint){
        return this.balance ;
    }
    //我们可以通过转账向合约进行转账
    function toContractTransfer() payable{
        address contractAddress = this ;
        //账号向合约进行转账,用send,transfer行不通
        contractAddress.send(msg.value);
    }
    
    function getAccountBalance()constant returns (uint){
        return msg.sender.balance ;
    }
}