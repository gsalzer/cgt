pragma solidity ^0.4.6;

contract ethVerify {
    
    address constant owner  = 0x8acd5b8b89e61a02ab09f3fdb060c41c2d838ce3;
    mapping(uint256 => bool) public credentials;
    
    function addCredential(uint256 hash) {
        if (msg.sender != owner){
            throw;
        }
        credentials[hash] = true;
    }
}