
pragma solidity ^0.4.24;

contract Demo {
    bytes6 public name = 0x123456789012;

    function bytes6ToBytes10() returns(bytes10) {
        return bytes10(name);
    }

    function bytes6ToBytes2() returns(bytes2) {
        return bytes2(name);
    }
}