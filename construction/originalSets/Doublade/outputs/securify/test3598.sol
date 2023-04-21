Processing contract: /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol:KWHToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'KWHToken':
    |      // end ICO
    |      isFinalized = true;
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(151)

[33mWarning[0m for DAOConstantGas in contract 'KWHToken':
    |      // move to operational
    |      isIco = true;
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(159)

[33mWarning[0m for DAOConstantGas in contract 'KWHToken':
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |      // move to operational
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(166)

[33mWarning[0m for DAOConstantGas in contract 'KWHToken':
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |      // move to operational
  > |      if(!kwhDeployer.send(5*10**decimals)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(173)

[33mWarning[0m for LockedEther in contract 'KWHToken':
    |}
    | 
  > |contract KWHToken is StandardToken, SafeMath {
    | 
    |    // metadata
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'KWHToken':
    |contract StandardToken is Token {
    | 
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'KWHToken':
    |    }
    | 
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'KWHToken':
    |    }
    | 
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'KWHToken':
    |    }
    | 
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'KWHToken':
    |
    | /// @dev Ends the funding period and sends the ETH home
  > |        function setPreSaleTokenExchangeRate(uint _preSaleTokenExchangeRate) external {
    |          if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |          preSaleTokenExchangeRate=_preSaleTokenExchangeRate;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(205)

[31mViolation[0m for MissingInputValidation in contract 'KWHToken':
    |
    | /// @dev Ends the funding period and sends the ETH home
  > |        function setIcoTokenExchangeRate (uint _icoTokenExchangeRate) external {
    |          if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |          icoTokenExchangeRate=_icoTokenExchangeRate ;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(212)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |contract SafeMath {
    | 
  > |   function safeAdd(uint256 x, uint256 y) internal returns(uint256) {
    |      uint256 z = x + y;
    |      assert((z >= x) && (z >= y));
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    }
    | 
  > |    function safeMult(uint256 x, uint256 y) internal returns(uint256) {
    |      uint256 z = x * y;
    |      assert((x == 0)||(z/x == y));
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    | 
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    | 
    |    // metadata
  > |    string public constant name = "KWHCoin";
    |    string public constant symbol = "KWH";
    |    uint256 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    // metadata
    |    string public constant name = "KWHCoin";
  > |    string public constant symbol = "KWH";
    |    uint256 public constant decimals = 18;
    |    string public version = "1.0";
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    string public constant name = "KWHCoin";
    |    string public constant symbol = "KWH";
  > |    uint256 public constant decimals = 18;
    |    string public version = "1.0";
    | 
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    string public constant symbol = "KWH";
    |    uint256 public constant decimals = 18;
  > |    string public version = "1.0";
    | 
    |    // contracts
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    | 
    |    // crowdsale parameters
  > |    bool public isFinalized;              // switched to true in operational state
    |    bool public isIco;              // controls pre-sale
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    // crowdsale parameters
    |    bool public isFinalized;              // switched to true in operational state
  > |    bool public isIco;              // controls pre-sale
    |    
    |    uint256 public constant kwhFund = 19.5 * (10**6) * 10**decimals;   // 19.5m kwh reserved for kwh Intl use
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    bool public isIco;              // controls pre-sale
    |    
  > |    uint256 public constant kwhFund = 19.5 * (10**6) * 10**decimals;   // 19.5m kwh reserved for kwh Intl use
    |    uint256 public preSaleTokenExchangeRate = 12300; // xxx kwh tokens per 1 ETH
    |    uint256 public icoTokenExchangeRate = 9400; // xxx kwh tokens per 1 ETH
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    
    |    uint256 public constant kwhFund = 19.5 * (10**6) * 10**decimals;   // 19.5m kwh reserved for kwh Intl use
  > |    uint256 public preSaleTokenExchangeRate = 12300; // xxx kwh tokens per 1 ETH
    |    uint256 public icoTokenExchangeRate = 9400; // xxx kwh tokens per 1 ETH
    |    uint256 public constant tokenCreationCap =  195 * (10**6) * 10**decimals; //total 195m tokens
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    uint256 public constant kwhFund = 19.5 * (10**6) * 10**decimals;   // 19.5m kwh reserved for kwh Intl use
    |    uint256 public preSaleTokenExchangeRate = 12300; // xxx kwh tokens per 1 ETH
  > |    uint256 public icoTokenExchangeRate = 9400; // xxx kwh tokens per 1 ETH
    |    uint256 public constant tokenCreationCap =  195 * (10**6) * 10**decimals; //total 195m tokens
    |    uint256 public ethRaised = 0;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    uint256 public preSaleTokenExchangeRate = 12300; // xxx kwh tokens per 1 ETH
    |    uint256 public icoTokenExchangeRate = 9400; // xxx kwh tokens per 1 ETH
  > |    uint256 public constant tokenCreationCap =  195 * (10**6) * 10**decimals; //total 195m tokens
    |    uint256 public ethRaised = 0;
    |    address public checkaddress;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    uint256 public icoTokenExchangeRate = 9400; // xxx kwh tokens per 1 ETH
    |    uint256 public constant tokenCreationCap =  195 * (10**6) * 10**decimals; //total 195m tokens
  > |    uint256 public ethRaised = 0;
    |    address public checkaddress;
    |    // events
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    uint256 public constant tokenCreationCap =  195 * (10**6) * 10**decimals; //total 195m tokens
    |    uint256 public ethRaised = 0;
  > |    address public checkaddress;
    |    // events
    |    event CreateKWH(address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    | 
    |    /// @dev Accepts ether and creates new kwh tokens.
  > |    function createTokens() payable external {
    |      if (isFinalized) throw;
    |      if (msg.value == 0) throw;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    | 
    |    /// @dev Ends the ICO period and sends the ETH home
  > |    function endIco() external {
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |      // end ICO
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(147)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    
    |    /// @dev Ends the funding period and sends the ETH home
  > |    function startIco() external {
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |      // move to operational
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    
    |     /// @dev Ends the funding period and sends the ETH home
  > |    function sendFundHome() external {
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |      // move to operational
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(163)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    
    |    /// @dev ico maintenance 
  > |    function sendFundHome2() external {
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |      // move to operational
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    
    |     /// @dev Ends the funding period and sends the ETH home
  > |    function checkEthRaised() external returns(uint256 balance){
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |      ethRaised=this.balance;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    
    |    /// @dev Ends the funding period and sends the ETH home
  > |    function checkKwhDeployerAddress() external returns(address){
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |      checkaddress=kwhDeployer;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    
    |    /// @dev Ends the funding period and sends the ETH home
  > |        function checkEthFundDepositAddress() external returns(address){
    |          if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |          checkaddress=ethFundDeposit;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(191)

[33mWarning[0m for MissingInputValidation in contract 'KWHToken':
    |    
    |    /// @dev Ends the funding period and sends the ETH home
  > |        function checkKhFundDepositAddress() external returns(address){
    |          if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |          checkaddress=kwhFundDeposit;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(198)

[31mViolation[0m for TODAmount in contract 'KWHToken':
    |      // end ICO
    |      isFinalized = true;
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(151)

[31mViolation[0m for TODAmount in contract 'KWHToken':
    |      // move to operational
    |      isIco = true;
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(159)

[31mViolation[0m for TODAmount in contract 'KWHToken':
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |      // move to operational
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(166)

[31mViolation[0m for TODReceiver in contract 'KWHToken':
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |      // move to operational
  > |      if(!kwhDeployer.send(5*10**decimals)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(173)

[33mWarning[0m for TODReceiver in contract 'KWHToken':
    |      // end ICO
    |      isFinalized = true;
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(151)

[33mWarning[0m for TODReceiver in contract 'KWHToken':
    |      // move to operational
    |      isIco = true;
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(159)

[33mWarning[0m for TODReceiver in contract 'KWHToken':
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |      // move to operational
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(166)

[33mWarning[0m for UnhandledException in contract 'KWHToken':
    |      // end ICO
    |      isFinalized = true;
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(151)

[33mWarning[0m for UnhandledException in contract 'KWHToken':
    |      // move to operational
    |      isIco = true;
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(159)

[33mWarning[0m for UnhandledException in contract 'KWHToken':
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |      // move to operational
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(166)

[33mWarning[0m for UnhandledException in contract 'KWHToken':
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |      // move to operational
  > |      if(!kwhDeployer.send(5*10**decimals)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(173)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KWHToken':
    |      // end ICO
    |      isFinalized = true;
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(151)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KWHToken':
    |      // move to operational
    |      isIco = true;
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(159)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KWHToken':
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |      // move to operational
  > |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(166)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KWHToken':
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |      // move to operational
  > |      if(!kwhDeployer.send(5*10**decimals)) throw;  // send the eth to kwh International
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(173)

[31mViolation[0m for UnrestrictedWrite in contract 'KWHToken':
    |      if (tokenCreationCap < checkedSupply) throw;  // odd fractions won't be found
    | 
  > |      totalSupply = checkedSupply;
    |      balances[msg.sender] += tokens;  // safeAdd not needed; bad semantics to use here
    |      CreateKWH(msg.sender, tokens);  // logs token creation
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'KWHToken':
    | 
    |      totalSupply = checkedSupply;
  > |      balances[msg.sender] += tokens;  // safeAdd not needed; bad semantics to use here
    |      CreateKWH(msg.sender, tokens);  // logs token creation
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'KWHToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'KWHToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'KWHToken':
    |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        require(_value == 0 || allowed[msg.sender][_spender] == 0);
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'KWHToken':
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |      // end ICO
  > |      isFinalized = true;
    |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'KWHToken':
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
    |      // move to operational
  > |      isIco = true;
    |      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'KWHToken':
    |    function checkEthRaised() external returns(uint256 balance){
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
  > |      ethRaised=this.balance;
    |      return ethRaised;  
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'KWHToken':
    |    function checkKwhDeployerAddress() external returns(address){
    |      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
  > |      checkaddress=kwhDeployer;
    |      return checkaddress;  
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'KWHToken':
    |        function checkEthFundDepositAddress() external returns(address){
    |          if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
  > |          checkaddress=ethFundDeposit;
    |          return checkaddress;  
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'KWHToken':
    |        function checkKhFundDepositAddress() external returns(address){
    |          if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
  > |          checkaddress=kwhFundDeposit;
    |          return checkaddress;  
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'KWHToken':
    |        function setPreSaleTokenExchangeRate(uint _preSaleTokenExchangeRate) external {
    |          if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
  > |          preSaleTokenExchangeRate=_preSaleTokenExchangeRate;
    |            
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'KWHToken':
    |        function setIcoTokenExchangeRate (uint _icoTokenExchangeRate) external {
    |          if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
  > |          icoTokenExchangeRate=_icoTokenExchangeRate ;
    |            
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(214)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.17;
    | 
  > |contract SafeMath {
    | 
    |   function safeAdd(uint256 x, uint256 y) internal returns(uint256) {
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | 
    |/*  ERC 20 token */
  > |contract StandardToken is Token {
    | 
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    | 
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    | 
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    | 
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    | 
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | 
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        require(_value == 0 || allowed[msg.sender][_spender] == 0);
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xebc7cd2684dd96619841c7994343c5a8bda94b10.sol(69)


