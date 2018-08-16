pragma solidity ^0.4.24;

contract blockDemo {
    bytes32 public _blockHash;
    address public _coinbase = block.coinbase;
    uint public _difficulty = block.difficulty;
    uint public _gaslimit = block.gaslimit;
    uint public _number = block.number;
    bytes public _data = msg.data;
    uint public _gas = msg.gas ;
    address public _sender = msg.sender ;
    bytes4 public _gis = msg.sig ;
    uint public _value = msg.value;
    uint public _gasPrice = tx.gasprice;
    address  public _origin = tx.origin;

    function blockDemo  () payable {

    }

    function getHash (uint _u){
         _blockHash = block.blockhash(_u);
    }
}