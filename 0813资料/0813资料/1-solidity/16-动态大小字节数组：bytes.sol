
pragma solidity ^0.4.24;

contract Demo {
    bytes public name = new bytes(2);

    function getNameLength() constant returns (uint) {
        return name.length;
    }

    function modifyNameLength(uint length) {
        name.length = length;
    }

    function setNameIndexData(uint index, bytes1 data) {
        name[index] = data;
    }

    function addElement(bytes1 ele) {
        name.push(ele);
    }
}