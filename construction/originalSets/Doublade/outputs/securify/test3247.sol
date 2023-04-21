Processing contract: /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol:Grow
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(131)

[33mWarning[0m for LockedEther in contract 'Grow':
    | * @title Grow Token.
    | */
  > |contract Grow is StandardToken, Ownable {
    |    string public name = "GROW";
    |    string public symbol = "GROW";
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(251)

[31mViolation[0m for UnrestrictedWrite in contract 'Grow':
    |  
    |    function TCoin() public {
  > |        totalSupply_ = 9000000000 * 10 ** 8;
    |        balances[owner] = totalSupply_;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(258)

[31mViolation[0m for UnrestrictedWrite in contract 'Grow':
    |    function TCoin() public {
    |        totalSupply_ = 9000000000 * 10 ** 8;
  > |        balances[owner] = totalSupply_;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'Grow':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'Grow':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'Grow':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'Grow':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'Grow':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'Grow':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'Grow':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(85)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(85)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd4b4796d9e70feba3606274fe0142fe64bf13f7f.sol(241)


