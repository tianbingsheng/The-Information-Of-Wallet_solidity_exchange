
pragma solidity ^0.4.24;

contract Demo {
    bytes3 name1 = 0x123456;
    byte[3] name2 = [byte(0xa1), 0xa2, 0xa3];

    function modifyName1(uint index, bytes1 ele) {
        //报错
        // name1[index] = ele;
    }

    function modifyName2(uint index, bytes1 ele) {
        name2[index] = ele;
    }



}
