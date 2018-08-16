pragma solidity ^0.4.24;

//固定大小字节数组之间的转换
contract Demo {
    bytes3 public name = 0x123456 ;
    function bytes6Tobytes10()constant returns(bytes10){
        return bytes10(name) ;
    }
     function bytes6Tobytes2()constant returns(bytes2){
        return bytes2(name) ;
    }
}
