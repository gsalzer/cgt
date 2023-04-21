Processing contract: /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol:DappToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol:IMigrationContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol:Token
[33mWarning[0m for DAO in contract 'DappToken':
    |
    |        IMigrationContract newContract = IMigrationContract(newContractAddr);
  > |        if (!newContract.migrate(msg.sender, tokens)) throw;
    |
    |        Migrate(msg.sender, tokens);               // log it
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(211)

[33mWarning[0m for DAOConstantGas in contract 'DappToken':
    |    function transferETH() isOwner external {
    |        if (this.balance == 0) throw;
  > |        if (!ethFundDeposit.send(this.balance)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(219)

[33mWarning[0m for LockedEther in contract 'DappToken':
    |}
    |
  > |contract DappToken is StandardToken, SafeMath {
    |
    |    // metadata
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'DappToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'DappToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'DappToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'DappToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'DappToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |    /* }      // assert no longer needed once solidity is on 0.4.10 */
    |
  > |    function safeAdd(uint256 x, uint256 y) internal returns(uint256) {
    |      uint256 z = x + y;
    |      assert((z >= x) && (z >= y));
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |    }
    |
  > |    function safeSubtract(uint256 x, uint256 y) internal returns(uint256) {
    |      assert(x >= y);
    |      uint256 z = x - y;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |    }
    |
  > |    function safeMult(uint256 x, uint256 y) internal returns(uint256) {
    |      uint256 z = x * y;
    |      assert((x == 0)||(z/x == y));
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |
    |    // metadata
  > |    string  public constant name = "Dapp Token";
    |    string  public constant symbol = "DAPPT";
    |    uint256 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |    // metadata
    |    string  public constant name = "Dapp Token";
  > |    string  public constant symbol = "DAPPT";
    |    uint256 public constant decimals = 18;
    |    string  public version = "1.0";
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |    string  public constant name = "Dapp Token";
    |    string  public constant symbol = "DAPPT";
  > |    uint256 public constant decimals = 18;
    |    string  public version = "1.0";
    |
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |    string  public constant symbol = "DAPPT";
    |    uint256 public constant decimals = 18;
  > |    string  public version = "1.0";
    |
    |    // contracts
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |
    |    // contracts
  > |    address public ethFundDeposit;          // deposit address for ETH for Dapp Team.
    |    address public newContractAddr;         // the new contract for dapp token updates;
    |
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |    // contracts
    |    address public ethFundDeposit;          // deposit address for ETH for Dapp Team.
  > |    address public newContractAddr;         // the new contract for dapp token updates;
    |
    |    // crowdsale parameters
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |
    |    // crowdsale parameters
  > |    bool    public isFunding;                // switched to true in operational state
    |    uint256 public fundingStartBlock;
    |    uint256 public fundingStopBlock;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |    // crowdsale parameters
    |    bool    public isFunding;                // switched to true in operational state
  > |    uint256 public fundingStartBlock;
    |    uint256 public fundingStopBlock;
    |
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |    bool    public isFunding;                // switched to true in operational state
    |    uint256 public fundingStartBlock;
  > |    uint256 public fundingStopBlock;
    |
    |    uint256 public currentSupply;           // current supply tokens for sell
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |    uint256 public fundingStopBlock;
    |
  > |    uint256 public currentSupply;           // current supply tokens for sell
    |    uint256 public tokenRaised = 0;         // the number of total sold token
    |    uint256 public tokenMigrated = 0;     // the number of total transferted token
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |
    |    uint256 public currentSupply;           // current supply tokens for sell
  > |    uint256 public tokenRaised = 0;         // the number of total sold token
    |    uint256 public tokenMigrated = 0;     // the number of total transferted token
    |    uint256 public tokenExchangeRate = 25000;             // 25000 Dapp tokens per 1 ETH
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |    uint256 public currentSupply;           // current supply tokens for sell
    |    uint256 public tokenRaised = 0;         // the number of total sold token
  > |    uint256 public tokenMigrated = 0;     // the number of total transferted token
    |    uint256 public tokenExchangeRate = 25000;             // 25000 Dapp tokens per 1 ETH
    |
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |    uint256 public tokenRaised = 0;         // the number of total sold token
    |    uint256 public tokenMigrated = 0;     // the number of total transferted token
  > |    uint256 public tokenExchangeRate = 25000;             // 25000 Dapp tokens per 1 ETH
    |
    |    // events
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |
    |    // format decimals.
  > |    function formatDecimals(uint256 _value) internal returns (uint256 ) {
    |        return _value * 10 ** decimals;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |
    |    /// @dev set the token's tokenExchangeRate,
  > |    function setTokenExchangeRate(uint256 _tokenExchangeRate) isOwner external {
    |        if (_tokenExchangeRate == 0) throw;
    |        if (_tokenExchangeRate == tokenExchangeRate) throw;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |
    |    /// @dev decrease the token's supply
  > |    function decreaseSupply (uint256 _value) isOwner external {
    |        uint256 value = formatDecimals(_value);
    |        if (value + tokenRaised > currentSupply) throw;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |
    |    /// @dev turn on the funding state
  > |    function startFunding (uint256 _fundingStartBlock, uint256 _fundingStopBlock) isOwner external {
    |        if (isFunding) throw;
    |        if (_fundingStartBlock >= _fundingStopBlock) throw;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(171)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |
    |    /// @dev turn off the funding state
  > |    function stopFunding() isOwner external {
    |        if (!isFunding) throw;
    |        isFunding = false;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |
    |    /// @dev set a new contract for recieve the tokens (for update contract)
  > |    function setMigrateContract(address _newContractAddr) isOwner external {
    |        if (_newContractAddr == newContractAddr) throw;
    |        newContractAddr = _newContractAddr;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(188)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |
    |    /// @dev set a new owner.
  > |    function changeOwner(address _newFundDeposit) isOwner() external {
    |        if (_newFundDeposit == address(0x0)) throw;
    |        ethFundDeposit = _newFundDeposit;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(194)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |
    |    /// sends the tokens to new contract
  > |    function migrate() external {
    |        if(isFunding) throw;
    |        if(newContractAddr == address(0x0)) throw;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |
    |    /// @dev sends ETH to Dapp team
  > |    function transferETH() isOwner external {
    |        if (this.balance == 0) throw;
    |        if (!ethFundDeposit.send(this.balance)) throw;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(217)

[31mViolation[0m for TODAmount in contract 'DappToken':
    |    function transferETH() isOwner external {
    |        if (this.balance == 0) throw;
  > |        if (!ethFundDeposit.send(this.balance)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(219)

[31mViolation[0m for TODReceiver in contract 'DappToken':
    |    function transferETH() isOwner external {
    |        if (this.balance == 0) throw;
  > |        if (!ethFundDeposit.send(this.balance)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(219)

[33mWarning[0m for UnhandledException in contract 'DappToken':
    |
    |        IMigrationContract newContract = IMigrationContract(newContractAddr);
  > |        if (!newContract.migrate(msg.sender, tokens)) throw;
    |
    |        Migrate(msg.sender, tokens);               // log it
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(211)

[33mWarning[0m for UnhandledException in contract 'DappToken':
    |    function transferETH() isOwner external {
    |        if (this.balance == 0) throw;
  > |        if (!ethFundDeposit.send(this.balance)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(219)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DappToken':
    |    function transferETH() isOwner external {
    |        if (this.balance == 0) throw;
  > |        if (!ethFundDeposit.send(this.balance)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(219)

[31mViolation[0m for UnrestrictedWrite in contract 'DappToken':
    |        uint256 value = formatDecimals(_value);
    |        if (value + currentSupply > totalSupply) throw;
  > |        currentSupply = safeAdd(currentSupply, value);
    |        IncreaseSupply(value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(157)

[31mViolation[0m for UnrestrictedWrite in contract 'DappToken':
    |
    |        balances[msg.sender] = 0;
  > |        tokenMigrated = safeAdd(tokenMigrated, tokens);
    |
    |        IMigrationContract newContract = IMigrationContract(newContractAddr);
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(208)

[31mViolation[0m for UnrestrictedWrite in contract 'DappToken':
    |        if (tokens + tokenRaised > currentSupply) throw;
    |
  > |        tokenRaised = safeAdd(tokenRaised, tokens);
    |        balances[_addr] += tokens;
    |
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(230)

[31mViolation[0m for UnrestrictedWrite in contract 'DappToken':
    |
    |        tokenRaised = safeAdd(tokenRaised, tokens);
  > |        balances[_addr] += tokens;
    |
    |        AllocateToken(_addr, tokens);  // logs token issued
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'DappToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'DappToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'DappToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'DappToken':
    |        if (tokens == 0) throw;
    |
  > |        balances[msg.sender] = 0;
    |        tokenMigrated = safeAdd(tokenMigrated, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'DappToken':
    |        if (_tokenExchangeRate == tokenExchangeRate) throw;
    |
  > |        tokenExchangeRate = _tokenExchangeRate;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'DappToken':
    |        if (value + tokenRaised > currentSupply) throw;
    |
  > |        currentSupply = safeSubtract(currentSupply, value);
    |        DecreaseSupply(value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'DappToken':
    |        if (block.number >= _fundingStartBlock) throw;
    |
  > |        fundingStartBlock = _fundingStartBlock;
    |        fundingStopBlock = _fundingStopBlock;
    |        isFunding = true;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'DappToken':
    |
    |        fundingStartBlock = _fundingStartBlock;
  > |        fundingStopBlock = _fundingStopBlock;
    |        isFunding = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'DappToken':
    |        fundingStartBlock = _fundingStartBlock;
    |        fundingStopBlock = _fundingStopBlock;
  > |        isFunding = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'DappToken':
    |    function stopFunding() isOwner external {
    |        if (!isFunding) throw;
  > |        isFunding = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'DappToken':
    |    function setMigrateContract(address _newContractAddr) isOwner external {
    |        if (_newContractAddr == newContractAddr) throw;
  > |        newContractAddr = _newContractAddr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'DappToken':
    |    function changeOwner(address _newFundDeposit) isOwner() external {
    |        if (_newFundDeposit == address(0x0)) throw;
  > |        ethFundDeposit = _newFundDeposit;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(196)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |/* taking ideas from FirstBlood token */
  > |contract SafeMath {
    |
    |    /* function assert(bool assertion) internal { */
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |/*  ERC 20 token */
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x386cabc0b14a507a4e024dea15554342865b20de.sol(79)


