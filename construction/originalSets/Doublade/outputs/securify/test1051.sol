Processing contract: /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol:ARTL
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'ARTL':
    |
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(286)

[33mWarning[0m for LockedEther in contract 'ARTL':
    |}
    |
  > |contract ARTL is StandardToken,Ownable{
    |
    |	//the base info of the token
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(221)

[31mViolation[0m for TODAmount in contract 'ARTL':
    |
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(286)

[33mWarning[0m for TODReceiver in contract 'ARTL':
    |
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(286)

[33mWarning[0m for UnhandledException in contract 'ARTL':
    |
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(286)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ARTL':
    |
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'ARTL':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'ARTL':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'ARTL':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'ARTL':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'ARTL':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'ARTL':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'ARTL':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'ARTL':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'ARTL':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'ARTL':
    |			//增加已众筹份额
    |			uint256 amount=msg.value.mul(rate);
  > |			totalFundingSupply = totalFundingSupply.add(amount);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'ARTL':
    |		processFunding(msg.sender,_value,1);
    |		//增加团队已提现份额
  > |		totalTeamWithdrawSupply=totalTeamWithdrawSupply.add(_value);
    |
    |	}
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'ARTL':
    |	{
    |		uint256 amount=_value.mul(_rate);
  > |		totalSupply=totalSupply.add(amount);
    |		balances[receiver] +=amount;
    |		CreateARTL(receiver,amount);
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'ARTL':
    |		uint256 amount=_value.mul(_rate);
    |		totalSupply=totalSupply.add(amount);
  > |		balances[receiver] +=amount;
    |		CreateARTL(receiver,amount);
    |		Transfer(0x0, receiver, amount);
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'ARTL':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'ARTL':
    |        onlyOwner
    |    {
  > |		startBlock=_startBlock;
    |		endBlock=_endBlock;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'ARTL':
    |    {
    |		startBlock=_startBlock;
  > |		endBlock=_endBlock;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(336)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(79)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(185)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(216)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(31)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x42d980fa6dd9e14d6a1601a5fbf535ddc0c9832a.sol(170)


