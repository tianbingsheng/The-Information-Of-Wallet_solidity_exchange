pragma solidity ^0.4.24;

//引用类型:
//字符串,动态大小字节数组,数组,结构体
//值传递 值拷贝 深拷贝 memory
//引用传递  传递的是地址 浅拷贝 storage

contract Demo {
    //在solidity当中,string类型的数据就是引用类型的数据
    string public name = "*kongyixueyuan" ;
    uint public  number = 10 ;
    
    function modifyName (){
        //就是引用传递,就是浅拷贝
        var name2 = name;
        //不会变
        // string memory neme2 = name ;
        //会变
        // string storage name2 = name ;
        bytes(name2)[0] = '-';
        
        //基本类型数据就是值拷贝
        var number2 = number ;
        number2 = 11 ;
    }
    
    //函数参数默认是值传递,通过参数传递进来,memory
    //默认就是string memory _name ;
    function modify(string  _name) internal{
       string memory name2 = _name ;
        bytes(name2)[0] = '+';
    }
    
    function modifyName2 (){
        modify(name);
    }

}