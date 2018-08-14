
pragma solidity ^0.4.24;

contract Demo {
    bytes6 name = 0x6b6f6e677969;

    function bytes6ToString() constant returns (string) {
        //报错
        // return string(name);

        bytes memory names = new bytes(name.length);

        for(uint i = 0; i < name.length; i++) {
            names[i] = name[i];
        }

        return string(names);
    }
}
