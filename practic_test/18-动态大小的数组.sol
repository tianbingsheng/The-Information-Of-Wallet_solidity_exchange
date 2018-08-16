pragma solidity ^0.4.24;

//bytes10   byte[10]是不一样的....
contract Demo {
   //动态大小数组的定义
   uint[] public counts = [1,2,3,4,5];

   function getCount() constant returns(uint[]){
       return counts ;
   }
   function getLength()constant returns(uint){
       return counts.length;
   }

   function setCountsLength(uint length){
       counts.length = length ;
   }
   function addElements(uint ele){
       //不能进行push
      counts.push(ele);
   }
   //能够修改元素
   function modify(uint index,uint data){
       counts[index] = data ;
   }
}