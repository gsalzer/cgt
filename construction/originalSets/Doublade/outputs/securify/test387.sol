Processing contract: /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol:BHCToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol:IMigrationContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol:Token
[33mWarning[0m for DAO in contract 'BHCToken':
    |
    |        IMigrationContract newContract = IMigrationContract(newContractAddr);
  > |        require(newContract.migrate(msg.sender, tokens));
    |
    |        emit Migrate(msg.sender, tokens);               // log it
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(204)

[33mWarning[0m for DAOConstantGas in contract 'BHCToken':
    |    function transferETH() isOwner external {
    |        require(address(this).balance != 0);
  > |        require(ethFundDeposit.send(address(this).balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(212)

[33mWarning[0m for LockedEther in contract 'BHCToken':
    |}
    |
  > |contract BHCToken is StandardToken, SafeMath {
    |    
    |    // metadata
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'BHCToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'BHCToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'BHCToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'BHCToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'BHCToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |/* 灵感来自于NAS  coin*/
    |contract SafeMath {
  > |    function safeAdd(uint256 x, uint256 y) internal pure returns(uint256) {
    |        uint256 z = x + y;
    |        assert((z >= x) && (z >= y));
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |    }
    |
  > |    function safeSubtract(uint256 x, uint256 y) internal pure returns(uint256) {
    |        assert(x >= y);
    |        uint256 z = x - y;
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |    }
    |
  > |    function safeMult(uint256 x, uint256 y) internal pure returns(uint256) {
    |        uint256 z = x * y;
    |        assert((x == 0)||(z/x == y));
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) public constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) public returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |    
    |    // metadata
  > |    string  public constant name = "蓝币";
    |    string  public constant symbol = "BHC";
    |    uint256 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |    // metadata
    |    string  public constant name = "蓝币";
  > |    string  public constant symbol = "BHC";
    |    uint256 public constant decimals = 18;
    |    string  public version = "1.0";
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |    string  public constant name = "蓝币";
    |    string  public constant symbol = "BHC";
  > |    uint256 public constant decimals = 18;
    |    string  public version = "1.0";
    |
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |    string  public constant symbol = "BHC";
    |    uint256 public constant decimals = 18;
  > |    string  public version = "1.0";
    |
    |    // contracts
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |
    |    // contracts
  > |    address public ethFundDeposit;          // ETH存放地址
    |    address public newContractAddr;         // token更新地址
    |
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |    // contracts
    |    address public ethFundDeposit;          // ETH存放地址
  > |    address public newContractAddr;         // token更新地址
    |
    |    // crowdsale parameters
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |
    |    // crowdsale parameters
  > |    bool    public isFunding;                // 状态切换到true
    |    uint256 public fundingStartBlock;
    |    uint256 public fundingStopBlock;
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |    // crowdsale parameters
    |    bool    public isFunding;                // 状态切换到true
  > |    uint256 public fundingStartBlock;
    |    uint256 public fundingStopBlock;
    |
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |    bool    public isFunding;                // 状态切换到true
    |    uint256 public fundingStartBlock;
  > |    uint256 public fundingStopBlock;
    |
    |    uint256 public currentSupply;           // 正在售卖中的tokens数量
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |    uint256 public fundingStopBlock;
    |
  > |    uint256 public currentSupply;           // 正在售卖中的tokens数量
    |    uint256 public tokenRaised = 0;         // 总的售卖数量token
    |    uint256 public tokenMigrated = 0;     // 总的已经交易的 token
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |
    |    uint256 public currentSupply;           // 正在售卖中的tokens数量
  > |    uint256 public tokenRaised = 0;         // 总的售卖数量token
    |    uint256 public tokenMigrated = 0;     // 总的已经交易的 token
    |    uint256 public tokenExchangeRate = 300;             // 代币兑换比例 N代币 兑换 1 ETH
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |    uint256 public currentSupply;           // 正在售卖中的tokens数量
    |    uint256 public tokenRaised = 0;         // 总的售卖数量token
  > |    uint256 public tokenMigrated = 0;     // 总的已经交易的 token
    |    uint256 public tokenExchangeRate = 300;             // 代币兑换比例 N代币 兑换 1 ETH
    |
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |    uint256 public tokenRaised = 0;         // 总的售卖数量token
    |    uint256 public tokenMigrated = 0;     // 总的已经交易的 token
  > |    uint256 public tokenExchangeRate = 300;             // 代币兑换比例 N代币 兑换 1 ETH
    |
    |    // events
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |
    |    // 转换
  > |    function formatDecimals(uint256 _value) internal pure returns (uint256 ) {
    |        return _value * 10 ** decimals;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |
    |    ///  设置token汇率
  > |    function setTokenExchangeRate(uint256 _tokenExchangeRate) isOwner external {
    |        require(_tokenExchangeRate != 0);
    |        require(_tokenExchangeRate != tokenExchangeRate);
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |
    |    ///减少代币
  > |    function decreaseSupply (uint256 _value) isOwner external {
    |        uint256 value = formatDecimals(_value);
    |        require(value + tokenRaised <= currentSupply);
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |
    |    ///开启
  > |    function startFunding (uint256 _fundingStartBlock, uint256 _fundingStopBlock) isOwner external {
    |        require(!isFunding);
    |        require(_fundingStartBlock < _fundingStopBlock);
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |
    |    ///关闭
  > |    function stopFunding() isOwner external {
    |        require(isFunding);
    |        isFunding = false;
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |
    |    ///set a new contract for recieve the tokens (for update contract)
  > |    function setMigrateContract(address _newContractAddr) isOwner external {
    |        require(_newContractAddr != newContractAddr);
    |        newContractAddr = _newContractAddr;
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |
    |    ///set a new owner.
  > |    function changeOwner(address _newFundDeposit) isOwner() external {
    |        require(_newFundDeposit != address(0x0));
    |        ethFundDeposit = _newFundDeposit;
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |
    |    ///sends the tokens to new contract
  > |    function migrate() external {
    |        require(!isFunding);
    |        require(newContractAddr != address(0x0));
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'BHCToken':
    |
    |    /// 转账ETH 到团队
  > |    function transferETH() isOwner external {
    |        require(address(this).balance != 0);
    |        require(ethFundDeposit.send(address(this).balance));
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(210)

[31mViolation[0m for TODAmount in contract 'BHCToken':
    |    function transferETH() isOwner external {
    |        require(address(this).balance != 0);
  > |        require(ethFundDeposit.send(address(this).balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(212)

[31mViolation[0m for TODReceiver in contract 'BHCToken':
    |    function transferETH() isOwner external {
    |        require(address(this).balance != 0);
  > |        require(ethFundDeposit.send(address(this).balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(212)

[33mWarning[0m for UnhandledException in contract 'BHCToken':
    |
    |        IMigrationContract newContract = IMigrationContract(newContractAddr);
  > |        require(newContract.migrate(msg.sender, tokens));
    |
    |        emit Migrate(msg.sender, tokens);               // log it
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(204)

[33mWarning[0m for UnhandledException in contract 'BHCToken':
    |    function transferETH() isOwner external {
    |        require(address(this).balance != 0);
  > |        require(ethFundDeposit.send(address(this).balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BHCToken':
    |    function transferETH() isOwner external {
    |        require(address(this).balance != 0);
  > |        require(ethFundDeposit.send(address(this).balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'BHCToken':
    |        uint256 value = formatDecimals(_value);
    |        require(value + currentSupply <= totalSupply);
  > |        currentSupply = safeAdd(currentSupply, value);
    |        emit IncreaseSupply(value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'BHCToken':
    |
    |        balances[msg.sender] = 0;
  > |        tokenMigrated = safeAdd(tokenMigrated, tokens);
    |
    |        IMigrationContract newContract = IMigrationContract(newContractAddr);
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(201)

[31mViolation[0m for UnrestrictedWrite in contract 'BHCToken':
    |        require(tokens + tokenRaised <= currentSupply);
    |
  > |        tokenRaised = safeAdd(tokenRaised, tokens);
    |        balances[_addr] += tokens;
    |
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'BHCToken':
    |
    |        tokenRaised = safeAdd(tokenRaised, tokens);
  > |        balances[_addr] += tokens;
    |
    |        emit AllocateToken(_addr, tokens);  // 记录token日志
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'BHCToken':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'BHCToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            emit Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'BHCToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'BHCToken':
    |        require(tokens != 0);
    |
  > |        balances[msg.sender] = 0;
    |        tokenMigrated = safeAdd(tokenMigrated, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'BHCToken':
    |        require(_tokenExchangeRate != tokenExchangeRate);
    |
  > |        tokenExchangeRate = _tokenExchangeRate;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'BHCToken':
    |        require(value + tokenRaised <= currentSupply);
    |
  > |        currentSupply = safeSubtract(currentSupply, value);
    |        emit DecreaseSupply(value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'BHCToken':
    |        require(block.number < _fundingStartBlock);
    |
  > |        fundingStartBlock = _fundingStartBlock;
    |        fundingStopBlock = _fundingStopBlock;
    |        isFunding = true;
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'BHCToken':
    |
    |        fundingStartBlock = _fundingStartBlock;
  > |        fundingStopBlock = _fundingStopBlock;
    |        isFunding = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'BHCToken':
    |        fundingStartBlock = _fundingStartBlock;
    |        fundingStopBlock = _fundingStopBlock;
  > |        isFunding = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'BHCToken':
    |    function stopFunding() isOwner external {
    |        require(isFunding);
  > |        isFunding = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'BHCToken':
    |    function setMigrateContract(address _newContractAddr) isOwner external {
    |        require(_newContractAddr != newContractAddr);
  > |        newContractAddr = _newContractAddr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'BHCToken':
    |    function changeOwner(address _newFundDeposit) isOwner() external {
    |        require(_newFundDeposit != address(0x0));
  > |        ethFundDeposit = _newFundDeposit;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(189)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |/* 灵感来自于NAS  coin*/
  > |contract SafeMath {
    |    function safeAdd(uint256 x, uint256 y) internal pure returns(uint256) {
    |        uint256 z = x + y;
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |/*  ERC 20 token */
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) public constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) public returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            emit Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1971402fa594cb9b9dc3d9e2b9e84d64d499fe6d.sol(72)


