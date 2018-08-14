
pragma solidity ^0.4.24;

contract Demo {
    string name = "kong yi xue yuan";

    function getName() constant returns (string) {
        return name;
    }

    function getName2() view returns (string) {
        return name;
    }

    function sayHello() pure returns (string) {
        return "hello";
    }

    function getValue() payable returns (uint) {
        return msg.value;
    }
}