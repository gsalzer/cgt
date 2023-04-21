pragma solidity ^0.4.6;

contract Timestamp{
    
    mapping(bytes32 => Info) public timestamps;
    
    struct Info{
        uint time;
        address owner;
    }
    
    function save(bytes32 hash){
        timestamps[hash] = Info({
            time : now,
            owner : msg.sender
        });
    }
    
}