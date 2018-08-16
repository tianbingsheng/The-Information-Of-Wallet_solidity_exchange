pragma solidity ^0.4.24;

contract Demo {
    //函数返回,加上Pure可以直接显示部署的控制台,不用看debug信息
    function returnString () pure returns (string){
        return "helloworld" ;
    }
}

