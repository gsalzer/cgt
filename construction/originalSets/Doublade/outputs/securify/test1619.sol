Processing contract: /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol:ZOB
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |  event Approval(address indexed owner, address indexed spender, uint256 value);
    |}
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |}
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol(49)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol(54)

[33mWarning[0m for DAOConstantGas in contract 'ZOB':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol(116)

[33mWarning[0m for LockedEther in contract 'ZOB':
    |
    |
  > |contract ZOB is ERC20,Ownable{
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol(84)

[31mViolation[0m for TODAmount in contract 'ZOB':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol(116)

[33mWarning[0m for TODReceiver in contract 'ZOB':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol(116)

[33mWarning[0m for UnhandledException in contract 'ZOB':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol(116)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZOB':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'ZOB':
    |		require(_to != address(0));
    |		// SafeMath.sub will throw if there is not enough balance.
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'ZOB':
    |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		allowed[_from][msg.sender] = _allowance.sub(_value);
    |		Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'ZOB':
    |  	function approve(address _spender, uint256 _value) public returns (bool) 
    |  	{
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'ZOB':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x66dd6d59de7957839002cd60c3cc9cef5ab68cb4.sol(49)


