
pragma solidity ^0.4.24;

contract Demo {
    uint[5] public counts = [1,2,3,4,5];

    function getCounts() constant returns (uint[5]) {
        return counts;
    }

    function getCountsLength() constant returns (uint) {
        return counts.length;
    }

    function setCountsLength(uint length) {
        //报错
        // counts.length = length;
    }

    function addElement(uint ele) {
        //报错
        // counts.push(ele);
    }

    function modify(uint index, uint ele) {
        counts[index] = ele;
    }
}
