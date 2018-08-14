pragma solidity ^0.4.24;

contract EnumDemo {
    //枚举至少有一个成员,其实内部对应的就是数字类型的数据 uint
    //事件可以监听变量的状态
    enum ActionChioces {GoLeft,GoRight}

    ActionChioces public choice;

    ActionChioces def = ActionChioces.GoRight;

    event ActionChoicesE(ActionChioces _ac,uint _u);

    function setChioces (){
        choice = ActionChioces.GoRight;
        ActionChoicesE(choice,uint(choice));
    }

    function getChoices ()returns (ActionChioces){
        return choice;
    }

    function getDefault ()returns(uint){
        return uint(ActionChioces.GoRight);
    }
}
