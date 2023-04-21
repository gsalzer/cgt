Processing contract: /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol:Apex
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol:SaferMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Apex':
    |}
    |
  > |contract Apex is StandardToken, Ownable {
    |  string public constant name = "Apex";
    |  string public constant symbol = "Apex";
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'Apex':
    |}
    |
  > |contract Apex is StandardToken, Ownable {
    |  string public constant name = "Apex";
    |  string public constant symbol = "Apex";
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'Apex':
    |          
    |           if(dests[i].balance > 50 finney) {
  > |               balances[dests[i]] += amount;
    |               dropAmount += amount;
    |               Transfer(this, dests[i], amount);
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(211)

[31mViolation[0m for UnrestrictedWrite in contract 'Apex':
    |           i += 1;
    |        }
  > |        ApexIssued += dropAmount;
    |        ApexsDroped(i, dropAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'Apex':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Apex':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Apex':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'Apex':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'Apex':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'Apex':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'Apex':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'Apex':
    |}
    |
  > |contract Apex is StandardToken, Ownable {
    |  string public constant name = "Apex";
    |  string public constant symbol = "Apex";
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(185)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SaferMath for uint256;
    |  mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(55)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(180)

[33mWarning[0m for LockedEther in contract 'SaferMath':
    |}
    |
  > |library SaferMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(17)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd9e87f97b5a7954c018c5237022b678f38061dd7.sol(141)


