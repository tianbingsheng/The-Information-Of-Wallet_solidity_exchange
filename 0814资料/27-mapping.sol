
pragma solidity ^0.4.24;

contract Demo {
    mapping (address=>uint) public balances;

    function saveAddressBalance(address addr, uint balance) {
        balances[addr] = balance;
    }
    //不支持返回 mapping 类型的数据
}
