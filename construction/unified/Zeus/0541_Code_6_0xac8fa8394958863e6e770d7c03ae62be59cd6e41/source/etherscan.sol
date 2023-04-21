pragma solidity ^0.4.8;
contract Token {
	function balanceOf(address user) constant returns (uint256 balance);
	function transfer(address receiver, uint amount) returns(bool);
}

contract Faucet {
	Token 	public rlc;    // RLC contract reference
    // Constructor of the contract.
    function Faucet() {
		rlc = Token(0xffd2c3bb9fc0d61bf30d983a1760b36261fbf6df); 	// RLC contract address
    }
    
    function gimmeFive() returns (bool success) {
        return rlc.transfer(msg.sender,5);
    }
    
    function balance() returns (uint256){
        return rlc.balanceOf(msg.sender);
    }
}