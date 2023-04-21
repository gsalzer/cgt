Processing contract: /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol:MoncryptToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(48)

[33mWarning[0m for LockedEther in contract 'MoncryptToken':
    |}
    |
  > |contract MoncryptToken is StandardToken, Ownable {
    |    
    |    string public constant name = "MONCRYPT Token";
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'MoncryptToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'MoncryptToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'MoncryptToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'MoncryptToken':
    |  
    |  function increaseApproval (address _spender, uint _addedValue) returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'MoncryptToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'MoncryptToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'MoncryptToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(74)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(74)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(15)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  
    |  function increaseApproval (address _spender, uint _addedValue) returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf4846244b1bec4ccbe0c9e6ad45e0c6c80daf135.sol(117)


