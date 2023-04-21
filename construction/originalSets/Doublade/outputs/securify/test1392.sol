Processing contract: /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol:ZestCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol(53)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol(60)

[33mWarning[0m for DAOConstantGas in contract 'ZestCoin':
    |	{
    |	    address contractAddress = this;
  > |		if(!msg.sender.send(contractAddress.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol(118)

[33mWarning[0m for LockedEther in contract 'ZestCoin':
    |  }
    |}
  > |contract ZestCoin is ERC20,Ownable{
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol(85)

[31mViolation[0m for TODAmount in contract 'ZestCoin':
    |	{
    |	    address contractAddress = this;
  > |		if(!msg.sender.send(contractAddress.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol(118)

[33mWarning[0m for TODReceiver in contract 'ZestCoin':
    |	{
    |	    address contractAddress = this;
  > |		if(!msg.sender.send(contractAddress.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol(118)

[33mWarning[0m for UnhandledException in contract 'ZestCoin':
    |	{
    |	    address contractAddress = this;
  > |		if(!msg.sender.send(contractAddress.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol(118)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZestCoin':
    |	{
    |	    address contractAddress = this;
  > |		if(!msg.sender.send(contractAddress.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'ZestCoin':
    |		require(_to != address(0));
    |		// SafeMath.sub will throw if there is not enough balance.
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'ZestCoin':
    |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		allowed[_from][msg.sender] = _allowance.sub(_value);
    |		emit Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'ZestCoin':
    |  	function approve(address _spender, uint256 _value) public returns (bool) 
    |  	{
  > |		allowed[msg.sender][_spender] = _value;
    |		emit Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'ZestCoin':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x583b81cbc25ffd4a6587c1febb17acae490cc2b1.sol(53)


