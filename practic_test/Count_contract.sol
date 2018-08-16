pragma solidity ^0.4.24;

//一个完整的合约
//在solidity当中,全局变量又叫做状态变量
contract Counter {
    uint count = 0 ;
    address owner ;
    
    //构造函数,初始化的作用
    //部署编译的时候,先进性调用构造函数
    function Counter (uint a) {
        count = a ;
        owner = msg.sender ;
    }
    
    function increament () public {
        if (owner == msg.sender){
            count = count + 10 ;
        }else {
            count++ ;
        }
    }
    
    function getCount() constant returns (uint) {
        return count ;
    }
    
    //合约自毁的方法,合约废弃后把剩余的以太币转入到指定账户
    function kill (){
        if (owner == msg.sender){
            selfdestruct(owner);
        }
    }
}