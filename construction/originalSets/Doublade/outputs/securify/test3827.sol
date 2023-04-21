Processing contract: /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol:BAToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol:BatLimitAsk
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'BAToken':
    |      // move to operational
    |      isFinalized = true;
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to Brave International
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(191)

[33mWarning[0m for DAOConstantGas in contract 'BAToken':
    |      uint256 ethVal = batVal / tokenExchangeRate;     // should be safe; previous throws covers edges
    |      LogRefund(msg.sender, ethVal);               // log it 
  > |      if (!msg.sender.send(ethVal)) throw;       // if you're using a contract; make sure it works with .send gas limits
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(206)

[33mWarning[0m for LockedEther in contract 'BAToken':
    |}
    |
  > |contract BAToken is StandardToken, SafeMath {
    |
    |    // metadata
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'BAToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'BAToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'BAToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'BAToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'BAToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |    /* }      // assert no longer needed once solidity is on 0.4.10 */
    |
  > |    function safeAdd(uint256 x, uint256 y) internal returns(uint256) {
    |      uint256 z = x + y;
    |      assert((z >= x) && (z >= y));
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |    }
    |
  > |    function safeSubtract(uint256 x, uint256 y) internal returns(uint256) {
    |      assert(x >= y);
    |      uint256 z = x - y;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |    }
    |
  > |    function safeMult(uint256 x, uint256 y) internal returns(uint256) {
    |      uint256 z = x * y;
    |      assert((x == 0)||(z/x == y));
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |
    |    // metadata
  > |    string public constant name = "Basic Attention Token";
    |    string public constant symbol = "BAT";
    |    uint256 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |    // metadata
    |    string public constant name = "Basic Attention Token";
  > |    string public constant symbol = "BAT";
    |    uint256 public constant decimals = 18;
    |    string public version = "1.0";
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |    string public constant name = "Basic Attention Token";
    |    string public constant symbol = "BAT";
  > |    uint256 public constant decimals = 18;
    |    string public version = "1.0";
    |
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |    string public constant symbol = "BAT";
    |    uint256 public constant decimals = 18;
  > |    string public version = "1.0";
    |
    |    // contracts
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(128)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |
    |    // contracts
  > |    address public ethFundDeposit;      // deposit address for ETH for Brave International
    |    address public batFundDeposit;      // deposit address for Brave International use and BAT User Fund
    |
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |    // contracts
    |    address public ethFundDeposit;      // deposit address for ETH for Brave International
  > |    address public batFundDeposit;      // deposit address for Brave International use and BAT User Fund
    |
    |    // crowdsale parameters
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |
    |    // crowdsale parameters
  > |    bool public isFinalized;              // switched to true in operational state
    |    uint256 public fundingStartBlock;
    |    uint256 public fundingEndBlock;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |    // crowdsale parameters
    |    bool public isFinalized;              // switched to true in operational state
  > |    uint256 public fundingStartBlock;
    |    uint256 public fundingEndBlock;
    |    uint256 public constant batFund = 500 * (10**6) * 10**decimals;   // 500m BAT reserved for Brave Intl use
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |    bool public isFinalized;              // switched to true in operational state
    |    uint256 public fundingStartBlock;
  > |    uint256 public fundingEndBlock;
    |    uint256 public constant batFund = 500 * (10**6) * 10**decimals;   // 500m BAT reserved for Brave Intl use
    |    uint256 public constant tokenExchangeRate = 6400; // 6400 BAT tokens per 1 ETH
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |    uint256 public fundingStartBlock;
    |    uint256 public fundingEndBlock;
  > |    uint256 public constant batFund = 500 * (10**6) * 10**decimals;   // 500m BAT reserved for Brave Intl use
    |    uint256 public constant tokenExchangeRate = 6400; // 6400 BAT tokens per 1 ETH
    |    uint256 public constant tokenCreationCap =  1500 * (10**6) * 10**decimals;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |    uint256 public fundingEndBlock;
    |    uint256 public constant batFund = 500 * (10**6) * 10**decimals;   // 500m BAT reserved for Brave Intl use
  > |    uint256 public constant tokenExchangeRate = 6400; // 6400 BAT tokens per 1 ETH
    |    uint256 public constant tokenCreationCap =  1500 * (10**6) * 10**decimals;
    |    uint256 public constant tokenCreationMin =  675 * (10**6) * 10**decimals;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |    uint256 public constant batFund = 500 * (10**6) * 10**decimals;   // 500m BAT reserved for Brave Intl use
    |    uint256 public constant tokenExchangeRate = 6400; // 6400 BAT tokens per 1 ETH
  > |    uint256 public constant tokenCreationCap =  1500 * (10**6) * 10**decimals;
    |    uint256 public constant tokenCreationMin =  675 * (10**6) * 10**decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |    uint256 public constant tokenExchangeRate = 6400; // 6400 BAT tokens per 1 ETH
    |    uint256 public constant tokenCreationCap =  1500 * (10**6) * 10**decimals;
  > |    uint256 public constant tokenCreationMin =  675 * (10**6) * 10**decimals;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |
    |    /// @dev Accepts ether and creates new BAT tokens.
  > |    function createTokens() payable external {
    |      if (isFinalized) throw;
    |      if (block.number < fundingStartBlock) throw;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |
    |    /// @dev Ends the funding period and sends the ETH home
  > |    function finalize() external {
    |      if (isFinalized) throw;
    |      if (msg.sender != ethFundDeposit) throw; // locks finalize to the ultimate ETH owner
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'BAToken':
    |
    |    /// @dev Allows contributors to recover their ether in the case of a failed funding campaign.
  > |    function refund() external {
    |      if(isFinalized) throw;                       // prevents refund if operational
    |      if (block.number <= fundingEndBlock) throw; // prevents refund until sale period is over
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(195)

[31mViolation[0m for TODAmount in contract 'BAToken':
    |      // move to operational
    |      isFinalized = true;
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to Brave International
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(191)

[33mWarning[0m for TODReceiver in contract 'BAToken':
    |      // move to operational
    |      isFinalized = true;
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to Brave International
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(191)

[33mWarning[0m for TODReceiver in contract 'BAToken':
    |      uint256 ethVal = batVal / tokenExchangeRate;     // should be safe; previous throws covers edges
    |      LogRefund(msg.sender, ethVal);               // log it 
  > |      if (!msg.sender.send(ethVal)) throw;       // if you're using a contract; make sure it works with .send gas limits
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(206)

[33mWarning[0m for UnhandledException in contract 'BAToken':
    |      // move to operational
    |      isFinalized = true;
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to Brave International
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(191)

[33mWarning[0m for UnhandledException in contract 'BAToken':
    |      uint256 ethVal = batVal / tokenExchangeRate;     // should be safe; previous throws covers edges
    |      LogRefund(msg.sender, ethVal);               // log it 
  > |      if (!msg.sender.send(ethVal)) throw;       // if you're using a contract; make sure it works with .send gas limits
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(206)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BAToken':
    |      // move to operational
    |      isFinalized = true;
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to Brave International
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BAToken':
    |      uint256 ethVal = batVal / tokenExchangeRate;     // should be safe; previous throws covers edges
    |      LogRefund(msg.sender, ethVal);               // log it 
  > |      if (!msg.sender.send(ethVal)) throw;       // if you're using a contract; make sure it works with .send gas limits
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(206)

[31mViolation[0m for UnrestrictedWrite in contract 'BAToken':
    |      if (tokenCreationCap < checkedSupply) throw;  // odd fractions won't be found
    |
  > |      totalSupply = checkedSupply;
    |      balances[msg.sender] += tokens;  // safeAdd not needed; bad semantics to use here
    |      CreateBAT(msg.sender, tokens);  // logs token creation
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'BAToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'BAToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'BAToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'BAToken':
    |
    |      totalSupply = checkedSupply;
  > |      balances[msg.sender] += tokens;  // safeAdd not needed; bad semantics to use here
    |      CreateBAT(msg.sender, tokens);  // logs token creation
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'BAToken':
    |      uint256 batVal = balances[msg.sender];
    |      if (batVal == 0) throw;
  > |      balances[msg.sender] = 0;
    |      totalSupply = safeSubtract(totalSupply, batVal); // extra safe
    |      uint256 ethVal = batVal / tokenExchangeRate;     // should be safe; previous throws covers edges
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'BAToken':
    |      if (batVal == 0) throw;
    |      balances[msg.sender] = 0;
  > |      totalSupply = safeSubtract(totalSupply, batVal); // extra safe
    |      uint256 ethVal = batVal / tokenExchangeRate;     // should be safe; previous throws covers edges
    |      LogRefund(msg.sender, ethVal);               // log it 
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'BAToken':
    |      if(block.number <= fundingEndBlock && totalSupply != tokenCreationCap) throw;
    |      // move to operational
  > |      isFinalized = true;
    |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to Brave International
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(190)

[33mWarning[0m for DAOConstantGas in contract 'BatLimitAsk':
    |
    |    function withdrawETH() onlyOwner{
  > |        if(!msg.sender.send(this.balance)){ throw; }
    |    }
    |    function withdrawBAT(uint _amount) onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(25)

[33mWarning[0m for LockedEther in contract 'BatLimitAsk':
  > |contract BatLimitAsk{
    |    address        owner;
    |    uint    public pausedUntil;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(1)

[31mViolation[0m for MissingInputValidation in contract 'BatLimitAsk':
    |    modifier onlyOwner(){ if(msg.sender == owner) _; }
    |    
  > |    function changeRate(uint _BATsPerEth) onlyOwner{
    |        pausedUntil = now + 10; //no new bids for 5 minutes (protects taker)
    |        BATsPerEth = _BATsPerEth;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'BatLimitAsk':
    |        if(!msg.sender.send(this.balance)){ throw; }
    |    }
  > |    function withdrawBAT(uint _amount) onlyOwner{
    |        if(!bat.transfer(msg.sender, _amount)){ throw; }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'BatLimitAsk':
    |contract BatLimitAsk{
    |    address        owner;
  > |    uint    public pausedUntil;
    |    uint    public BATsPerEth;// BAT/ETH
    |    BAToken public bat;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'BatLimitAsk':
    |    address        owner;
    |    uint    public pausedUntil;
  > |    uint    public BATsPerEth;// BAT/ETH
    |    BAToken public bat;
    |    function BatLimitAsk(){
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'BatLimitAsk':
    |    uint    public pausedUntil;
    |    uint    public BATsPerEth;// BAT/ETH
  > |    BAToken public bat;
    |    function BatLimitAsk(){
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'BatLimitAsk':
    |    }
    |
  > |    function withdrawETH() onlyOwner{
    |        if(!msg.sender.send(this.balance)){ throw; }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(24)

[31mViolation[0m for TODAmount in contract 'BatLimitAsk':
    |
    |    function withdrawETH() onlyOwner{
  > |        if(!msg.sender.send(this.balance)){ throw; }
    |    }
    |    function withdrawBAT(uint _amount) onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(25)

[33mWarning[0m for TODReceiver in contract 'BatLimitAsk':
    |
    |    function withdrawETH() onlyOwner{
  > |        if(!msg.sender.send(this.balance)){ throw; }
    |    }
    |    function withdrawBAT(uint _amount) onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(25)

[33mWarning[0m for UnhandledException in contract 'BatLimitAsk':
    |
    |    function withdrawETH() onlyOwner{
  > |        if(!msg.sender.send(this.balance)){ throw; }
    |    }
    |    function withdrawBAT(uint _amount) onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(25)

[33mWarning[0m for UnhandledException in contract 'BatLimitAsk':
    |    }
    |    function withdrawBAT(uint _amount) onlyOwner{
  > |        if(!bat.transfer(msg.sender, _amount)){ throw; }
    |    }
    |}//pending updates
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(28)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BatLimitAsk':
    |
    |    function withdrawETH() onlyOwner{
  > |        if(!msg.sender.send(this.balance)){ throw; }
    |    }
    |    function withdrawBAT(uint _amount) onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(25)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BatLimitAsk':
    |    }
    |    function withdrawBAT(uint _amount) onlyOwner{
  > |        if(!bat.transfer(msg.sender, _amount)){ throw; }
    |    }
    |}//pending updates
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'BatLimitAsk':
    |    
    |    function changeRate(uint _BATsPerEth) onlyOwner{
  > |        pausedUntil = now + 10; //no new bids for 5 minutes (protects taker)
    |        BATsPerEth = _BATsPerEth;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'BatLimitAsk':
    |    function changeRate(uint _BATsPerEth) onlyOwner{
    |        pausedUntil = now + 10; //no new bids for 5 minutes (protects taker)
  > |        BATsPerEth = _BATsPerEth;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(21)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |/* taking ideas from FirstBlood token */
  > |contract SafeMath {
    |
    |    /* function assert(bool assertion) internal { */
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(38)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |/*  ERC 20 token */
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfbc23099a8bd0ce4227920dc559fcfe9c7fa3ce3.sol(109)


