Processing contract: /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol:MyToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MyToken':
    |}
    |
  > |contract MyToken is StandardToken {
    |   string public name = 'IRONCOIN';
    |   string public symbol = 'IRC';
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |   }
    |
  > |  function balanceOf(address _owner) public view returns (uint256 balance) {
    |    return balances[_owner];
    |   }
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |   }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |    require(_to != address(0));
    |     require(_value <= balances[_from]);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |   }
    |
  > |   function approve(address _spender, uint256 _value) public returns (bool) {
    |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |   }
    |
  > |  function allowance(address _owner, address _spender) public view returns (uint256) {
    |     return allowed[_owner][_spender];
    |   }
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |   }
    |
  > |   function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |     allowed[msg.sender][_spender] = add(allowed[msg.sender][_spender], _addedValue);
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |   }
    |
  > |  function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
    |     uint oldValue = allowed[msg.sender][_spender];
    |     if (_subtractedValue > oldValue) {
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |  }
    |
  > |  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |     return a - b;
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |   }
    |
  > |  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |     uint256 c = a + b;
    |    assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |
    |contract ERC20 {
  > |   uint256 public totalSupply;
    |   function balanceOf(address who) public view returns (uint256);
    |   function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |
    |contract MyToken is StandardToken {
  > |   string public name = 'IRONCOIN';
    |   string public symbol = 'IRC';
    |   uint public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |contract MyToken is StandardToken {
    |   string public name = 'IRONCOIN';
  > |   string public symbol = 'IRC';
    |   uint public decimals = 8;
    |   uint public INITIAL_SUPPLY = 3000000000* 10**8;
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |   string public name = 'IRONCOIN';
    |   string public symbol = 'IRC';
  > |   uint public decimals = 8;
    |   uint public INITIAL_SUPPLY = 3000000000* 10**8;
    |
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |   string public symbol = 'IRC';
    |   uint public decimals = 8;
  > |   uint public INITIAL_SUPPLY = 3000000000* 10**8;
    |
    |   function MyToken() {
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |     require(_to != address(0));
    |     require(_value <= balances[msg.sender]);
  > |     balances[msg.sender] = sub(balances[msg.sender], _value);
    |     balances[_to] = add(balances[_to], _value);
    |     Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |     require(_value <= balances[msg.sender]);
    |     balances[msg.sender] = sub(balances[msg.sender], _value);
  > |     balances[_to] = add(balances[_to], _value);
    |     Transfer(msg.sender, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |     require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = sub(balances[_from], _value);
    |     balances[_to] = add(balances[_to], _value);
    |     allowed[_from][msg.sender] = sub(allowed[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |
    |    balances[_from] = sub(balances[_from], _value);
  > |     balances[_to] = add(balances[_to], _value);
    |     allowed[_from][msg.sender] = sub(allowed[_from][msg.sender], _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |    balances[_from] = sub(balances[_from], _value);
    |     balances[_to] = add(balances[_to], _value);
  > |     allowed[_from][msg.sender] = sub(allowed[_from][msg.sender], _value);
    |    Transfer(_from, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |
    |   function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |     allowed[msg.sender][_spender] = add(allowed[msg.sender][_spender], _addedValue);
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |       allowed[msg.sender][_spender] = 0;
    |     } else {
  > |       allowed[msg.sender][_spender] = sub(oldValue, _subtractedValue);
    |    }
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |
    |   function approve(address _spender, uint256 _value) public returns (bool) {
  > |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |     uint oldValue = allowed[msg.sender][_spender];
    |     if (_subtractedValue > oldValue) {
  > |       allowed[msg.sender][_spender] = 0;
    |     } else {
    |       allowed[msg.sender][_spender] = sub(oldValue, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(91)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |contract SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20, SafeMath {
    |
    |   mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |  function balanceOf(address _owner) public view returns (uint256 balance) {
    |    return balances[_owner];
    |   }
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |    require(_to != address(0));
    |     require(_value <= balances[_from]);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |   function approve(address _spender, uint256 _value) public returns (bool) {
    |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |  function allowance(address _owner, address _spender) public view returns (uint256) {
    |     return allowed[_owner][_spender];
    |   }
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |   function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |     allowed[msg.sender][_spender] = add(allowed[msg.sender][_spender], _addedValue);
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |  function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
    |     uint oldValue = allowed[msg.sender][_spender];
    |     if (_subtractedValue > oldValue) {
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |     return a - b;
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |     uint256 c = a + b;
    |    assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract ERC20 {
  > |   uint256 public totalSupply;
    |   function balanceOf(address who) public view returns (uint256);
    |   function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(31)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |     require(_to != address(0));
    |     require(_value <= balances[msg.sender]);
  > |     balances[msg.sender] = sub(balances[msg.sender], _value);
    |     balances[_to] = add(balances[_to], _value);
    |     Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |     require(_value <= balances[msg.sender]);
    |     balances[msg.sender] = sub(balances[msg.sender], _value);
  > |     balances[_to] = add(balances[_to], _value);
    |     Transfer(msg.sender, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |     require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = sub(balances[_from], _value);
    |     balances[_to] = add(balances[_to], _value);
    |     allowed[_from][msg.sender] = sub(allowed[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_from] = sub(balances[_from], _value);
  > |     balances[_to] = add(balances[_to], _value);
    |     allowed[_from][msg.sender] = sub(allowed[_from][msg.sender], _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = sub(balances[_from], _value);
    |     balances[_to] = add(balances[_to], _value);
  > |     allowed[_from][msg.sender] = sub(allowed[_from][msg.sender], _value);
    |    Transfer(_from, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |   function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |     allowed[msg.sender][_spender] = add(allowed[msg.sender][_spender], _addedValue);
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |       allowed[msg.sender][_spender] = 0;
    |     } else {
  > |       allowed[msg.sender][_spender] = sub(oldValue, _subtractedValue);
    |    }
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |   function approve(address _spender, uint256 _value) public returns (bool) {
  > |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     uint oldValue = allowed[msg.sender][_spender];
    |     if (_subtractedValue > oldValue) {
  > |       allowed[msg.sender][_spender] = 0;
    |     } else {
    |       allowed[msg.sender][_spender] = sub(oldValue, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x1f21d8395655fb262251897df7cb3c9358bec6a2.sol(91)


