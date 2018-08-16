pragma solidity ^0.4.24;

//类的多继承和重写
contract Animal1 {
    function sayHello () pure returns (string){
        return "sayHello" ;
    }
}

contract Animal2{
​    
    function sayBye () pure returns(string) {
        return "sayBye" ;
    }
    
     function sayHello () pure returns (string){
        return "sayHello2" ;
    }
}

//如过继承的合约里面有相同的方法,则是远端继承
contract Dog is Animal2,Animal1{
    //重写父类的方法
    function sayBye () pure returns (string) {
        return "Bye Gog" ;
    }
}
