
pragma solidity ^0.4.24;

contract Demo {
    address owner;

    function Demo () {
        owner = msg.sender;
    }

    function transaction() payable {
        // owner.transfer(msg.value);
        owner.send(msg.value);
    }

    function getOwnerBalacne() constant returns (uint) {
        return owner.balance;
    }

    function getAddressBalance() constant returns (uint) {
        return msg.sender.balance;
    }

}