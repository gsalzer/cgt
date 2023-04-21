Processing contract: /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol:BeeGims
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'BeeGims':
    |
    |
  > |contract BeeGims is StandardToken {
    |  string public constant name = "BeeGims";
    |  string public constant symbol = "BEES";
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'BeeGims':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'BeeGims':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'BeeGims':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'BeeGims':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'BeeGims':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'BeeGims':
    |
    |contract BeeGims is StandardToken {
  > |  string public constant name = "BeeGims";
    |  string public constant symbol = "BEES";
    |  uint public constant decimals = 6;               //  6 decimals
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'BeeGims':
    |contract BeeGims is StandardToken {
    |  string public constant name = "BeeGims";
  > |  string public constant symbol = "BEES";
    |  uint public constant decimals = 6;               //  6 decimals
    |  uint public totalSupply = 600000000000000;       // = 600 000 000 tokens total supply * 1 000 000 (6 decimals) = 600 000 000 000 000
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'BeeGims':
    |  string public constant name = "BeeGims";
    |  string public constant symbol = "BEES";
  > |  uint public constant decimals = 6;               //  6 decimals
    |  uint public totalSupply = 600000000000000;       // = 600 000 000 tokens total supply * 1 000 000 (6 decimals) = 600 000 000 000 000
    |  string public version = "1.0";
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'BeeGims':
    |  string public constant symbol = "BEES";
    |  uint public constant decimals = 6;               //  6 decimals
  > |  uint public totalSupply = 600000000000000;       // = 600 000 000 tokens total supply * 1 000 000 (6 decimals) = 600 000 000 000 000
    |  string public version = "1.0";
    |
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'BeeGims':
    |  uint public constant decimals = 6;               //  6 decimals
    |  uint public totalSupply = 600000000000000;       // = 600 000 000 tokens total supply * 1 000 000 (6 decimals) = 600 000 000 000 000
  > |  string public version = "1.0";
    |
    |  // Constructor
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(146)

[33mWarning[0m for UnhandledException in contract 'BeeGims':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(160)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BeeGims':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(160)

[31mViolation[0m for UnrestrictedWrite in contract 'BeeGims':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'BeeGims':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'BeeGims':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'BeeGims':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(110)

[31mViolation[0m for UnrestrictedWrite in contract 'BeeGims':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'BeeGims':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) revert();
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(128)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(25)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | */
    |
  > |contract StandardToken is ERC20, SafeMath {
    |
    |  /* Actual balances of token holders */
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract ERC20 {
  > |  uint public totalSupply;
    |  function balanceOf(address who) constant returns (uint);
    |  function allowance(address owner, address spender) constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(110)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) revert();
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa2eb247c2bebbd233b455a6c798ceba81e3aa320.sol(128)


