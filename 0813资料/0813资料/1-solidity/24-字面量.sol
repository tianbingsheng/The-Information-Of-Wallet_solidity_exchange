
pragma solidity ^0.4.24;

contract Demo {

    function f1(uint256[3] a) {

    }

    function f2() {
        //报错
        // f1([1,2,3]);//uint8[3]
        f1([1,uint(2),3]);//uint[3]//uint默认为uint256
    }
}
