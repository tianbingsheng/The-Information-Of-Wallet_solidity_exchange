
pragma solidity ^0.4.24;

contract Demo {
    struct Investor {

    }
    //
    struct BySponsor {
        uint goalCount;
        uint receviceCount;
        address addr;

    }

    uint numBySponsor = 0;
    mapping (uint=>BySponsor) bySponsorMap;

    function getBySponsorGoalCount(uint id) constant returns (uint) {
        BySponsor bySponsor = bySponsorMap[id];
        return bySponsor.goalCount;
    }

    function getBySponsorReceviceCount(uint id) constant returns (uint) {
        BySponsor bySponsor = bySponsorMap[id];
        return bySponsor.receviceCount;
    }

    //自己创建
    function newBySponsor(uint goalCount, address addr) {
        numBySponsor++;
        BySponsor memory bySponsor = BySponsor(goalCount, 0, addr);
        bySponsorMap[numBySponsor] = bySponsor;
    }

    function sponsor(uint id, uint count) {
        BySponsor bySponsor = bySponsorMap[id];
        bySponsor.receviceCount += count;
    }

    function checkBySponsor(uint id) constant returns (bool) {
        BySponsor bySponsor = bySponsorMap[id];
        if (bySponsor.receviceCount >= bySponsor.goalCount) {
            return true;
        } else {
            return false;
        }
    }

}
