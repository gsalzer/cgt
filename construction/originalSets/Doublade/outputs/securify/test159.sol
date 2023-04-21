Processing contract: /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol:AGP
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'AGP':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol(140)

[33mWarning[0m for LockedEther in contract 'AGP':
    |}
    |
  > |contract AGP is ERC20,Ownable{
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol(108)

[31mViolation[0m for TODAmount in contract 'AGP':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol(140)

[33mWarning[0m for TODReceiver in contract 'AGP':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol(140)

[33mWarning[0m for UnhandledException in contract 'AGP':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol(140)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AGP':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'AGP':
    |		require(_to != address(0));
    |		// SafeMath.sub will throw if there is not enough balance.
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'AGP':
    |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		allowed[_from][msg.sender] = _allowance.sub(_value);
    |		Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'AGP':
    |  	function approve(address _spender, uint256 _value) public returns (bool) 
    |  	{
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'AGP':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol(67)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol(67)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x0a798d55d431ed3036865717b98b25891a04bb92.sol(79)


