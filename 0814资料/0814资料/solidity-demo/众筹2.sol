
pragma solidity ^0.4.24;

contract Demo {
    //投资者
    struct Investor {
        address addr;
        uint count;
    }
    //被赞助者
    struct BySponsor {
        uint goalCount;
        uint receviceCount;//2**256
        address addr;
        uint investorNum;
        //记录投资者的信息
        mapping (uint => Investor) investorMap;
    }

    function testRequire() constant returns (string) {
        require(3>2);
        return "haha";
    }

    uint numBySponsor = 0;
    //记录所有被赞助者的信息
    mapping (uint=>BySponsor) bySponsorMap;

    function getBySponsorGoalCount(uint id) constant returns (uint) {
        BySponsor bySponsor = bySponsorMap[id];
        return bySponsor.goalCount;
    }

    function getBySponsorReceviceCount(uint id) constant returns (uint) {
        BySponsor bySponsor = bySponsorMap[id];
        return bySponsor.receviceCount;
    }

    //被赞助者自己创建
    function newBySponsor() payable {
        numBySponsor++;
        BySponsor memory bySponsor = BySponsor(msg.value, 0, msg.sender, 0);
        bySponsorMap[numBySponsor] = bySponsor;
    }

    //投资者自己去赞助
    function sponsor(uint id) payable {
        BySponsor bySponsor = bySponsorMap[id];
        //判断转账数据大于0，并且转账以后的数据不能溢出
        require(msg.value > 0 && bySponsor.receviceCount + msg.value > bySponsor.receviceCount);
        bySponsor.receviceCount += msg.value;
        bySponsor.investorNum += 1;
        //将投资者投资的数据存到被赞助者结构体中进行关联
        bySponsor.investorMap[bySponsor.investorNum] = Investor(msg.sender, msg.value);
        bySponsor.addr.transfer(msg.value);
    }

    //检查被赞助者是否达标
    function checkBySponsor(uint id) constant returns (bool) {
        BySponsor bySponsor = bySponsorMap[id];
        if (bySponsor.receviceCount >= bySponsor.goalCount) {
            return true;
        } else {
            return false;
        }
    }

}
