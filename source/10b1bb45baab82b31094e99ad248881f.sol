pragma solidity ^0.4.1;

// ECR20 standard token interface
contract Token {
	event Transfer(address indexed from, address indexed to, uint256 value);
	event Approval(address indexed owner, address indexed spender, uint256 value);

	function balanceOf(address _owner) constant returns (uint256 balance);
	function transfer(address _to, uint256 _value) returns (bool success);
	function transferFrom(address _from, address _to, uint256 _value) returns (bool success);
	function approve(address _spender, uint256 _value) returns (bool success);
	function allowance(address _owner, address _spender) constant returns (uint256 remaining);
}

contract EtherianToken is Token{

	struct Receipt {  
		address minter;
		address beneficiary;
		string data;
	}

	// this is as basic as can be, only the associated balance & allowances
	struct Account {
		uint balance;
		mapping (address => uint) allowanceOf;
		bool minter;
	}

	// the balance should be available
	modifier when_minter(address _minter) {
		if (!accounts[_minter].minter) throw;
		_;
	}

	// the balance should be available
	modifier when_owns(address _owner, uint _amount) {
		if (accounts[_owner].balance < _amount) throw;
		_;
	}

	// an allowance should be available
	modifier when_has_allowance(address _owner, address _spender, uint _amount) {
		if (accounts[_owner].allowanceOf[_spender] < _amount) throw;
		_;
	}

	// no ETH should be sent with the transaction
	modifier when_no_eth {
		if (msg.value > 0) throw;
		_;
	}

	// a value should be > 0
	modifier when_non_zero(uint _value) {
		if (_value == 0) throw;
		_;
	}

	// the base, tokens denoted in micros
	uint constant public base = 1;

	// available token supply
	uint public totalSupply;

	// storage and mapping of minting receipts
    mapping (uint => Receipt) public receipts;

	// storage and mapping of all balances & allowances
	mapping (address => Account) public accounts;

	// constructor sets the parameters of execution, _totalSupply is all units
	function EtherianToken(address _minter) when_no_eth {
	    _minter = _minter == 0x0 ? msg.sender : _minter;
		accounts[_minter].minter = true;
	}

    function mint(address _beneficiary,string _data) when_minter(msg.sender){
		totalSupply++;
        receipts[totalSupply].minter = msg.sender;
        receipts[totalSupply].beneficiary = _beneficiary;
        receipts[totalSupply].data = _data;
        accounts[_beneficiary].balance++;
    }

	// balance of a specific address
	function balanceOf(address _who) constant returns (uint256) {
		return accounts[_who].balance;
	}

	// transfer
	function transfer(address _to, uint256 _value) when_no_eth when_owns(msg.sender, _value) returns (bool) {
		Transfer(msg.sender, _to, _value);
		accounts[msg.sender].balance -= _value;
		accounts[_to].balance += _value;

		return true;
	}

	// transfer via allowance
	function transferFrom(address _from, address _to, uint256 _value) when_no_eth when_owns(_from, _value) when_has_allowance(_from, msg.sender, _value) returns (bool) {
		Transfer(_from, _to, _value);
		accounts[_from].allowanceOf[msg.sender] -= _value;
		accounts[_from].balance -= _value;
		accounts[_to].balance += _value;

		return true;
	}

	// approve allowances
	function approve(address _spender, uint256 _value) when_no_eth returns (bool) {
		Approval(msg.sender, _spender, _value);
		accounts[msg.sender].allowanceOf[_spender] += _value;

		return true;
	}

	// available allowance
	function allowance(address _owner, address _spender) constant returns (uint256) {
		return accounts[_owner].allowanceOf[_spender];
	}

	// no default function, simple contract only, entry-level users
	function() {
		throw;
	}

}