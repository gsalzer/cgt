Processing contract: /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol:DPSToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol:StandardToken
[33mWarning[0m for LockedEther in contract 'DPSToken':
    |}
    |
  > |contract DPSToken is StandardToken {
    |  string public name;
    |  string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'DPSToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) onlyPayloadSize(3 * 32) public returns (bool) {
    |    require(_to != address(0));
    |    require(_value <= balances[_from]);
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'DPSToken':
    |  }
    |
  > |  function balanceOf(address _owner) public view returns (uint) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'DPSToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) public view returns (uint) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'DPSToken':
    |  }
    |
  > |  function approve(address _spender, uint _value) public returns (bool) {
    |    return super.approve(_spender,_value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'DPSToken':
    |contract SafeMath {
    |
  > |  function safeAdd(uint256 x, uint256 y) internal pure returns(uint256) {
    |    uint256 z = x + y;
    |    assert((z >= x) && (z >= y));
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'DPSToken':
    |  }
    |
  > |  function safeSubtract(uint256 x, uint256 y) internal pure returns(uint256) {
    |    assert(x >= y);
    |    uint256 z = x - y;
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'DPSToken':
    |  mapping (address => mapping (address => uint256)) internal allowed;
    |
  > |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) public returns (bool){
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'DPSToken':
    |  }
    |
  > |  function approve(address _spender, uint _value) public returns (bool) {
    |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'DPSToken':
    |
    |contract DPSToken is StandardToken {
  > |  string public name;
    |  string public symbol;
    |  uint256 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'DPSToken':
    |contract DPSToken is StandardToken {
    |  string public name;
  > |  string public symbol;
    |  uint256 public constant decimals = 18;
    |  string public constant version = "1.0";
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'DPSToken':
    |  string public name;
    |  string public symbol;
  > |  uint256 public constant decimals = 18;
    |  string public constant version = "1.0";
    |  uint256 public total;   // 20 *10^8 HNC total
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'DPSToken':
    |  string public symbol;
    |  uint256 public constant decimals = 18;
  > |  string public constant version = "1.0";
    |  uint256 public total;   // 20 *10^8 HNC total
    |
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'DPSToken':
    |  uint256 public constant decimals = 18;
    |  string public constant version = "1.0";
  > |  uint256 public total;   // 20 *10^8 HNC total
    |
    |  function DPSToken(
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'DPSToken':
    |    }
    |
  > |  function totalSupply() public view returns (uint256) {
    |    return total;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'DPSToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = safeSubtract(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(61)

[31mViolation[0m for UnrestrictedWrite in contract 'DPSToken':
    |
    |    balances[msg.sender] = safeSubtract(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'DPSToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSubtract(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSubtract(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'DPSToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSubtract(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSubtract(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'DPSToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSubtract(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSubtract(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'DPSToken':
    |
    |  function approve(address _spender, uint _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'DPSToken':
    |
    |  function approve(address _spender, uint _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(86)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |contract SafeMath {
    |
    |  function safeAdd(uint256 x, uint256 y) internal pure returns(uint256) {
  at /home/jiaming/mavs_srcs/contract@0x641f6f69327368ccbda93a6c2fec17b6ee369a5e.sol(17)


