
pragma solidity ^0.4.24;

contract Demo {
    function getAddressBalance(address addr) constant returns (uint) {
        return addr.balance;
    }
}