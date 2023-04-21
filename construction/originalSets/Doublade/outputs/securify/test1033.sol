Processing contract: /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol:PIONEER
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol:TheLiquidToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | Basic version of StandardToken, with no allowances. 
    | */
  > |contract BasicToken is ERC20Basic {
    |    
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    | 
    | function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(68)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    | 
    |   function createTokens() isUnderHardCap saleIsOn payable {
  > |     multisig.transfer(msg.value);
    |        uint tokens = rate.mul(msg.value).div(1 ether);
    |        uint bonusTokens = 0;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(273)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale is Ownable {
    |    
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(224)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    | 
    |   function createTokens() isUnderHardCap saleIsOn payable {
  > |     multisig.transfer(msg.value);
    |        uint tokens = rate.mul(msg.value).div(1 ether);
    |        uint bonusTokens = 0;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(273)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    | 
    |    function finishMinting() public onlyOwner {
  > |	uint issuedTokenSupply = token.totalSupply();
    |	uint restrictedTokens = issuedTokenSupply.mul(restrictedPercent).div(100 - restrictedPercent);
    |	token.mint(restricted, restrictedTokens);
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(266)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |	uint issuedTokenSupply = token.totalSupply();
    |	uint restrictedTokens = issuedTokenSupply.mul(restrictedPercent).div(100 - restrictedPercent);
  > |	token.mint(restricted, restrictedTokens);
    |        token.finishMinting();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(268)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |	uint restrictedTokens = issuedTokenSupply.mul(restrictedPercent).div(100 - restrictedPercent);
    |	token.mint(restricted, restrictedTokens);
  > |        token.finishMinting();
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(269)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    | 
    |   function createTokens() isUnderHardCap saleIsOn payable {
  > |     multisig.transfer(msg.value);
    |        uint tokens = rate.mul(msg.value).div(1 ether);
    |        uint bonusTokens = 0;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(273)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        }
    |        tokens += bonusTokens;
  > |        token.mint(msg.sender, tokens);
    |    }
    |  
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(286)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    | 
    |    function finishMinting() public onlyOwner {
  > |	uint issuedTokenSupply = token.totalSupply();
    |	uint restrictedTokens = issuedTokenSupply.mul(restrictedPercent).div(100 - restrictedPercent);
    |	token.mint(restricted, restrictedTokens);
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |	uint issuedTokenSupply = token.totalSupply();
    |	uint restrictedTokens = issuedTokenSupply.mul(restrictedPercent).div(100 - restrictedPercent);
  > |	token.mint(restricted, restrictedTokens);
    |        token.finishMinting();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |	uint restrictedTokens = issuedTokenSupply.mul(restrictedPercent).div(100 - restrictedPercent);
    |	token.mint(restricted, restrictedTokens);
  > |        token.finishMinting();
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        }
    |        tokens += bonusTokens;
  > |        token.mint(msg.sender, tokens);
    |    }
    |  
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(167)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    
  > |  address public owner;
    | 
    | 
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(167)

[33mWarning[0m for LockedEther in contract 'PIONEER':
    |}
    |
  > |contract PIONEER is TheLiquidToken {
    |  string public constant name = "PIONEER COIN CLASSIC";
    |  string public constant symbol = "PCC";
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'PIONEER':
    | 
    | function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'PIONEER':
    | function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'PIONEER':
    |    // require (_value <= _allowance);
    | 
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'PIONEER':
    | 
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'PIONEER':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'PIONEER':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    | 
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'PIONEER':
    | 
    | function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'PIONEER':
    | function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'PIONEER':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'PIONEER':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'PIONEER':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(167)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |  Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(29)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |  https://github.com/ethereum/EIPs/issues/20
    | */
  > |contract StandardToken is ERC20, BasicToken {
    | 
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    | 
    | function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    | 
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(124)

[33mWarning[0m for LockedEther in contract 'TheLiquidToken':
    |}
    | 
  > |contract TheLiquidToken is StandardToken, Ownable {
    |    // mint can be finished and token become fixed for forever
    |  event Mint(address indexed to, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    | 
    | function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    | function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    |    // require (_value <= _allowance);
    | 
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    | 
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    | 
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    | 
    | function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    | function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x414a609238afc34060d1d2d535b11371dc18071f.sol(167)


