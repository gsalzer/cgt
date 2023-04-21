Processing contract: /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol:DdosToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(52)

[33mWarning[0m for LockedEther in contract 'DdosToken':
    |
    |
  > |contract DdosToken is MintableToken {
    |  string public name = "DDOS";
    |  string public symbol = "DDOS";
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'DdosToken':
    |
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'DdosToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'DdosToken':
    |    var _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'DdosToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'DdosToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'DdosToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'DdosToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'DdosToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'DdosToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'DdosToken':
    |
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'DdosToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'DdosToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'DdosToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'DdosToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'DdosToken':
    |
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(156)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    var _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(156)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(129)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x815096e52d60c6507dce5b6dae6c66fab5dd47d9.sol(106)


