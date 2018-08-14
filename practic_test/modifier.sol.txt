pragma solidity ^0.4.0;

contract modifierDemo {
    address public owner ;
    uint public u ;
    
    function modifierDemo (){
        owner = msg.sender ;
    }
    
    modifier onlyOwner {
        if (msg.sender != owner){
            throw;
        }else {
            //继续执行
            _;
        }
    }
    //只有当前合约的拥有者才能修改值
    function set(uint _u) onlyOwner{
        u = _u ;
    }
}