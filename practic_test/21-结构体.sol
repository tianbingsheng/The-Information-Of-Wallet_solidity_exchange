pragma solidity ^0.4.24;

//引用类型是状态变量时,他是storage,在局部变量的时候,
//他是memory类型的
contract Demo {
     struct Person {
      string name ;
      uint age ;
      bool sex ;
  }

  Person person = Person("1803",3,true);
  Person person2 = Person({name:"777",age:17,sex:true});
  //进行深拷贝

  function initPerson (Person memory p) internal{
​      
      Person memory person3 = Person("1805",5,true);
      Person memory person4 = p ;

  }
}
