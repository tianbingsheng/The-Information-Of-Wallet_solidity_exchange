pragma solidity ^0.4.24;

contract MyContract {
    bytes1 public b1 = 255;
    bytes2 public b2 = "ab";

    //定义一个事件
    event e(byte _b);
    function MyContract (){
        e(b1[0]);

        for (uint i = 0; i<b2.length ; i++){
            e(b2[i]);
        }
    }
}
