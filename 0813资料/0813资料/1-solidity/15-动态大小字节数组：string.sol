
pragma solidity ^0.4.24;

contract Demo {
    string public name = "12%&k孔";

    function getNameLength() constant returns (uint) {
        //报错
        // return name.lenght;
        return bytes(name).length;
    }

    function modifyName() {
        bytes(name)[0] = 'K';
    }

    function stringToBytes() constant returns (bytes){
        return bytes(name);
    }
}