
pragma solidity ^0.4.24;

contract Demo {
    function getContractAddress() constant returns (address) {
        return this;
    }

    function getContractBalacne() constant returns (uint) {
        return this.balance;
    }

    function toContractTransfer() payable returns (bool) {
        address contractAddress = this;
        contractAddress.send(msg.value);
        return true;
    }

    function getAccountBalacne() constant returns (uint) {
        return msg.sender.balance;
    }
}