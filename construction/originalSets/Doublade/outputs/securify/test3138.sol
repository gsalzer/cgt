Processing contract: /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol:GamblicaCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'GamblicaCoin':
    |
    |
  > |contract GamblicaCoin is ERC20, owned 
    |{
    |	string public constant symbol = "GMBC";
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'GamblicaCoin':
    |	}
    |
  > |	function changeOwner(address newOwner) public onlyOwner 
    |	{
    |		owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'GamblicaCoin':
    |	address public crowdsale;
    |
  > |	function changeCrowdsale(address newCrowdsale) public onlyOwner 
    |	{
    |		crowdsale = newCrowdsale;
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'GamblicaCoin':
    | 
    |	// What is the balance of a particular account?
  > |	function balanceOf(address _owner) public constant returns (uint256 balance) 
    |	{
    |		return balances[_owner];
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'GamblicaCoin':
    |	// deliberately authorized the sender of the message via some mechanism; we propose
    |	// these standardized APIs for approval:
  > |	function transferFrom(
    |		address _from,
    |		address _to,
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'GamblicaCoin':
    |	// Allow _spender to withdraw from your account, multiple times, up to the _value amount.
    |	// If this function is called again it overwrites the current allowance with _value.
  > |	function approve(address _spender, uint256 _amount) public returns (bool success) 
    |	{
    |		allowed[msg.sender][_spender] = _amount;
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'GamblicaCoin':
    |	}
    | 
  > |	function allowance(address _owner, address _spender) public constant returns (uint256 remaining) 
    |	{
    |		return allowed[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(144)

[31mViolation[0m for MissingInputValidation in contract 'GamblicaCoin':
    |	}
    |
  > |	function send(address target, uint256 mintedAmount) public onlyOwnerOrCrowdsale 
    |	{
    |		require(mintedAmount > 0);
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(149)

[31mViolation[0m for MissingInputValidation in contract 'GamblicaCoin':
    |	}
    |
  > |	function burn(address target, uint256 burnedAmount) public onlyOwnerOrCrowdsale
    |	{
    |		require(burnedAmount > 0);
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'GamblicaCoin':
    |contract owned 
    |{
  > |	address public owner;
    |
    |	function owned() public
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'GamblicaCoin':
    |contract GamblicaCoin is ERC20, owned 
    |{
  > |	string public constant symbol = "GMBC";
    |	string public constant name = "Gamblica Coin";
    |	uint8 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'GamblicaCoin':
    |{
    |	string public constant symbol = "GMBC";
  > |	string public constant name = "Gamblica Coin";
    |	uint8 public constant decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'GamblicaCoin':
    |	string public constant symbol = "GMBC";
    |	string public constant name = "Gamblica Coin";
  > |	uint8 public constant decimals = 18;
    |
    |	uint256 _totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'GamblicaCoin':
    |	mapping(address => mapping (address => uint256)) allowed;
    |
  > |	address public crowdsale;
    |
    |	function changeCrowdsale(address newCrowdsale) public onlyOwner 
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'GamblicaCoin':
    |	}
    |
  > |	function safeAdd(uint256 _x, uint256 _y) internal pure returns (uint256) 
    |	{
    |		uint256 z = _x + _y;
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'GamblicaCoin':
    |	}
    |
  > |	function safeSub(uint256 _x, uint256 _y) internal pure returns (uint256) 
    |	{
    |		assert(_x >= _y);
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'GamblicaCoin':
    |	}
    |	
  > |	function totalSupply() public constant returns (uint256 totalTokenCount) 
    |	{
    |		return _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'GamblicaCoin':
    |		require(mintedAmount > 0);
    |
  > |		balances[target] = safeAdd(balances[target], mintedAmount);
    |		_totalSupply = safeAdd(_totalSupply, mintedAmount);
    |		Transfer(msg.sender, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'GamblicaCoin':
    |
    |		balances[target] = safeAdd(balances[target], mintedAmount);
  > |		_totalSupply = safeAdd(_totalSupply, mintedAmount);
    |		Transfer(msg.sender, target, mintedAmount);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'GamblicaCoin':
    |			) 
    |		{
  > |			balances[msg.sender] -= _amount;
    |			balances[_to] += _amount;
    |			Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'GamblicaCoin':
    |		{
    |			balances[_from] -= _amount;
  > |			allowed[_from][msg.sender] -= _amount;
    |			balances[_to] += _amount;
    |			Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'GamblicaCoin':
    |	function approve(address _spender, uint256 _amount) public returns (bool success) 
    |	{
  > |		allowed[msg.sender][_spender] = _amount;
    |		Approval(msg.sender, _spender, _amount);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'GamblicaCoin':
    |	function changeOwner(address newOwner) public onlyOwner 
    |	{
  > |		owner = newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(14)

[33mWarning[0m for UnrestrictedWrite in contract 'GamblicaCoin':
    |	function changeCrowdsale(address newCrowdsale) public onlyOwner 
    |	{
  > |		crowdsale = newCrowdsale;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'GamblicaCoin':
    |		if (balances[target] >= burnedAmount)
    |		{
  > |			balances[target] -= burnedAmount;
    |		}
    |		else
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'GamblicaCoin':
    |		{
    |			burnedAmount = balances[target];
  > |			balances[target] = 0;
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'GamblicaCoin':
    |		}
    |
  > |		_totalSupply = safeSub(_totalSupply, burnedAmount);
    |		Burned(target, burnedAmount);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(172)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.15;
    |
  > |contract owned 
    |{
    |	address public owner;
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |	}
    |
  > |	function changeOwner(address newOwner) public onlyOwner 
    |	{
    |		owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |contract owned 
    |{
  > |	address public owner;
    |
    |	function owned() public
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |	function changeOwner(address newOwner) public onlyOwner 
    |	{
  > |		owner = newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xcd95fbb2d73bab7f04893253b13e66f28841ab24.sol(14)


