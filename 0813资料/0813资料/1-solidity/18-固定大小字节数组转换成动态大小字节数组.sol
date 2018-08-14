
pragma solidity ^0.4.24;

contract Demo {
    bytes6 public name = 0x123456789012;

    function bytes6ToBytes() constant returns(bytes) {
        //报错 ，固定大小字节数组不能直接转换为动态大小字节数组
        // return bytes(name);

        bytes memory name2 = new bytes(name.length);

        for (uint i = 0; i < name.length; i++){
            name2[i] = name[i];
        }

        return name2;
    }
}