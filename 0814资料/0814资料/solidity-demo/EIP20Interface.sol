
pragma solidity ^0.4.24;

contract EIP20Interface {
    // 获取token发布的总量，比如EOS 10亿
    uint256 public totalSupply;
    // 获取_owner地址的余额
    function balanceOf(address _owner) view returns (uint256 balance);
    // 转账：调用方向_to转_value个token
    function transfer(address _to, uint256 _value) returns (bool success);
    // 转账：从_from向_to转_value个token
    function transferFrom(address _from, address _to, uint256 _value) returns (bool success);
    // 允许_spender从自己（调用方）账户转走_value个token
    function approve(address _spender, uint256 _value) returns (bool success);
    // 自己（_owner）查询_spender地址可以转走自己多少个token
    function allowance(address _owner, address _spender) view returns (uint256 remaining);

    // 转账的时候必须要调用的事件，如transfer、transferFrom
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    // 成功执行approve方法后调用的事件
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}