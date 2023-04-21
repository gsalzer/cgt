Processing contract: /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol:Credo
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'Credo':
    |      isFinalized = true;
    |
  > |      if (!etherProceedsAccount.send(this.balance)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(167)

[33mWarning[0m for DAOConstantGas in contract 'Credo':
    |      uint256 ethVal = credoVal / credoEthExchangeRate;
    |      LogRefund(msg.sender, ethVal);
  > |      if (!msg.sender.send(ethVal)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(181)

[33mWarning[0m for LockedEther in contract 'Credo':
    |/////////////////
    |
  > |contract Credo is StandardToken, SafeMath {
    |    // Descriptive properties
    |    string public constant name = "Credo Token";
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'Credo':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'Credo':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'Credo':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'Credo':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'Credo':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |contract SafeMath {
    |
  > |    function assert(bool assertion) internal {
    |        if (!assertion) {
    |            throw;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |    }      // assert no longer needed once solidity is on 0.4.10
    |
  > |    function safeAdd(uint256 x, uint256 y) internal returns(uint256) {
    |      uint256 z = x + y;
    |      assert((z >= x) && (z >= y));
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |    }
    |
  > |    function safeSubtract(uint256 x, uint256 y) internal returns(uint256) {
    |      assert(x >= y);
    |      uint256 z = x - y;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |    }
    |
  > |    function safeMult(uint256 x, uint256 y) internal returns(uint256) {
    |      uint256 z = x * y;
    |      assert((x == 0)||(z/x == y));
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |contract Credo is StandardToken, SafeMath {
    |    // Descriptive properties
  > |    string public constant name = "Credo Token";
    |    string public constant symbol = "CREDO";
    |    uint256 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |    // Descriptive properties
    |    string public constant name = "Credo Token";
  > |    string public constant symbol = "CREDO";
    |    uint256 public constant decimals = 18;
    |    string public version = "1.0";
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |    string public constant name = "Credo Token";
    |    string public constant symbol = "CREDO";
  > |    uint256 public constant decimals = 18;
    |    string public version = "1.0";
    |
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |    string public constant symbol = "CREDO";
    |    uint256 public constant decimals = 18;
  > |    string public version = "1.0";
    |
    |    // Account for ether proceed.
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |
    |    // Account for ether proceed.
  > |    address public etherProceedsAccount;
    |
    |    // Reserve account for the remaining 90% of credos.
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |
    |    // Reserve account for the remaining 90% of credos.
  > |    address public credosReserveAccount;
    |    uint256 public constant credosReserveAllocation = 1350 * (10**6) * 10**decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |    // Reserve account for the remaining 90% of credos.
    |    address public credosReserveAccount;
  > |    uint256 public constant credosReserveAllocation = 1350 * (10**6) * 10**decimals;
    |
    |    // These params specify the start, end, min, and max of the sale.
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |
    |    // These params specify the start, end, min, and max of the sale.
  > |    bool public isFinalized;
    |    uint256 public fundingStartBlock;
    |    uint256 public fundingEndBlock;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |    // These params specify the start, end, min, and max of the sale.
    |    bool public isFinalized;
  > |    uint256 public fundingStartBlock;
    |    uint256 public fundingEndBlock;
    |    uint256 public constant tokenCreationCap =  1500 * (10**6) * 10**decimals;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |    bool public isFinalized;
    |    uint256 public fundingStartBlock;
  > |    uint256 public fundingEndBlock;
    |    uint256 public constant tokenCreationCap =  1500 * (10**6) * 10**decimals;
    |    uint256 public constant tokenCreationMin =  1355 * (10**6) * 10**decimals;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |    uint256 public fundingStartBlock;
    |    uint256 public fundingEndBlock;
  > |    uint256 public constant tokenCreationCap =  1500 * (10**6) * 10**decimals;
    |    uint256 public constant tokenCreationMin =  1355 * (10**6) * 10**decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |    uint256 public fundingEndBlock;
    |    uint256 public constant tokenCreationCap =  1500 * (10**6) * 10**decimals;
  > |    uint256 public constant tokenCreationMin =  1355 * (10**6) * 10**decimals;
    |
    |    // Setting the exchange rate for the first part of the ICO.
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |
    |    // Setting the exchange rate for the first part of the ICO.
  > |    uint256 public constant credoEthExchangeRate = 100000;
    |
    |    // Events for logging refunds and token creation.
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |    }
    |
  > |    function createTokens() payable external {
    |      if (isFinalized) throw;
    |      if (block.number < fundingStartBlock) throw;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |    }
    |
  > |    function finalize() external {
    |      if (isFinalized) throw;
    |      if (msg.sender != etherProceedsAccount) throw;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'Credo':
    |    }
    |
  > |    function refund() external {
    |      if (isFinalized) throw;
    |      if (block.number <= fundingEndBlock) throw;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(170)

[31mViolation[0m for TODAmount in contract 'Credo':
    |      isFinalized = true;
    |
  > |      if (!etherProceedsAccount.send(this.balance)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(167)

[33mWarning[0m for TODReceiver in contract 'Credo':
    |      isFinalized = true;
    |
  > |      if (!etherProceedsAccount.send(this.balance)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(167)

[33mWarning[0m for TODReceiver in contract 'Credo':
    |      uint256 ethVal = credoVal / credoEthExchangeRate;
    |      LogRefund(msg.sender, ethVal);
  > |      if (!msg.sender.send(ethVal)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(181)

[33mWarning[0m for UnhandledException in contract 'Credo':
    |      isFinalized = true;
    |
  > |      if (!etherProceedsAccount.send(this.balance)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(167)

[33mWarning[0m for UnhandledException in contract 'Credo':
    |      uint256 ethVal = credoVal / credoEthExchangeRate;
    |      LogRefund(msg.sender, ethVal);
  > |      if (!msg.sender.send(ethVal)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(181)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Credo':
    |      isFinalized = true;
    |
  > |      if (!etherProceedsAccount.send(this.balance)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'Credo':
    |      if (tokenCreationCap < checkedSupply) throw;
    |
  > |      totalSupply = checkedSupply;
    |      balances[msg.sender] += tokens;
    |      CreateCredo(msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'Credo':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'Credo':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Credo':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Credo':
    |
    |      totalSupply = checkedSupply;
  > |      balances[msg.sender] += tokens;
    |      CreateCredo(msg.sender, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'Credo':
    |      uint256 credoVal = balances[msg.sender];
    |      if (credoVal == 0) throw;
  > |      balances[msg.sender] = 0;
    |      totalSupply = safeSubtract(totalSupply, credoVal);
    |      uint256 ethVal = credoVal / credoEthExchangeRate;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'Credo':
    |      if (block.number <= fundingEndBlock && totalSupply != tokenCreationCap) throw;
    |
  > |      isFinalized = true;
    |
    |      if (!etherProceedsAccount.send(this.balance)) throw;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(165)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |///////////////
    |
  > |contract SafeMath {
    |
    |    function assert(bool assertion) internal {
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(10)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |/*  ERC 20 token */
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be.sol(85)


