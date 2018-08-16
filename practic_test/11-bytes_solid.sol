pragma solidity ^0.4.24;

//固定长度的字节数组也是值类型的一种
//固定长度的字节数组长度和值是不能进行修改的
contract Demo {
    //byte就是bytes1

    bytes1 a1  = 0x12;
    bytes2 b1 = 0x1111;
    
    function getB1Length ()returns (uint){
        return b1.length;
    }
    
    function setB1Length (){
        //b1[0] = 0x11;
       // b1.length = 3
    }
    
    function getB1IndexData(uint index)constant returns (byte){
        return b1[index] ;
    }
}