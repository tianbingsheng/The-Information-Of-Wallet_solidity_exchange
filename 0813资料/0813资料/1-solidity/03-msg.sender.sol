
pragma solidity ^0.4.24;

contract Counter {
    uint count = 0;
    //记录部署合约的发起人地址。
    address owner;

    function Counter(uint newCount) {
        owner = msg.sender;
        count = newCount;
    }

    function incrementCount() {
        if (msg.sender == owner) {
            count += 10;
        } else {
            count++;
        }
    }

    function getCount() view returns (uint) {
        return count;
    }

    function kill() {
        //只有发起人才能销毁合约
        if (msg.sender == owner) {
            selfdestruct(msg.sender);
        }
    }
}
