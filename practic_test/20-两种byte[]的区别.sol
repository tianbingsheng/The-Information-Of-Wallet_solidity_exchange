pragma solidity ^0.4.24;

//长度不可以修改,但是byte[]的内容是可以修该的.
contract Demo {
    bytes3 name1 = 0x123456 ;
    byte[3] name2 = [byte(0x01),0x02,0x03];
    
    function modifyName1(uint index,bytes1 data){
      //  name1[index] = data ;
        name2[index] = data;
    }
}