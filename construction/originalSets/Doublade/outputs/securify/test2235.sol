Processing contract: /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol:WEECoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol:WeeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |}
    |
  > |contract ERC20Token {
    |    function totalSupply() constant returns (uint256 supply) {}
    |    function balanceOf(address _owner) constant returns (uint256 balance) {}
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(17)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is ERC20Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |	uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(58)

[33mWarning[0m for LockedEther in contract 'WEECoin':
    |
    |
  > |contract WEECoin is StandardToken, WeeMath {
    |
    |    string public constant name = "WEE Token";
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'WEECoin':
    |contract StandardToken is ERC20Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'WEECoin':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'WEECoin':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'WEECoin':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'WEECoin':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |contract WeeMath {
    |
  > |    function subtractWee(uint256 x, uint256 y) internal returns(uint256) {
    |      assert(x >= y);
    |      uint256 z = x - y;
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    }
    |
  > |    function multWee(uint256 x, uint256 y) internal returns(uint256) {
    |      uint256 z = x * y;
    |      assert((x == 0)||(z/x == y));
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |	uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |contract WEECoin is StandardToken, WeeMath {
    |
  > |    string public constant name = "WEE Token";
    |    string public constant symbol = "WEE";
    |    uint256 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |
    |    string public constant name = "WEE Token";
  > |    string public constant symbol = "WEE";
    |    uint256 public constant decimals = 18;
    |    string public version = "1.0";
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    string public constant name = "WEE Token";
    |    string public constant symbol = "WEE";
  > |    uint256 public constant decimals = 18;
    |    string public version = "1.0";
    |	
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    string public constant symbol = "WEE";
    |    uint256 public constant decimals = 18;
  > |    string public version = "1.0";
    |	
    |    address public WEEFundWallet;      
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    string public version = "1.0";
    |	
  > |    address public WEEFundWallet;      
    |    address public account1Address;      
    |    address public account2Address;
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |	
    |    address public WEEFundWallet;      
  > |    address public account1Address;      
    |    address public account2Address;
    |    address public account3Address;
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    address public WEEFundWallet;      
    |    address public account1Address;      
  > |    address public account2Address;
    |    address public account3Address;
    |    
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    address public account1Address;      
    |    address public account2Address;
  > |    address public account3Address;
    |    
    |    bool public isFinalized;
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    address public account3Address;
    |    
  > |    bool public isFinalized;
    |    bool public isPreSale;    
    |    bool public isMainSale;
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    
    |    bool public isFinalized;
  > |    bool public isPreSale;    
    |    bool public isMainSale;
    |    uint public preSalePeriod;    
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    bool public isFinalized;
    |    bool public isPreSale;    
  > |    bool public isMainSale;
    |    uint public preSalePeriod;    
    |    uint256 public weeOneEthCanBuy = 0; 	
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    bool public isPreSale;    
    |    bool public isMainSale;
  > |    uint public preSalePeriod;    
    |    uint256 public weeOneEthCanBuy = 0; 	
    |    uint256 public constant tokenSaleCap =  500 * (10**6) * 10**decimals;
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    bool public isMainSale;
    |    uint public preSalePeriod;    
  > |    uint256 public weeOneEthCanBuy = 0; 	
    |    uint256 public constant tokenSaleCap =  500 * (10**6) * 10**decimals;
    |    uint256 public constant tokenPreSaleCap = 150 * (10**6) * 10**decimals; 
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    uint public preSalePeriod;    
    |    uint256 public weeOneEthCanBuy = 0; 	
  > |    uint256 public constant tokenSaleCap =  500 * (10**6) * 10**decimals;
    |    uint256 public constant tokenPreSaleCap = 150 * (10**6) * 10**decimals; 
    |	uint256 public constant tokensForFinalize =  150 * (10**6) * 10**decimals;
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    uint256 public weeOneEthCanBuy = 0; 	
    |    uint256 public constant tokenSaleCap =  500 * (10**6) * 10**decimals;
  > |    uint256 public constant tokenPreSaleCap = 150 * (10**6) * 10**decimals; 
    |	uint256 public constant tokensForFinalize =  150 * (10**6) * 10**decimals;
    |	uint256 public totalEthInWei;  
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    uint256 public constant tokenSaleCap =  500 * (10**6) * 10**decimals;
    |    uint256 public constant tokenPreSaleCap = 150 * (10**6) * 10**decimals; 
  > |	uint256 public constant tokensForFinalize =  150 * (10**6) * 10**decimals;
    |	uint256 public totalEthInWei;  
    |	
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    uint256 public constant tokenPreSaleCap = 150 * (10**6) * 10**decimals; 
    |	uint256 public constant tokensForFinalize =  150 * (10**6) * 10**decimals;
  > |	uint256 public totalEthInWei;  
    |	
    |    event LogWEE(address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    }
    |
  > |    function finalize() external {
    |      if( (isFinalized) || (msg.sender != WEEFundWallet) ) throw;
    |              
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'WEECoin':
    |    }
    |	
  > |    function switchStage() external {
    |      if ( (isMainSale) || (msg.sender != WEEFundWallet) ) throw;
    |      	  
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'WEECoin':
    |      if( (isFinalized) || (msg.sender != WEEFundWallet) ) throw;
    |              
  > |      balances[account1Address] += tokensForFinalize;
    |	  LogWEE(account1Address, tokensForFinalize);
    |	  
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'WEECoin':
    |	  LogWEE(account1Address, tokensForFinalize);
    |	  
  > |      balances[account2Address] += tokensForFinalize;
    |      LogWEE(account2Address, tokensForFinalize);
    |     
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'WEECoin':
    |      LogWEE(account2Address, tokensForFinalize);
    |     
  > |	  balances[account3Address] += tokensForFinalize;
    |	  LogWEE(account3Address, tokensForFinalize);
    |	  
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'WEECoin':
    |	  LogWEE(account3Address, tokensForFinalize);
    |	  
  > |	  balances[WEEFundWallet] -= (tokensForFinalize * 3);
    |	  
    |      isFinalized = true;  
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'WEECoin':
    |	  balances[WEEFundWallet] -= (tokensForFinalize * 3);
    |	  
  > |      isFinalized = true;  
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'WEECoin':
    |      	  
    |      if (!isPreSale){
  > |        isPreSale = true;
    |        weeOneEthCanBuy = 20000;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(156)

[31mViolation[0m for UnrestrictedWrite in contract 'WEECoin':
    |      if (!isPreSale){
    |        isPreSale = true;
  > |        weeOneEthCanBuy = 20000;
    |      }
    |      else if (!isMainSale){
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(157)

[31mViolation[0m for UnrestrictedWrite in contract 'WEECoin':
    |      }
    |      else if (!isMainSale){
  > |        isMainSale = true;
    |		isPreSale = false;
    |        weeOneEthCanBuy = 10000;       
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(160)

[31mViolation[0m for UnrestrictedWrite in contract 'WEECoin':
    |      else if (!isMainSale){
    |        isMainSale = true;
  > |		isPreSale = false;
    |        weeOneEthCanBuy = 10000;       
    |      }
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'WEECoin':
    |        isMainSale = true;
    |		isPreSale = false;
  > |        weeOneEthCanBuy = 10000;       
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'WEECoin':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'WEECoin':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'WEECoin':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(58)

[33mWarning[0m for LockedEther in contract 'WeeMath':
  > |contract WeeMath {
    |
    |    function subtractWee(uint256 x, uint256 y) internal returns(uint256) {
  at /home/jiaming/mavs_srcs/contract@0x911953208022030ad13074d2cb7c14fba4bee80a.sol(1)


