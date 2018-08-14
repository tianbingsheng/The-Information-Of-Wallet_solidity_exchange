
pragma solidity ^0.4.24;

contract Demo {
    uint public a = 1;
    uint private b = 2;
    uint internal c = 3;
    uint d = 4;

    function call() {
        a = 11;
        b = 12;
        c = 13;
        d = 14;
    }

}

contract Demo2 {
    function call() {
        Demo demo = new Demo();
        var a = demo.a;
        // var b = demo.b;
        // var c = demo.c;
        // var d = demo.d;
    }
}

contract Demo3 is Demo {
    function call() {
        a = 21;
        // b = 22;
        c = 23;
        d = 24;
    }
}



