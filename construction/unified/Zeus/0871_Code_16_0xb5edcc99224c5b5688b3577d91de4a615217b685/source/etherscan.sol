pragma solidity ^0.4.2;

contract MessageStore {
  mapping (bytes32 => bytes32) public chainLastMessageHash;

  event NewChain(bytes32 chainID);
  event Message(bytes32 indexed chainID, bytes message); 

  bytes32 public chainIDSeed;
  
  function MessageStore() {
    chainIDSeed = sha256(this);
  }

  function createNewChain (bytes message) {
    if (message.length <= 32) throw;
    for (uint i = 0; i < 32; ++i) {
      if (message[i] != chainIDSeed[i])
        throw;
    }
    bytes32 chainID = sha256(message);
    chainLastMessageHash[chainID] = chainID;
    chainIDSeed = chainID;
    NewChain(chainID);
    Message(chainID, message);    
  }
  
  function postMessage(bytes32 chainID, bytes message)  {
    if (message.length <= 32)
      throw; // message is too short
    bytes32 lastMessageHash = chainLastMessageHash[chainID];
    if (lastMessageHash == bytes32(0))
      throw; // chain not initialize
    for (uint i = 0; i < 32; ++i) {
      if (lastMessageHash[i] != message[i])
        throw; //prev message hash mismatch
    }
    bytes32 messageHash = sha256(message);
    chainLastMessageHash[chainID] = messageHash;      
    Message(chainID, message);
  }
}