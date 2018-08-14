
pragma solidity ^0.4.24;

contract Counter {
    uint count = 0;

    function Counter(uint newCount) {
        count = newCount;
    }

    function incrementCount() {
        count++;
    }

    function getCount() view returns (uint) {
        return count;
    }

    function kill() {
        selfdestruct(msg.sender);
    }
}
