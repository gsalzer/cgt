Processing contract: /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol:BOBOToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BOBOToken':
    |pragma solidity ^0.4.8;
  > |contract BOBOToken {
    |
    |  event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol(2)

[31mViolation[0m for MissingInputValidation in contract 'BOBOToken':
    |  }
    |
  > |  function balanceOf( address _owner ) constant returns (uint balanbce) {
    |    return _balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'BOBOToken':
    |  }
    |
  > |  function transfer( address _to, uint _value) returns (bool success) {
    |    if ( _balances[msg.sender] < _value ) {
    |      revert();
  at /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'BOBOToken':
    |    return true;
    |  }
  > |  function transferFrom( address _from, address _to, uint _value) returns (bool success) {
    |    // if you don't have enough balance, throw
    |    if ( _balances[_from] < _value ) {
  at /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'BOBOToken':
    |    return true;
    |  }
  > |  function approve(address _spender, uint _value) returns (bool success) {
    |    // TODO: should increase instead
    |    _approvals[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'BOBOToken':
    |    return true;
    |  }
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return _approvals[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'BOBOToken':
    |  mapping( address => uint ) _balances;
    |  mapping( address => mapping( address => uint ) ) _approvals;
  > |  uint256 public totalSupply=21000000;
    |  string public name="BOBOToken";
    |  uint8 public decimals=8;                
  at /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'BOBOToken':
    |  mapping( address => mapping( address => uint ) ) _approvals;
    |  uint256 public totalSupply=21000000;
  > |  string public name="BOBOToken";
    |  uint8 public decimals=8;                
    |  string public symbol="BOBO";   
  at /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'BOBOToken':
    |  uint256 public totalSupply=21000000;
    |  string public name="BOBOToken";
  > |  uint8 public decimals=8;                
    |  string public symbol="BOBO";   
    |
  at /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'BOBOToken':
    |  string public name="BOBOToken";
    |  uint8 public decimals=8;                
  > |  string public symbol="BOBO";   
    |
    |  function BOBOToken() {
  at /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'BOBOToken':
    |    return _approvals[_owner][_spender];
    |  }
  > |  function safeToAdd(uint a, uint b) internal returns (bool) {
    |    return (a + b >= a);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'BOBOToken':
    |    }
    |    _balances[msg.sender] -= _value;
  > |    _balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol(31)

[31mViolation[0m for UnrestrictedWrite in contract 'BOBOToken':
    |    // transfer and return true
    |    _approvals[_from][msg.sender] -= _value;
  > |    _balances[_from] -= _value;
    |    _balances[_to] += _value;
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'BOBOToken':
    |    _approvals[_from][msg.sender] -= _value;
    |    _balances[_from] -= _value;
  > |    _balances[_to] += _value;
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'BOBOToken':
    |      revert();
    |    }
  > |    _balances[msg.sender] -= _value;
    |    _balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'BOBOToken':
    |    }
    |    // transfer and return true
  > |    _approvals[_from][msg.sender] -= _value;
    |    _balances[_from] -= _value;
    |    _balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'BOBOToken':
    |  function approve(address _spender, uint _value) returns (bool success) {
    |    // TODO: should increase instead
  > |    _approvals[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9b6fa0bf7e9c1fbd6941d09900fc220262ede90c.sol(56)


