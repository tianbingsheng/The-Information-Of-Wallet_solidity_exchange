pragma solidity ^0.4.4;

contract Demo {

    bytes6 public name = 0x6b6f6e677969;

    function nameByteLength() constant returns (uint) {
        // 报错
        // 长度不可变
        // name.length = 2;
        // 内部字节不可修改
        // name[0] = 0x1b;
        return name.length;
    }

}