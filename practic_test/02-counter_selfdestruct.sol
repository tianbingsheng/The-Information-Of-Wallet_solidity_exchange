pragma solidity ^0.4.24;

//简单的实现一个计数器
contract Counter {
    uint count = 0 ;

    function Counter (uint newCount){
        count = newCount ;
    }
    
    function increament () {
        count ++ ;
    }
    
    //增加view,可以直接在部署合约中显示,不用在debug里面进行调用
    function getCount() view returns (uint) {
        return count ;
    }
    
    //析构函数,的作用与构造函数相反,进行销毁合约
    function kill () {
        selfdestruct(msg.sender) ;
    }
}