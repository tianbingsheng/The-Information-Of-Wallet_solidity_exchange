pragma solidity ^0.4.0;

//自毁,销毁当前合约,并且把当前合约的余额发送给指定的地址
//合约到了一定时间,进行关闭合约,合约的自毁程序

contract  selfdestructDemo {
​    
    uint internal u = 10 ;

    function test () returns(uint){
        return 100 ;
    }
    
    //当我们创建合约的时候,向这个合约发送一定的以太币
    
    function selfdestructDemo() payable{
        
    }
    function kill(address _add){
        selfdestruct(_add);
    }

}