pragma solidity ^0.4.24;


//pure view constant payable的区别运用
//pure就是直接返回的自己 view和constant一样,推荐使用constant
//如果方法涉及到支付就要用到payable

contract Demo {
    string name = "kongyixueyuan" ;

    function Demo ()payable {

    }
    //返回的是状态变量就是用constant或者view
    function getName () constant returns (string){
        return name ;
    }
    
    //如果返回的是自己定义的内容,就是规定用pure关键字
    function sayHello () pure returns (string){
        return "sayHello" ;
    }
    
    function getValue () payable returns(uint){
        return msg.value ;
    }
}