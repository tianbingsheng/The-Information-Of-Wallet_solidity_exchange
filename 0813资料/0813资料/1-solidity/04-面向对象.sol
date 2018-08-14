
pragma solidity ^0.4.24;

contract Animal1 {
    function sayHello() pure returns (string) {
        return "hello";
    }
}

contract Animal2 {
    function sayBye() pure returns (string) {
        return "bye";
    }
}

//继承通过is去实现，多继承使用“，”去拼接
contract dog is Animal1,Animal2 {
    function sayBye() pure returns (string) {
        return "bye dog";
    }
}
