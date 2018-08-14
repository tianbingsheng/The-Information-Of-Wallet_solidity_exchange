
pragma solidity ^0.4.24;

contract Demo {
    uint[2][3] counts = [[1,2],[3,4],[5,6]];
    // int[2][3] = [[1,2,3], [4,5,6]]; C语言的二维数组

    function getCountsLength() constant returns (uint) {
        return counts.length;
    }
}
