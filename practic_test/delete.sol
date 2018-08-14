pragma solidity ^0.4.24;

contract DeleteDemo {
    //在solidity中,delete是关键字,它的作用是初始化
    uint public data = 100 ;
    //uint [] (默认类型是uint256)     (1,2,3)默认类型是uint8 其中的一个成员就行强制转换

    uint[] public dataArray = [uint(1),2,3];

    event e (string _str,uint _u);
    event eArr (string _str,uint[] _u);

    function doDelete(){
        uint x = data ;
        e("x",x);
        //把x的值删除掉了
        delete x ;
        e("x",x);

        e ("data",data);
        delete data ;
        e ("data",data);

        uint[] y = dataArray;

        eArr("y",y);
        delete dataArray ;
        eArr("y",y);

    }

}
