pragma solidity ^0.4.24;

//众筹合约的实现
contract CrowdFunding {
    struct Investor {
        address add ;  //投资者的地址
        uint  count;
    }
    //被赞助者
    struct BySponsor {
        //目标金额
        uint goalCount ;
        //收到的金额
        uint recieveCount ;
        //收款地址
        address addr ;
        uint inverstorNum ;
        mapping(uint =>Investor) investorMap ;
    }
    
    //被赞助者的个数,作为map的id
    uint numBySponsor = 0 ;
    
    //被投资者的集合mapping
    mapping (uint => BySponsor)bySponserMap;
       
    //获取被赞助的目标金额
    function getBySponsorGoalCount (uint id)returns (uint){
        BySponsor bySponsor = bySponserMap[id] ;
        return bySponsor.goalCount ;
    }
       
    //获取收到的接收到的金额
    function getBySponsorRecieveCount(uint id) returns (uint){
        BySponsor bySponsor = bySponserMap[id] ;
        return bySponsor.recieveCount ;
    }

   //创建被赞助者,要求是自己来创建,调用该方法就是创建者
   //目标金额就是被赞助者调用自己传进来的全局变量msg.value;
    function newBySponsor()payable{
        //字段是mapping时,进行初始化是可以不用写
        numBySponsor++ ;
        BySponsor memory bySponsor = BySponsor(msg.value,0,msg.sender,0);
        bySponserMap[numBySponsor] = bySponsor;
        
    }
    
    //投资者自己去赞助
    function sponsor (uint id)payable{
        BySponsor bySponsor = bySponserMap[id] ; 
        //要考虑数据的溢出问题,相加以后的数据是否比以前大,否则说明数据溢出
        require( msg.value>0 && bySponsor.recieveCount + msg.value>= bySponsor.recieveCount);
        bySponsor.recieveCount += msg.value ;
        bySponsor.inverstorNum +=1 ;
        bySponsor.investorMap[bySponsor.inverstorNum] = Investor(msg.sender,msg.value) ;
        bySponsor.addr.transfer(msg.value);
    }
    
    //检查被赞助者
    function checkBySponsor(uint id) returns (bool){
        BySponsor bySponsor = bySponserMap[id] ;
        if (bySponsor.recieveCount>=bySponsor.goalCount){
            return true;
        }else{
            return false;
        }
    }
}