pragma solidity ^0.4.2;

contract Presale {
    
    uint public balance = 0;
    mapping (address => uint) public balances;
    uint public total_balances = 0;
    address factoryWallet = 0x00d1DE6Ee90D6AaF231A23E1e7748df9B1856308;
    uint constant max_limit = 30 ether;
    
    uint start_block = 0;
    uint end_block = 0;
    
    address public owner;
    
    function Presale() {
		owner = msg.sender;
	}
    
	function () payable {
	    if (msg.value == 0) throw;
	    //if (block.number < start_block) throw;
	    //if (block.number > end_block) throw;
	    
	    balance += msg.value;
	    balances[msg.sender] += msg.value;
	    total_balances += 1;
	    
	    if (balance > max_limit) throw;
    }
    
    function transfer_to_factory() {
        if (msg.sender != owner) throw;
        //if (block.number > end_block) throw;
        factoryWallet.send(balance);
        balance = 0;
    }
    
}