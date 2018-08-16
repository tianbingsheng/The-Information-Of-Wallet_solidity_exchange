pragma solidity ^0.4.0;

//address的四个call方法
//send transfer
//call callcode delegatecall
contract addressDemo {
​    
    function addressDemo()payable{

    }

    function sendDemo (address add){
        uint u = 1 ether ;
        //向这个地址发送一定量的以太币
        //add.send(u);
        add.transfer(u);
    }


}