pragma solidity ^0.4.24;

//solidity中的二维数组
contract Demo {
    //与其他语言正好相反
    uint[2][3] counts = [[1,2],[3,4],[5,6]] ;
    
    function getCountsLength()constant returns(uint){
        return counts.length;
    }
}