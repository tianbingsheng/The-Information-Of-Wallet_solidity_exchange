
pragma solidity ^0.4.24;

contract Demo {
    uint[] public counts = [1,2,3,4,5];

    function getCounts() constant returns (uint[]) {
        return counts;
    }

    function getCountsLength() constant returns (uint) {
        return counts.length;
    }

    function setCountsLength(uint length) {
        counts.length = length;
    }

    function addElement(uint ele) {
        counts.push(ele);
    }

    function modify(uint index, uint ele) {
        counts[index] = ele;
    }
}
