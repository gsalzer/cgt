Processing contract: /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol:Fish
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Fish':
    |}
    |
  > |contract Fish is StandardToken {
    |   string public name = 'Fish';
    |   string public symbol = 'FISH';
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'Fish':
    |   }
    |
  > |  function balanceOf(address _owner) public view returns (uint256 balance) {
    |    return balances[_owner];
    |   }
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'Fish':
    |   }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |    require(_to != address(0));
    |     require(_value <= balances[_from]);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'Fish':
    |   }
    |
  > |   function approve(address _spender, uint256 _value) public returns (bool) {
    |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'Fish':
    |   }
    |
  > |  function allowance(address _owner, address _spender) public view returns (uint256) {
    |     return allowed[_owner][_spender];
    |   }
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'Fish':
    |   }
    |
  > |   function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |     allowed[msg.sender][_spender] = add(allowed[msg.sender][_spender], _addedValue);
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'Fish':
    |   }
    |
  > |  function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
    |     uint oldValue = allowed[msg.sender][_spender];
    |     if (_subtractedValue > oldValue) {
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'Fish':
    |  }
    |
  > |  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |     return a - b;
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Fish':
    |   }
    |
  > |  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |     uint256 c = a + b;
    |    assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Fish':
    |
    |contract ERC20 {
  > |   uint256 public totalSupply;
    |   function balanceOf(address who) public view returns (uint256);
    |   function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Fish':
    |
    |contract Fish is StandardToken {
  > |   string public name = 'Fish';
    |   string public symbol = 'FISH';
    |   uint public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Fish':
    |contract Fish is StandardToken {
    |   string public name = 'Fish';
  > |   string public symbol = 'FISH';
    |   uint public decimals = 18;
    |   uint public INITIAL_SUPPLY = 10000000000000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'Fish':
    |   string public name = 'Fish';
    |   string public symbol = 'FISH';
  > |   uint public decimals = 18;
    |   uint public INITIAL_SUPPLY = 10000000000000000000000000000000;
    |
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Fish':
    |   string public symbol = 'FISH';
    |   uint public decimals = 18;
  > |   uint public INITIAL_SUPPLY = 10000000000000000000000000000000;
    |
    |   function Fish() {
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'Fish':
    |     require(_to != address(0));
    |     require(_value <= balances[msg.sender]);
  > |     balances[msg.sender] = sub(balances[msg.sender], _value);
    |     balances[_to] = add(balances[_to], _value);
    |     Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'Fish':
    |     require(_value <= balances[msg.sender]);
    |     balances[msg.sender] = sub(balances[msg.sender], _value);
  > |     balances[_to] = add(balances[_to], _value);
    |     Transfer(msg.sender, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'Fish':
    |     require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = sub(balances[_from], _value);
    |     balances[_to] = add(balances[_to], _value);
    |     allowed[_from][msg.sender] = sub(allowed[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'Fish':
    |
    |    balances[_from] = sub(balances[_from], _value);
  > |     balances[_to] = add(balances[_to], _value);
    |     allowed[_from][msg.sender] = sub(allowed[_from][msg.sender], _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'Fish':
    |    balances[_from] = sub(balances[_from], _value);
    |     balances[_to] = add(balances[_to], _value);
  > |     allowed[_from][msg.sender] = sub(allowed[_from][msg.sender], _value);
    |    Transfer(_from, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'Fish':
    |
    |   function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |     allowed[msg.sender][_spender] = add(allowed[msg.sender][_spender], _addedValue);
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'Fish':
    |       allowed[msg.sender][_spender] = 0;
    |     } else {
  > |       allowed[msg.sender][_spender] = sub(oldValue, _subtractedValue);
    |    }
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Fish':
    |
    |   function approve(address _spender, uint256 _value) public returns (bool) {
  > |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Fish':
    |     uint oldValue = allowed[msg.sender][_spender];
    |     if (_subtractedValue > oldValue) {
  > |       allowed[msg.sender][_spender] = 0;
    |     } else {
    |       allowed[msg.sender][_spender] = sub(oldValue, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(91)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.19;
    |
  > |contract SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20, SafeMath {
    |
    |   mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |  function balanceOf(address _owner) public view returns (uint256 balance) {
    |    return balances[_owner];
    |   }
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |    require(_to != address(0));
    |     require(_value <= balances[_from]);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |   function approve(address _spender, uint256 _value) public returns (bool) {
    |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |  function allowance(address _owner, address _spender) public view returns (uint256) {
    |     return allowed[_owner][_spender];
    |   }
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |   function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |     allowed[msg.sender][_spender] = add(allowed[msg.sender][_spender], _addedValue);
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |  function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
    |     uint oldValue = allowed[msg.sender][_spender];
    |     if (_subtractedValue > oldValue) {
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |     return a - b;
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |     uint256 c = a + b;
    |    assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract ERC20 {
  > |   uint256 public totalSupply;
    |   function balanceOf(address who) public view returns (uint256);
    |   function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(31)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |     require(_to != address(0));
    |     require(_value <= balances[msg.sender]);
  > |     balances[msg.sender] = sub(balances[msg.sender], _value);
    |     balances[_to] = add(balances[_to], _value);
    |     Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |     require(_value <= balances[msg.sender]);
    |     balances[msg.sender] = sub(balances[msg.sender], _value);
  > |     balances[_to] = add(balances[_to], _value);
    |     Transfer(msg.sender, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |     require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = sub(balances[_from], _value);
    |     balances[_to] = add(balances[_to], _value);
    |     allowed[_from][msg.sender] = sub(allowed[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_from] = sub(balances[_from], _value);
  > |     balances[_to] = add(balances[_to], _value);
    |     allowed[_from][msg.sender] = sub(allowed[_from][msg.sender], _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = sub(balances[_from], _value);
    |     balances[_to] = add(balances[_to], _value);
  > |     allowed[_from][msg.sender] = sub(allowed[_from][msg.sender], _value);
    |    Transfer(_from, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |   function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |     allowed[msg.sender][_spender] = add(allowed[msg.sender][_spender], _addedValue);
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |       allowed[msg.sender][_spender] = 0;
    |     } else {
  > |       allowed[msg.sender][_spender] = sub(oldValue, _subtractedValue);
    |    }
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |   function approve(address _spender, uint256 _value) public returns (bool) {
  > |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     uint oldValue = allowed[msg.sender][_spender];
    |     if (_subtractedValue > oldValue) {
  > |       allowed[msg.sender][_spender] = 0;
    |     } else {
    |       allowed[msg.sender][_spender] = sub(oldValue, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7bc53ed9dd3412faea4366b3a9eb2c8c013fdb4b.sol(91)


