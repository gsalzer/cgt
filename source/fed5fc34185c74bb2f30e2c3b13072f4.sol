pragma solidity ^0.4.0;

/*
DocumentRegistry

Contract used to register hashes of files to proof the original authoring of them.
Allows to register any attributes to a file;
Owner can transfer the ownership. 
Contract accept donation to documents registereds.

Written by Ricardo Guilherme Schmidt <3esmit@gmail.com>
*/

contract DocumentRegistry {

    event DocumentRegister(address _owner, bytes32 _hash, uint _time);
    event Transfer(bytes32 _hash, address _newOwner);
    event Donate(bytes32 _hash, address _donator, uint _value);

    struct Document{
        address owner;
        uint owned_pos;
        uint time;
        string[] attributes;
        mapping (string => Attribute) data;
    }
    
    struct Attribute{
        string value;
        uint attributes_pos;
        uint updated;
    }
    

    modifier only_owner (bytes32 _hash){ if(documents[_hash].owner != msg.sender) throw; _; }
    modifier is_owned (bytes32 _hash){ if(documents[_hash].owner == 0x0) throw; _; }
    modifier not_owned (bytes32 _hash){ if(documents[_hash].owner != 0x0) throw; _; }
    
    mapping(address => bytes32[]) public owned;
    mapping(bytes32 => Document) public documents;
    
    function () { throw; }
    
    function register(bytes32 _hash) not_owned(_hash){
       registerTo(msg.sender, _hash);
    }    
    
    function registerTo(address _owner, bytes32 _hash) not_owned(_hash){
        documents[_hash].owner = _owner; 
        documents[_hash].time = now;
        addToOwner(_owner,_hash);
        DocumentRegister(_owner, _hash, block.timestamp);
    }

    function setData( bytes32 _hash, string _name, string _data)  only_owner(_hash){
        if(documents[_hash].data[_name].updated == 0){
            documents[_hash].data[_name].attributes_pos = documents[_hash].attributes.length;
            documents[_hash].attributes.push(_name);
        }
        documents[_hash].data[_name].value = _data;
        documents[_hash].data[_name].updated = now;
        
    }
    
    function clearData(bytes32 _hash, string _name) only_owner(_hash){
        if(documents[_hash].data[_name].updated == 0) return;
        documents[_hash].attributes[documents[_hash].data[_name].attributes_pos] = documents[_hash].attributes[documents[_hash].attributes.length-1];
        delete documents[_hash].attributes[documents[_hash].attributes.length-1];
        documents[_hash].attributes.length--;
        delete documents[_hash].data[_name];
    }

    function transfer(bytes32 _hash, address _newOwner) only_owner(_hash){
        if(_newOwner == msg.sender) return;
        removeOwned(msg.sender,_hash);
        addToOwner(_newOwner,_hash);
        documents[_hash].owner = _newOwner;
        Transfer(_hash,_newOwner);
    }
    
    function donate(bytes32 _hash) payable is_owned(_hash){
        if(documents[_hash].owner.send(msg.value))
            Donate(_hash,msg.sender,msg.value);
    }
    
    function getOwned(address _owner) constant returns (bytes32[] documents){
        return owned[_owner];
    }
    
    function getAttributeData(bytes32 _hash, string _name) constant returns (string data,uint updated){
        return (documents[_hash].data[_name].value, documents[_hash].data[_name].updated);
    }
    
    function getAttributeName(bytes32 _hash, uint pos) constant returns (string){
        return documents[_hash].attributes[pos];
    }
   
   function getTotalAttributes(bytes32 _hash) constant returns (uint){
        return documents[_hash].attributes.length;
    }
    
    function removeOwned(address _owner,bytes32 _hash) internal {
        owned[_owner][documents[_hash].owned_pos] = owned[_owner][owned[_owner].length-1];
        delete owned[_owner][owned[_owner].length-1];
        owned[_owner].length--;
    }
    
    function addToOwner(address _owner, bytes32 _hash) internal {
        owned[_owner].push(_hash);
        documents[_hash].owned_pos = owned[_owner].length-1;
    }
    
}