
pragma solidity ^0.4.24;

contract Demo {
    function testPublic() pure public returns (string) {
        return "public";
    }

    function testinternal() pure internal returns (string) {
        return "internal";
    }

    function testPrivate() pure private returns (string) {
        return "private";
    }

    function testExternal() pure external returns (string) {
        return "external";
    }

    function testDefault() pure returns (string) {
        return "default";
    }

    function call() {
        testPublic();
        testinternal;
        testPrivate();
        this.testExternal();
        testDefault();
    }
}

contract Demo2 {

    function call() {
        Demo demo = new Demo();
        demo.testPublic();
        // demo.testinternal;
        // demo.testPrivate();
        demo.testExternal();
        demo.testDefault();
    }
}

contract Demo3 is Demo{
    function call() {
        testPublic();
        testinternal;
        // testPrivate();
        this.testExternal();
        testDefault();
    }

}




