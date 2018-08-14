
pragma solidity ^0.4.24;

contract Demo {
    enum Direct {
        DirectDefault,
        DirectLeft,
        DirectRight
    }

    Direct public direct;

    function Demo(Direct a) {
        direct = a;
    }

    function setDirect(Direct a) {
        direct = a;
    }

}