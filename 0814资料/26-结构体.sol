
pragma solidity ^0.4.24;

contract Demo {
    struct Person {
        string name;
        uint age;
        bool sex;
    }

    Person person = Person({name:"1803", sex:true, age:3});
    Person person2 = Person("1804", 4, true);

    function initPerson(Person p) internal {
        Person memory person3 = Person("1805", 5, true);
        Person memory person4 = p;
    }


}
