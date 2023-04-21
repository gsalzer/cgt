pragma solidity ^0.4.2;

contract IDCaseA{
    address public owner;
    bytes32 private privateKey;
    
    function IDCaseA(bytes32 myKey){
        owner = msg.sender;
        privateKey = myKey;
    }
    
    function getKey() public returns (bytes32){
        if (msg.sender == owner){
            return privateKey;
        }
        else{
            throw;
        }
    }
}