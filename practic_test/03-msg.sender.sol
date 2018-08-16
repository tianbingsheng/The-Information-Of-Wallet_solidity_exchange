pragma solidity ^0.4.24;

//简单的实现一个计数器
contract Counter {
    uint count = 0 ;
    //用来存储合约创始人的地址
    address owner ;
      
    function Counter (uint newCount){
        count = newCount ;
        owner = msg.sender ;
    }
    
    function increament () {
        if (msg.sender == owner){
             count += 10 ;
        }else {
            count++ ;
        }
       
    }
    
    //增加view,可以直接在部署合约中显示,不用在debug里面进行调用
    function getCount() view returns (uint) {
        return count ;
    }
    
    //析构函数,的作用与构造函数相反,进行销毁合约
    function kill () {
        //增加权限,或者添加一个修改器
        if (msg.sender == owner) {
             selfdestruct(msg.sender) ;
        }
       
    }
}