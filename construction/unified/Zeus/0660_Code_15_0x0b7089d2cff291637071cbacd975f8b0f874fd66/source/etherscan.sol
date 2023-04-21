pragma solidity 0.4.4;

contract SeedGenerator{
    
    function computeSeed(uint blockhash, address player) constant returns(uint64 seed){ 
		return uint64(sha3(blockhash,player)); 
	}
	
}