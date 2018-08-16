pragma solidity ^0.4.0;

//address的四个call方法
//send transfer
//call callcode delegatecall
contract A {

    uint public p ;
    event e (address add,uint p);
    function fun (uint u1,uint u2){
        p = u1 +u2 ;
        e(msg.sender,p);
    }

}
//已知一个合约的地址方法,用自己的合约进行调用另一个合约的方法
contract B {
    uint public q;
    bool public b;

   //当我们在CB中调用CA方法,变量的改变会改变CA本身
    function call1 (address add) returns (bool){
        b = add.call(bytes4(keccak256("fun(uint256,uint256)")),2,3);
        return b;
    }
   // //当我们在CB中调用CA方法,变量的改变会改变CB本身
   function  call2 (address add) returns (bool){
        b = add.delegatecall(bytes4(keccak256("fun(uint256,uint256)")),1,2);
        return b;
   }
}




