Processing contract: /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol:BlockcloudToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |  mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(42)

[33mWarning[0m for LockedEther in contract 'BlockcloudToken':
    |}
    |
  > |contract BlockcloudToken is StandardToken {
    |  string public name    = "Blockcloud Token";
    |  string public symbol  = "BLOC";
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockcloudToken':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockcloudToken':
    |    require(_value <= balances[msg.sender]);
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockcloudToken':
    |    require(_value <= balances[_from]);
    |    require(_value <= allowed[_from][msg.sender]);
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockcloudToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockcloudToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockcloudToken':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    require((_value == 0)||(allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockcloudToken':
    |  }
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockcloudToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockcloudToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockcloudToken':
    |  function _burn(address _who, uint256 _value) internal {
    |    require(_value <= balances[_who]);
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockcloudToken':
    |    require(_value <= balances[_who]);
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(102)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) { return 0;}
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |  mapping (address => mapping (address => uint256)) internal allowed;
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[_from]);
    |    require(_value <= allowed[_from][msg.sender]);
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |    require((_value == 0)||(allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  }
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function _burn(address _who, uint256 _value) internal {
    |    require(_value <= balances[_who]);
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[_who]);
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x6a68c16ac6c77fce81cd7ac614a7c9b6b811d28a.sol(102)


