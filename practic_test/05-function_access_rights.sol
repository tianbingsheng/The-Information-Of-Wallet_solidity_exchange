pragma solidity ^0.4.24;

//函数的访问权限
//函数的默认为public,状态变量的默认为internal类型

contract Demo {
    function testPublic() public pure returns (string) {
        return "public" ;
    }
    
    function testInternal () internal pure returns (string){
        return "internal" ;
    }
    
     function testPrivate() private pure returns (string) {
        return "private" ;
    }
    
    function testExternal () external pure returns (string){
        return "external" ;
    }
    
    //默认的函数类型就是public
    function testDefault () pure returns (string){
        return "default" ;
    }
    
    //内部进行调用
    function call () {
        testPublic();
        testInternal();
        testPrivate();
        testDefault();
        //external修饰的函数内部不能进行访问,合约内部访问必须要用this进行访问
        this.testExternal();
    }
}

contract Demo2 {
​    
  function call (){
        //实例化合约的对象
    Demo demo = new Demo();
    demo.testPublic();
   // demo.testInternal();
   // demo.testPrivate();
    demo.testDefault();
    demo.testExternal();
  }

}


contract Demo3 is Demo {
    function call () {
        testPublic();
        testInternal();
      //  testPrivate();
        testDefault();
       this.testExternal();
       testDefault();
    }
}