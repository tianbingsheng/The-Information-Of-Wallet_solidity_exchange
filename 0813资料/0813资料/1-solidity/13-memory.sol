
pragma solidity ^0.4.24;

contract Demo {
    string public name = "*kongyixueyuan";
    uint public number = 10;

    function modifyName() {
        //hui bian会变
        var name2 = name;
        bytes(name2)[0] = "-";

        var number2 = number;
        number2 = 11;
    }

    function modify(string memory _name) internal {
        //bu hui bian不会变
        // var name2 = _name;
        //不会变
        string memory name2 = _name;
        bytes(name2)[0] = "+";
    }

    function modifyName2() {
        modify(name);
    }

}