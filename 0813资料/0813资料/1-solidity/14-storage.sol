
pragma solidity ^0.4.24;

contract Demo {
    string public name = "*kongyixueyuan";
    uint public number = 10;

    function modifyName() {
        //会变
        // string name2 = name;
        //不会变
        // string memory name2 = name;
        //会变
        string storage name2 = name;
        bytes(name2)[0] = "-";

        var number2 = number;
        number2 = 11;
    }

    function modify(string storage _name) internal {
        //会变
        // var name2 = _name;
        //会变
        // string name2 = _name;
        //会变
        string storage name2 = _name;
        bytes(name2)[0] = "+";
    }

    function modifyName2() {
        modify(name);
    }

}