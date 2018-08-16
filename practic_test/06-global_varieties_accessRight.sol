pragma solidity ^0.4.24;

//状态变量的权限访问
//状态变量的修饰不能是external
contract Demo {
    //public修饰的状态变量自动生get a 方法
    uint public a = 1 ;
    uint private b = 2 ;
    uint internal c = 3;
    uint d = 4 ;
    
    function call (){
        a = 11 ;
        b = 12 ;
        c = 13 ;
        d = 14 ;
    }
}

contract Demmo2 {
    function call (){
        Demo demo = new Demo();
        uint b =  demo.a();
    }
}

contract Demo3 is Demo {
    function call (){
        //在子类里面直接通过状态变量的名字进行获取
        a  = 12 ;
       // b = 11;
        c = 11 ;
        d = 12 ;
    }
}