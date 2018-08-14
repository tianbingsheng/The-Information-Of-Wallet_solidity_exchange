pragma solidity ^0.4.24;

contract  D {
    uint public x ;
    uint public amount ;
    
    function D (uint _a)payable{
        x = _a ;
        //余额为D合约接收到的以太币
        amount = msg.value ;
    }
}

//在solidity中,Public修饰的变量,会默认自动添加一个以变量名为方法名字的get函数
contract E {
    //定义事件,用来监听状态变量值得变化
    event e (uint _x,uint _amount);
    
    D d = new D(4);
    
    function E (uint _u)payable{
        e(d.x(),d.amount());
        
         D d1 = new D(_u);
         
        e(d1.x(),d1.amount());
    }
    
    function createD (uint _x,uint _amount){
       
        D d2 = (new D).value(_amount)(_x);
       
        e(d2.x(),d2.amount());
    }
}