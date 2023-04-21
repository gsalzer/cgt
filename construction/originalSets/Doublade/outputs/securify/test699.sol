Processing contract: /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol:BTJToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol:IMigrationContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol:Token
[33mWarning[0m for DAO in contract 'BTJToken':
    |        IMigrationContract newContract = IMigrationContract(newContractAddr);
    |        
  > |        assert (newContract.migrate(msg.sender, tokens));
    | 
    |        Migrate(msg.sender, tokens);               // log it
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(210)

[33mWarning[0m for DAOConstantGas in contract 'BTJToken':
    |    function transferETH() isOwner external {
    |        require (this.balance != 0);
  > |        assert (ethFundDeposit.send(this.balance));
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(218)

[33mWarning[0m for LockedEther in contract 'BTJToken':
    |}
    | 
  > |contract BTJToken is StandardToken, SafeMath {
    | 
    |    // metadata
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'BTJToken':
    |    }
    | 
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require (_to != 0x0);
    |        require (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0);
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'BTJToken':
    |    }
    | 
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'BTJToken':
    |    }
    | 
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'BTJToken':
    |    }
    | 
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    |contract SafeMath {
    | 
  > |    function safeAdd(uint256 x, uint256 y) internal returns(uint256) {
    |        uint256 z = x + y;
    |        assert((z >= x) && (z >= y));
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    |    }
    | 
  > |    function safeSubtract(uint256 x, uint256 y) internal returns(uint256) {
    |        assert(x >= y);
    |        uint256 z = x - y;
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    |    }
    | 
  > |    function safeMult(uint256 x, uint256 y) internal returns(uint256) {
    |        uint256 z = x * y;
    |        assert((x == 0)||(z/x == y));
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    | 
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    |contract StandardToken is Token {
    | 
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require (_to != 0x0);
    |        require (balances[msg.sender] >= _value && _value > 0);
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    | 
    |    // metadata
  > |    string  public constant name = "Bit Jade";
    |    string  public constant symbol = "BTJ";
    |    uint256 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    |    // metadata
    |    string  public constant name = "Bit Jade";
  > |    string  public constant symbol = "BTJ";
    |    uint256 public constant decimals = 18;
    |    string  public version = "1.0";
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    |    string  public constant name = "Bit Jade";
    |    string  public constant symbol = "BTJ";
  > |    uint256 public constant decimals = 18;
    |    string  public version = "1.0";
    | 
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    |    string  public constant symbol = "BTJ";
    |    uint256 public constant decimals = 18;
  > |    string  public version = "1.0";
    | 
    |    // contracts
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    | 
    |    // contracts
  > |    address public ethFundDeposit;          // ETH存放地址
    |    address public newContractAddr;         // token更新地址
    | 
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    |    // contracts
    |    address public ethFundDeposit;          // ETH存放地址
  > |    address public newContractAddr;         // token更新地址
    | 
    |    // crowdsale parameters
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    | 
    |    // crowdsale parameters
  > |    bool    public isFunding;                // 状态切换到true
    |    uint256 public fundingStartBlock;
    |    uint256 public fundingStopBlock;
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    |    // crowdsale parameters
    |    bool    public isFunding;                // 状态切换到true
  > |    uint256 public fundingStartBlock;
    |    uint256 public fundingStopBlock;
    | 
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    |    bool    public isFunding;                // 状态切换到true
    |    uint256 public fundingStartBlock;
  > |    uint256 public fundingStopBlock;
    | 
    |    uint256 public currentSupply;           // 正在售卖中的tokens数量
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    |    uint256 public fundingStopBlock;
    | 
  > |    uint256 public currentSupply;           // 正在售卖中的tokens数量
    |    uint256 public tokenRaised = 0;         // 总的售卖数量token
    |    uint256 public tokenMigrated = 0;     // 总的已经交易的 token
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    | 
    |    uint256 public currentSupply;           // 正在售卖中的tokens数量
  > |    uint256 public tokenRaised = 0;         // 总的售卖数量token
    |    uint256 public tokenMigrated = 0;     // 总的已经交易的 token
    |    uint256 public tokenExchangeRate = 100;             // 100 BTJ 兑换 1 ETH
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    |    uint256 public currentSupply;           // 正在售卖中的tokens数量
    |    uint256 public tokenRaised = 0;         // 总的售卖数量token
  > |    uint256 public tokenMigrated = 0;     // 总的已经交易的 token
    |    uint256 public tokenExchangeRate = 100;             // 100 BTJ 兑换 1 ETH
    | 
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    |    uint256 public tokenRaised = 0;         // 总的售卖数量token
    |    uint256 public tokenMigrated = 0;     // 总的已经交易的 token
  > |    uint256 public tokenExchangeRate = 100;             // 100 BTJ 兑换 1 ETH
    | 
    |    // events
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    | 
    |    // 转换
  > |    function formatDecimals(uint256 _value) internal returns (uint256 ) {
    |        return _value * 10 ** decimals;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    | 
    |    ///  设置token汇率
  > |    function setTokenExchangeRate(uint256 _tokenExchangeRate) isOwner external {
    |        require(_tokenExchangeRate != 0 && _tokenExchangeRate != tokenExchangeRate);
    |    
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    | 
    |    /// @dev 被盗token处理
  > |    function decreaseSupply (uint256 _value) isOwner external {
    |        uint256 value = formatDecimals(_value);
    |        require(value + tokenRaised <= currentSupply);
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(161)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    | 
    |    ///  启动区块检测 异常的处理
  > |    function startFunding (uint256 _fundingStartBlock, uint256 _fundingStopBlock) isOwner external {
    |        require(!isFunding);
    |        require(_fundingStartBlock < _fundingStopBlock);
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    | 
    |    ///  关闭区块异常处理
  > |    function stopFunding() isOwner external {
    |        require(isFunding);
    |        isFunding = false;
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    | 
    |    /// 开发了一个新的合同来接收token（或者更新token）
  > |    function setMigrateContract(address _newContractAddr) isOwner external {
    |        require(_newContractAddr != newContractAddr);
    |        newContractAddr = _newContractAddr;
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    | 
    |    /// 设置新的所有者地址
  > |    function changeOwner(address _newFundDeposit) isOwner() external {
    |        require (_newFundDeposit != address(0x0));
    |        ethFundDeposit = _newFundDeposit;
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    | 
    |    ///转移token到新的合约
  > |    function migrate() external {
    |        require(!isFunding);
    |        require(newContractAddr != address(0x0));
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'BTJToken':
    | 
    |    /// 转账ETH 到BTJ团队
  > |    function transferETH() isOwner external {
    |        require (this.balance != 0);
    |        assert (ethFundDeposit.send(this.balance));
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(216)

[31mViolation[0m for TODAmount in contract 'BTJToken':
    |    function transferETH() isOwner external {
    |        require (this.balance != 0);
  > |        assert (ethFundDeposit.send(this.balance));
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(218)

[31mViolation[0m for TODReceiver in contract 'BTJToken':
    |    function transferETH() isOwner external {
    |        require (this.balance != 0);
  > |        assert (ethFundDeposit.send(this.balance));
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(218)

[33mWarning[0m for UnhandledException in contract 'BTJToken':
    |        IMigrationContract newContract = IMigrationContract(newContractAddr);
    |        
  > |        assert (newContract.migrate(msg.sender, tokens));
    | 
    |        Migrate(msg.sender, tokens);               // log it
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(210)

[33mWarning[0m for UnhandledException in contract 'BTJToken':
    |    function transferETH() isOwner external {
    |        require (this.balance != 0);
  > |        assert (ethFundDeposit.send(this.balance));
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(218)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BTJToken':
    |    function transferETH() isOwner external {
    |        require (this.balance != 0);
  > |        assert (ethFundDeposit.send(this.balance));
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'BTJToken':
    |
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        
    |        assert(balances[msg.sender] + balances[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'BTJToken':
    |        require (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0);
    |
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'BTJToken':
    |
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'BTJToken':
    |        assert(value + currentSupply <= totalSupply);
    |
  > |        currentSupply = safeAdd(currentSupply, value);
    |        IncreaseSupply(value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(156)

[31mViolation[0m for UnrestrictedWrite in contract 'BTJToken':
    | 
    |        balances[msg.sender] = 0;
  > |        tokenMigrated = safeAdd(tokenMigrated, tokens);
    | 
    |        IMigrationContract newContract = IMigrationContract(newContractAddr);
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(206)

[31mViolation[0m for UnrestrictedWrite in contract 'BTJToken':
    |        require (tokens + tokenRaised <= currentSupply);
    | 
  > |        tokenRaised = safeAdd(tokenRaised, tokens);
    |        balances[_addr] += tokens;
    | 
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'BTJToken':
    | 
    |        tokenRaised = safeAdd(tokenRaised, tokens);
  > |        balances[_addr] += tokens;
    | 
    |        AllocateToken(_addr, tokens);
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'BTJToken':
    |        uint256 previousBalances = balances[msg.sender] + balances[_to];
    |
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'BTJToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'BTJToken':
    | 
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BTJToken':
    |        require (tokens != 0);
    | 
  > |        balances[msg.sender] = 0;
    |        tokenMigrated = safeAdd(tokenMigrated, tokens);
    | 
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'BTJToken':
    |        require(_tokenExchangeRate != 0 && _tokenExchangeRate != tokenExchangeRate);
    |    
  > |        tokenExchangeRate = _tokenExchangeRate;
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'BTJToken':
    |        require(value + tokenRaised <= currentSupply);
    | 
  > |        currentSupply = safeSubtract(currentSupply, value);
    |        DecreaseSupply(value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'BTJToken':
    |        require(block.number < _fundingStartBlock);
    | 
  > |        fundingStartBlock = _fundingStartBlock;
    |        fundingStopBlock = _fundingStopBlock;
    |        isFunding = true;
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'BTJToken':
    | 
    |        fundingStartBlock = _fundingStartBlock;
  > |        fundingStopBlock = _fundingStopBlock;
    |        isFunding = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'BTJToken':
    |        fundingStartBlock = _fundingStartBlock;
    |        fundingStopBlock = _fundingStopBlock;
  > |        isFunding = true;
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'BTJToken':
    |    function stopFunding() isOwner external {
    |        require(isFunding);
  > |        isFunding = false;
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'BTJToken':
    |    function setMigrateContract(address _newContractAddr) isOwner external {
    |        require(_newContractAddr != newContractAddr);
  > |        newContractAddr = _newContractAddr;
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'BTJToken':
    |    function changeOwner(address _newFundDeposit) isOwner() external {
    |        require (_newFundDeposit != address(0x0));
  > |        ethFundDeposit = _newFundDeposit;
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(195)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | 
    |/* 灵感来自于NAS  coin*/
  > |contract SafeMath {
    | 
    |    function safeAdd(uint256 x, uint256 y) internal returns(uint256) {
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | 
    |/*  ERC 20 token */
  > |contract StandardToken is Token {
    | 
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    | 
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require (_to != 0x0);
    |        require (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0);
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    | 
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    | 
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    | 
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | 
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    | 
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require (_to != 0x0);
    |        require (balances[msg.sender] >= _value && _value > 0);
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        
    |        assert(balances[msg.sender] + balances[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0);
    |
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint256 previousBalances = balances[msg.sender] + balances[_to];
    |
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    | 
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2cb356dd9653279517f5fbcac54a829051aacce5.sol(77)


