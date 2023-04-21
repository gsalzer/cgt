Processing contract: /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol:SuperToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.10;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(3)

[33mWarning[0m for LockedEther in contract 'SuperToken':
    |
    |
  > |contract SuperToken is ERC20 {
    |  using SafeMath for uint;
    |     
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'SuperToken':
    |   }
    |
  > |  function balanceOf(address _owner) public view returns (uint256 balance) {
    |    return balances[_owner];
    |   }
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'SuperToken':
    |   }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |    require(_to != address(0));
    |     require(_value <= balances[_from]);
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'SuperToken':
    |   }
    |
  > |   function approve(address _spender, uint256 _value) public returns (bool) {
    |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'SuperToken':
    |   }
    |
  > |  function allowance(address _owner, address _spender) public view returns (uint256) {
    |     return allowed[_owner][_spender];
    |   }
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'SuperToken':
    |   }
    |
  > |   function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |     allowed[msg.sender][_spender] = SafeMath.add(allowed[msg.sender][_spender], _addedValue);
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'SuperToken':
    |   }
    |
  > |  function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
    |     uint oldValue = allowed[msg.sender][_spender];
    |     if (_subtractedValue > oldValue) {
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'SuperToken':
    |  }
    |
  > |  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'SuperToken':
    |  }
    |
  > |  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'SuperToken':
    |    }
    |
  > |    function name()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'SuperToken':
    |    }
    |
  > |    function symbol()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'SuperToken':
    |    }
    |
  > |    function decimals()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'SuperToken':
    |    }
    |
  > |    function totalSupply()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'SuperToken':
    |     require(_to != address(0));
    |     require(_value <= balances[msg.sender]);
  > |     balances[msg.sender] = SafeMath.sub(balances[msg.sender], _value);
    |     balances[_to] = SafeMath.add(balances[_to], _value);
    |     Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(95)

[31mViolation[0m for UnrestrictedWrite in contract 'SuperToken':
    |     require(_value <= balances[msg.sender]);
    |     balances[msg.sender] = SafeMath.sub(balances[msg.sender], _value);
  > |     balances[_to] = SafeMath.add(balances[_to], _value);
    |     Transfer(msg.sender, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'SuperToken':
    |     require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = SafeMath.sub(balances[_from], _value);
    |     balances[_to] = SafeMath.add(balances[_to], _value);
    |     allowed[_from][msg.sender] = SafeMath.sub(allowed[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(110)

[31mViolation[0m for UnrestrictedWrite in contract 'SuperToken':
    |
    |    balances[_from] = SafeMath.sub(balances[_from], _value);
  > |     balances[_to] = SafeMath.add(balances[_to], _value);
    |     allowed[_from][msg.sender] = SafeMath.sub(allowed[_from][msg.sender], _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'SuperToken':
    |    balances[_from] = SafeMath.sub(balances[_from], _value);
    |     balances[_to] = SafeMath.add(balances[_to], _value);
  > |     allowed[_from][msg.sender] = SafeMath.sub(allowed[_from][msg.sender], _value);
    |    Transfer(_from, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'SuperToken':
    |
    |   function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |     allowed[msg.sender][_spender] = SafeMath.add(allowed[msg.sender][_spender], _addedValue);
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'SuperToken':
    |       allowed[msg.sender][_spender] = 0;
    |     } else {
  > |       allowed[msg.sender][_spender] = SafeMath.sub(oldValue, _subtractedValue);
    |    }
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperToken':
    |
    |   function approve(address _spender, uint256 _value) public returns (bool) {
  > |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperToken':
    |     uint oldValue = allowed[msg.sender][_spender];
    |     if (_subtractedValue > oldValue) {
  > |       allowed[msg.sender][_spender] = 0;
    |     } else {
    |       allowed[msg.sender][_spender] = SafeMath.sub(oldValue, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xb9a3db7feb969f76e149923ad3e7fd96ce02c4a2.sol(136)


