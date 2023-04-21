Processing contract: /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol:BitriceToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol:IMigrationContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol:Token
[33mWarning[0m for DAO in contract 'BitriceToken':
    |
    |        IMigrationContract newContract = IMigrationContract(newContractAddr);
  > |        require(newContract.migrate(msg.sender, tokens), "require");
    |
    |        emit Migrate(msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(197)

[33mWarning[0m for LockedEther in contract 'BitriceToken':
    |}
    |
  > |contract BitriceToken is StandardToken, SafeMath {
    |
    |    // metadata
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'BitriceToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'BitriceToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'BitriceToken':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'BitriceToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'BitriceToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |
    |contract SafeMath {
  > |    function safeAdd(uint256 x, uint256 y) internal pure returns(uint256) {
    |        uint256 z = x + y;
    |        assert((z >= x) && (z >= y));
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |    }
    |
  > |    function safeSubtract(uint256 x, uint256 y) internal pure returns(uint256) {
    |        assert(x >= y);
    |        uint256 z = x - y;
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |    }
    |
  > |    function safeMult(uint256 x, uint256 y) internal pure returns(uint256) {
    |        uint256 z = x * y;
    |        assert((x == 0)||(z/x == y));
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) public view returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) public returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |
    |    // metadata
  > |    string  public constant name = "Bitrice";
    |    string  public constant symbol = "BTR";
    |    uint256 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |    // metadata
    |    string  public constant name = "Bitrice";
  > |    string  public constant symbol = "BTR";
    |    uint256 public constant decimals = 18;
    |    uint256 public constant total = 2100 * (10 ** 6); // two billion one hundred million
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |    string  public constant name = "Bitrice";
    |    string  public constant symbol = "BTR";
  > |    uint256 public constant decimals = 18;
    |    uint256 public constant total = 2100 * (10 ** 6); // two billion one hundred million
    |    string  public version = "1.0";
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |    string  public constant symbol = "BTR";
    |    uint256 public constant decimals = 18;
  > |    uint256 public constant total = 2100 * (10 ** 6); // two billion one hundred million
    |    string  public version = "1.0";
    |
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |    uint256 public constant decimals = 18;
    |    uint256 public constant total = 2100 * (10 ** 6); // two billion one hundred million
  > |    string  public version = "1.0";
    |
    |    // contracts
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |
    |    // contracts
  > |    address public ethFundDeposit;              // deposit address for ETH for BTR team
    |    address public newContractAddr;
    |
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |    // contracts
    |    address public ethFundDeposit;              // deposit address for ETH for BTR team
  > |    address public newContractAddr;
    |
    |    // crowdsale parameters
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |
    |    // crowdsale parameters
  > |    bool    public isFunding;                   // allow coin transfers
    |    uint256 public fundingStartBlock;
    |    uint256 public fundingStopBlock;
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |    // crowdsale parameters
    |    bool    public isFunding;                   // allow coin transfers
  > |    uint256 public fundingStartBlock;
    |    uint256 public fundingStopBlock;
    |
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |    bool    public isFunding;                   // allow coin transfers
    |    uint256 public fundingStartBlock;
  > |    uint256 public fundingStopBlock;
    |
    |    uint256 public currentSupply;               // total selling tokens
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |    uint256 public fundingStopBlock;
    |
  > |    uint256 public currentSupply;               // total selling tokens
    |    uint256 public tokenRaised = 0;             // total raised tokens
    |    uint256 public tokenMigrated = 0;           // total migrated tokens
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |
    |    uint256 public currentSupply;               // total selling tokens
  > |    uint256 public tokenRaised = 0;             // total raised tokens
    |    uint256 public tokenMigrated = 0;           // total migrated tokens
    |    uint256 public tokenExchangeRate = 0;       // ? BTR per 1 ETH
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |    uint256 public currentSupply;               // total selling tokens
    |    uint256 public tokenRaised = 0;             // total raised tokens
  > |    uint256 public tokenMigrated = 0;           // total migrated tokens
    |    uint256 public tokenExchangeRate = 0;       // ? BTR per 1 ETH
    |
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |    uint256 public tokenRaised = 0;             // total raised tokens
    |    uint256 public tokenMigrated = 0;           // total migrated tokens
  > |    uint256 public tokenExchangeRate = 0;       // ? BTR per 1 ETH
    |
    |    // events
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |    event CreateBTR(address indexed _to, uint256 _value);
    |
  > |    function formatDecimals(uint256 _value) internal pure returns (uint256) {
    |        return _value * 10 ** decimals;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |
    |    /// set rate
  > |    function setTokenExchangeRate(uint256 _tokenExchangeRate) external onlyOwner {
    |        require(_tokenExchangeRate != 0, "_tokenExchangeRate is zero");
    |        require(_tokenExchangeRate != tokenExchangeRate, "_tokenExchangeRate not changed");
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |    }
    |
  > |    function decreaseSupply (uint256 _value) external onlyOwner {
    |        uint256 value = formatDecimals(_value);
    |        require(value + tokenRaised <= currentSupply, "require");
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |    }
    |
  > |    function startFunding (uint256 _fundingStartBlock, uint256 _fundingStopBlock) external onlyOwner {
    |        require(!isFunding, "require");
    |        require(_fundingStartBlock < _fundingStopBlock, "require");
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |    }
    |
  > |    function stopFunding() external onlyOwner {
    |        require(isFunding, "require");
    |        isFunding = false;
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |
    |    /// new owner
  > |    function changeOwner(address _newFundDeposit) external onlyOwner {
    |        require(_newFundDeposit != address(0x0), "_newFundDeposit is empty");
    |        ethFundDeposit = _newFundDeposit;
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |
    |    /// update token
  > |    function setMigrateContract(address _newContractAddr) external onlyOwner {
    |        require(_newContractAddr != newContractAddr, "require");
    |        newContractAddr = _newContractAddr;
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'BitriceToken':
    |    }
    |
  > |    function migrate() external {
    |        require(!isFunding, "require");
    |        require(newContractAddr != address(0x0), "new contract address is empty");
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(186)

[33mWarning[0m for UnhandledException in contract 'BitriceToken':
    |
    |        IMigrationContract newContract = IMigrationContract(newContractAddr);
  > |        require(newContract.migrate(msg.sender, tokens), "require");
    |
    |        emit Migrate(msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'BitriceToken':
    |        uint256 value = formatDecimals(_value);
    |        require(value + currentSupply <= totalSupply, "require");
  > |        currentSupply = safeAdd(currentSupply, value);
    |        emit IncreaseSupply(value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'BitriceToken':
    |
    |        balances[msg.sender] = 0;
  > |        tokenMigrated = safeAdd(tokenMigrated, tokens);
    |
    |        IMigrationContract newContract = IMigrationContract(newContractAddr);
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(194)

[31mViolation[0m for UnrestrictedWrite in contract 'BitriceToken':
    |        require(tokens + tokenRaised <= currentSupply, "require");
    |
  > |        tokenRaised = safeAdd(tokenRaised, tokens);
    |        balances[_addr] += tokens;
    |
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(209)

[31mViolation[0m for UnrestrictedWrite in contract 'BitriceToken':
    |
    |        tokenRaised = safeAdd(tokenRaised, tokens);
  > |        balances[_addr] += tokens;
    |
    |        emit AllocateToken(_addr, tokens);
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'BitriceToken':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'BitriceToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            emit Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'BitriceToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'BitriceToken':
    |        require(tokens != 0, "your balances is zero");
    |
  > |        balances[msg.sender] = 0;
    |        tokenMigrated = safeAdd(tokenMigrated, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'BitriceToken':
    |        require(_tokenExchangeRate != tokenExchangeRate, "_tokenExchangeRate not changed");
    |
  > |        tokenExchangeRate = _tokenExchangeRate;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'BitriceToken':
    |        require(value + tokenRaised <= currentSupply, "require");
    |
  > |        currentSupply = safeSubtract(currentSupply, value);
    |        emit DecreaseSupply(value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'BitriceToken':
    |        require(block.number < _fundingStartBlock, "require");
    |
  > |        fundingStartBlock = _fundingStartBlock;
    |        fundingStopBlock = _fundingStopBlock;
    |        isFunding = true;
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'BitriceToken':
    |
    |        fundingStartBlock = _fundingStartBlock;
  > |        fundingStopBlock = _fundingStopBlock;
    |        isFunding = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'BitriceToken':
    |        fundingStartBlock = _fundingStartBlock;
    |        fundingStopBlock = _fundingStopBlock;
  > |        isFunding = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'BitriceToken':
    |    function stopFunding() external onlyOwner {
    |        require(isFunding, "require");
  > |        isFunding = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'BitriceToken':
    |    function changeOwner(address _newFundDeposit) external onlyOwner {
    |        require(_newFundDeposit != address(0x0), "_newFundDeposit is empty");
  > |        ethFundDeposit = _newFundDeposit;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'BitriceToken':
    |    function setMigrateContract(address _newContractAddr) external onlyOwner {
    |        require(_newContractAddr != newContractAddr, "require");
  > |        newContractAddr = _newContractAddr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(183)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |contract SafeMath {
    |    function safeAdd(uint256 x, uint256 y) internal pure returns(uint256) {
    |        uint256 z = x + y;
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |/// ERC 20 token
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) public view returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) public returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            emit Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x083af4bc701cdd3b5e42cabdceb823813bc75e52.sol(69)


