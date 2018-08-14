
pragma solidity ^0.4.24;

contract Demo {
    bytes public name = new bytes(2);

    function Demo() {
        name[0] = 0x41;//
        name[1] = 0x42;//
    }

    function bytesToString() constant returns (string) {
        return string(name);
    }
}