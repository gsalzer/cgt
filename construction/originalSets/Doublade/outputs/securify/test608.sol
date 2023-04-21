Processing contract: /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol:CBZToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'CBZToken':
    |        require(safeAdd(StatsTotal, tokens) <= totalSupply);//The amount of tokens cannot be greater than Total supply
    |        
  > |        wallet.transfer(msg.value);//Send received ETH to the fundraising purse
    |        
    |        //Crediting of tokens to the buyer
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(239)

[31mViolation[0m for MissingInputValidation in contract 'CBZToken':
    |  }
    |
  > |  function balanceOf(address _address) constant returns (uint balance) {
    |    return balances[_address];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'CBZToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'CBZToken':
    |    
    |    //Addresses that are allowed to transfer tokens
  > |    mapping (address => bool) public allowedTransfer;
    |	
    |	//Technical variables to store states
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'CBZToken':
    |    
    |    //Manually set the token price (in wei - https://etherconverter.online)
  > |    function setTokenPrice(uint _tokenPrice) external onlyOwner {
    |        sellPrice = _tokenPrice;
    |        PriceChanged("New price is ", _tokenPrice);
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(181)

[31mViolation[0m for MissingInputValidation in contract 'CBZToken':
    |     
    |    //Allow or prohibit token transfers
  > |    function setTransferAllowance(bool _allowance) external onlyOwner {
    |        TransferAllowed = _allowance;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(187)

[31mViolation[0m for MissingInputValidation in contract 'CBZToken':
    |    
    |    //Temporarily suspend token sale
  > |    function eventPause(bool _pause) external onlyOwner {
    |        CrowdsalePaused = _pause;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(192)

[31mViolation[0m for MissingInputValidation in contract 'CBZToken':
    |    
    |    // Decrease user balance
  > |    function decreaseTokens(address _target, uint _amount) onlyMinter external returns (bool) {
    |        require(_amount > 0);//Number of tokens must be greater than 0
    |        balances[_target] = safeSub(balances[_target], _amount);
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(210)

[31mViolation[0m for MissingInputValidation in contract 'CBZToken':
    |    
    |    // Allow `_target` make token tranfers
  > |    function allowTransfer(address _target, bool _allow) external onlyOwner {
    |        allowedTransfer[_target] = _allow;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(221)

[31mViolation[0m for MissingInputValidation in contract 'CBZToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |        
    |        //Forbid token transfers
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(266)

[31mViolation[0m for MissingInputValidation in contract 'CBZToken':
    |
    |    //Change owner
  > |    function changeOwner(address _to) external onlyOwner() {
    |        balances[_to] = balances[owner];
    |        balances[owner] = 0;
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(277)

[31mViolation[0m for MissingInputValidation in contract 'CBZToken':
    |
    |    //Change minter
  > |    function changeMinter(address _to) external onlyOwner() {
    |        balances[_to] = balances[minter];
    |        balances[minter] = 0;
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(284)

[31mViolation[0m for MissingInputValidation in contract 'CBZToken':
    |
    |    //Change wallet
  > |    function changeWallet(address _to) external onlyOwner() {
    |        balances[_to] = balances[wallet];
    |        balances[wallet] = 0;
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(291)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool Yes) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |  }
    |
  > |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |contract CBZToken is StandardToken {
    |
  > |    string public name = "CryptoBazar Token";
    |    string public symbol = "CBZ";
    |    uint8 public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |
    |    string public name = "CryptoBazar Token";
  > |    string public symbol = "CBZ";
    |    uint8 public decimals = 8;
    |    uint256 public totalSupply = 1000000000 * (10 ** uint256(decimals));//Crowdsale supply
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |    string public name = "CryptoBazar Token";
    |    string public symbol = "CBZ";
  > |    uint8 public decimals = 8;
    |    uint256 public totalSupply = 1000000000 * (10 ** uint256(decimals));//Crowdsale supply
    |	uint public sellPrice = 1000000000000000 wei;//Tokens are sold for this manual price, rather than predefined price.
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |    string public symbol = "CBZ";
    |    uint8 public decimals = 8;
  > |    uint256 public totalSupply = 1000000000 * (10 ** uint256(decimals));//Crowdsale supply
    |	uint public sellPrice = 1000000000000000 wei;//Tokens are sold for this manual price, rather than predefined price.
    |    
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |    uint8 public decimals = 8;
    |    uint256 public totalSupply = 1000000000 * (10 ** uint256(decimals));//Crowdsale supply
  > |	uint public sellPrice = 1000000000000000 wei;//Tokens are sold for this manual price, rather than predefined price.
    |    
    |    //Addresses that are allowed to transfer tokens
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |	
    |	//Technical variables to store states
  > |	bool public TransferAllowed = true;//Token transfers are blocked
    |    bool public CrowdsalePaused = false; //Whether the Crowdsale is now suspended (true or false)
    |	
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |	//Technical variables to store states
    |	bool public TransferAllowed = true;//Token transfers are blocked
  > |    bool public CrowdsalePaused = false; //Whether the Crowdsale is now suspended (true or false)
    |	
    |    //Technical variables to store statistical data
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |	
    |    //Technical variables to store statistical data
  > |	uint public StatsEthereumRaised = 0 wei;//Total Ethereum raised
    |	uint public StatsSold = 0;//Sold tokens amount
    |	uint public StatsMinted = 0;//Minted tokens amount
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |    //Technical variables to store statistical data
    |	uint public StatsEthereumRaised = 0 wei;//Total Ethereum raised
  > |	uint public StatsSold = 0;//Sold tokens amount
    |	uint public StatsMinted = 0;//Minted tokens amount
    |	uint public StatsTotal = 0;//Overall tokens amount
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |	uint public StatsEthereumRaised = 0 wei;//Total Ethereum raised
    |	uint public StatsSold = 0;//Sold tokens amount
  > |	uint public StatsMinted = 0;//Minted tokens amount
    |	uint public StatsTotal = 0;//Overall tokens amount
    |
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |	uint public StatsSold = 0;//Sold tokens amount
    |	uint public StatsMinted = 0;//Minted tokens amount
  > |	uint public StatsTotal = 0;//Overall tokens amount
    |
    |    //Event logs
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |    event PriceChanged(string _text, uint _tokenPrice);//Manual token price
    |    
  > |    address public owner = 0x0;//Admin actions
    |    address public minter = 0x0;//Minter tokens
    |    address public wallet = 0x0;//Wallet to receive ETH
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |    
    |    address public owner = 0x0;//Admin actions
  > |    address public minter = 0x0;//Minter tokens
    |    address public wallet = 0x0;//Wallet to receive ETH
    | 
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |    address public owner = 0x0;//Admin actions
    |    address public minter = 0x0;//Minter tokens
  > |    address public wallet = 0x0;//Wallet to receive ETH
    | 
    |function CBZToken(address _owner, address _minter, address _wallet) payable {
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |    
    |    //See the current token price in wei (https://etherconverter.online to convert to other units, such as ETH)
  > |    function price() constant returns (uint) {
    |        return sellPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'CBZToken':
    |
    |    //The function of buying tokens on Crowdsale
  > |    function buy() public payable returns(bool) {
    |
    |        require(msg.sender != owner);//The founder cannot buy tokens
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(226)

[33mWarning[0m for UnhandledException in contract 'CBZToken':
    |        require(safeAdd(StatsTotal, tokens) <= totalSupply);//The amount of tokens cannot be greater than Total supply
    |        
  > |        wallet.transfer(msg.value);//Send received ETH to the fundraising purse
    |        
    |        //Crediting of tokens to the buyer
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(239)

[31mViolation[0m for UnrestrictedWrite in contract 'CBZToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'CBZToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'CBZToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'CBZToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'CBZToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'CBZToken':
    |        require(_amount > 0);//Number of tokens must be greater than 0
    |        require(safeAdd(StatsTotal, _amount) <= totalSupply);//The amount of tokens cannot be greater than Total supply
  > |        balances[_target] = safeAdd(balances[_target], _amount);
    |        StatsMinted = safeAdd(StatsMinted, _amount);//Update number of tokens minted
    |        StatsTotal = safeAdd(StatsTotal, _amount);//Update total number of tokens
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(200)

[31mViolation[0m for UnrestrictedWrite in contract 'CBZToken':
    |        require(safeAdd(StatsTotal, _amount) <= totalSupply);//The amount of tokens cannot be greater than Total supply
    |        balances[_target] = safeAdd(balances[_target], _amount);
  > |        StatsMinted = safeAdd(StatsMinted, _amount);//Update number of tokens minted
    |        StatsTotal = safeAdd(StatsTotal, _amount);//Update total number of tokens
    |        Transfer(0, this, _amount);
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(201)

[31mViolation[0m for UnrestrictedWrite in contract 'CBZToken':
    |        balances[_target] = safeAdd(balances[_target], _amount);
    |        StatsMinted = safeAdd(StatsMinted, _amount);//Update number of tokens minted
  > |        StatsTotal = safeAdd(StatsTotal, _amount);//Update total number of tokens
    |        Transfer(0, this, _amount);
    |        Transfer(this, _target, _amount);
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(202)

[31mViolation[0m for UnrestrictedWrite in contract 'CBZToken':
    |    function decreaseTokens(address _target, uint _amount) onlyMinter external returns (bool) {
    |        require(_amount > 0);//Number of tokens must be greater than 0
  > |        balances[_target] = safeSub(balances[_target], _amount);
    |        StatsMinted = safeSub(StatsMinted, _amount);//Update number of tokens minted
    |        StatsTotal = safeSub(StatsTotal, _amount);//Update total number of tokens
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'CBZToken':
    |        require(_amount > 0);//Number of tokens must be greater than 0
    |        balances[_target] = safeSub(balances[_target], _amount);
  > |        StatsMinted = safeSub(StatsMinted, _amount);//Update number of tokens minted
    |        StatsTotal = safeSub(StatsTotal, _amount);//Update total number of tokens
    |        Transfer(_target, 0, _amount);
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(213)

[31mViolation[0m for UnrestrictedWrite in contract 'CBZToken':
    |        balances[_target] = safeSub(balances[_target], _amount);
    |        StatsMinted = safeSub(StatsMinted, _amount);//Update number of tokens minted
  > |        StatsTotal = safeSub(StatsTotal, _amount);//Update total number of tokens
    |        Transfer(_target, 0, _amount);
    |        Burn(_target, _amount);
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(214)

[31mViolation[0m for UnrestrictedWrite in contract 'CBZToken':
    |        
    |        //Crediting of tokens to the buyer
  > |        balances[msg.sender] = safeAdd(balances[msg.sender], tokens);
    |        StatsSold = safeAdd(StatsSold, tokens);//Update number of tokens sold
    |        StatsTotal = safeAdd(StatsTotal, tokens);//Update total number of tokens
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(242)

[31mViolation[0m for UnrestrictedWrite in contract 'CBZToken':
    |        //Crediting of tokens to the buyer
    |        balances[msg.sender] = safeAdd(balances[msg.sender], tokens);
  > |        StatsSold = safeAdd(StatsSold, tokens);//Update number of tokens sold
    |        StatsTotal = safeAdd(StatsTotal, tokens);//Update total number of tokens
    |        Transfer(0, this, tokens);
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(243)

[31mViolation[0m for UnrestrictedWrite in contract 'CBZToken':
    |        balances[msg.sender] = safeAdd(balances[msg.sender], tokens);
    |        StatsSold = safeAdd(StatsSold, tokens);//Update number of tokens sold
  > |        StatsTotal = safeAdd(StatsTotal, tokens);//Update total number of tokens
    |        Transfer(0, this, tokens);
    |        Transfer(this, msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(244)

[31mViolation[0m for UnrestrictedWrite in contract 'CBZToken':
    |        Transfer(this, msg.sender, tokens);
    |        
  > |        StatsEthereumRaised = safeAdd(StatsEthereumRaised, msg.value);//Update total ETH collected
    |        
    |        //Record event logs to the blockchain
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'CBZToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'CBZToken':
    |    //Manually set the token price (in wei - https://etherconverter.online)
    |    function setTokenPrice(uint _tokenPrice) external onlyOwner {
  > |        sellPrice = _tokenPrice;
    |        PriceChanged("New price is ", _tokenPrice);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'CBZToken':
    |    //Allow or prohibit token transfers
    |    function setTransferAllowance(bool _allowance) external onlyOwner {
  > |        TransferAllowed = _allowance;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'CBZToken':
    |    //Temporarily suspend token sale
    |    function eventPause(bool _pause) external onlyOwner {
  > |        CrowdsalePaused = _pause;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'CBZToken':
    |    // Allow `_target` make token tranfers
    |    function allowTransfer(address _target, bool _allow) external onlyOwner {
  > |        allowedTransfer[_target] = _allow;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'CBZToken':
    |    //Change owner
    |    function changeOwner(address _to) external onlyOwner() {
  > |        balances[_to] = balances[owner];
    |        balances[owner] = 0;
    |        owner = _to;
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'CBZToken':
    |    function changeOwner(address _to) external onlyOwner() {
    |        balances[_to] = balances[owner];
  > |        balances[owner] = 0;
    |        owner = _to;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'CBZToken':
    |        balances[_to] = balances[owner];
    |        balances[owner] = 0;
  > |        owner = _to;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'CBZToken':
    |    //Change minter
    |    function changeMinter(address _to) external onlyOwner() {
  > |        balances[_to] = balances[minter];
    |        balances[minter] = 0;
    |        minter = _to;
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'CBZToken':
    |    function changeMinter(address _to) external onlyOwner() {
    |        balances[_to] = balances[minter];
  > |        balances[minter] = 0;
    |        minter = _to;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'CBZToken':
    |        balances[_to] = balances[minter];
    |        balances[minter] = 0;
  > |        minter = _to;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'CBZToken':
    |    //Change wallet
    |    function changeWallet(address _to) external onlyOwner() {
  > |        balances[_to] = balances[wallet];
    |        balances[wallet] = 0;
    |        wallet = _to;
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'CBZToken':
    |    function changeWallet(address _to) external onlyOwner() {
    |        balances[_to] = balances[wallet];
  > |        balances[wallet] = 0;
    |        wallet = _to;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'CBZToken':
    |        balances[_to] = balances[wallet];
    |        balances[wallet] = 0;
  > |        wallet = _to;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(294)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |//Safe math
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(15)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, SafeMath {
    |
    |  /* Token supply got increased and a new owner received these tokens */
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _address) constant returns (uint balance) {
    |    return balances[_address];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool Yes) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x26f829dec49e91d2dfbf68dc2457356efe3685f1.sol(103)


