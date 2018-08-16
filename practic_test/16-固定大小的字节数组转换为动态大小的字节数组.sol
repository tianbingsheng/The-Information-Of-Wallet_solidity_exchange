pragma solidity ^0.4.24;

//固定大小字节转换为动态字节数组
contract Demo {
    bytes3 public name = 0x123456 ;
    function bytes3Tobytes()constant returns(bytes){
        //固定大小的字节数组不能强转为动态大小的字节数组
        //return bytes(name);
        bytes  memory name2 = new bytes(name.length);
        for (uint i=0;i<name.length;i++){
            name2[i] = name[i];
        }
      
        return name2;
        
    }

}