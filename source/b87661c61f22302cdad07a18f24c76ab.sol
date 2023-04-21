pragma solidity ^0.4.2;

contract IDCaseC_Corrected{
    address public owner; // entreprise A
    address public authorizer; // authorizer account for entreprise A
    
    address public requester;
    bytes32 public hash;
    
    modifier onlyOwner() { 
        if(msg.sender == owner)
            _;
        else
            throw;
    }
    modifier onlyAuthorizer() { 
        if(msg.sender == authorizer)
            _;
        else
            throw;
    }
    
    function IDCaseC_Corrected(){
        owner = msg.sender;
    }
    
    function changeAuthorizer(address _authorizer) onlyOwner() {
        authorizer = _authorizer;
    }
    
    function requestKnowledge(bytes32 _hash) payable {
        if(msg.value >= 1 szabo) {
            hash = _hash;
            requester = msg.sender;
        }
        else 
            throw;
    }
    function proveKnowledge(bytes32 message) onlyAuthorizer {
        if(sha3(message) == hash) {
            if(!requester.send(1 szabo))
                throw;
        }
        else
            throw;
    }
    
    function kill() onlyOwner() {
        suicide(owner);   
    }
}