Processing contract: /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol:ANWCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol:ANWTokenCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'ANWCrowdsale':
    |        
    |        require(token.transfer(msg.sender, tokensAmount));
  > |        multisig.transfer(msg.value);
    |        
    |        
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(293)

[33mWarning[0m for LockedEther in contract 'ANWCrowdsale':
    |
    |
  > |contract ANWCrowdsale is Ownable {
    |    using SafeMath for uint;
    |    
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(244)

[33mWarning[0m for TODAmount in contract 'ANWCrowdsale':
    |        
    |        require(token.transfer(msg.sender, tokensAmount));
  > |        multisig.transfer(msg.value);
    |        
    |        
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(293)

[33mWarning[0m for TODReceiver in contract 'ANWCrowdsale':
    |        
    |        require(token.transfer(msg.sender, tokensAmount));
  > |        multisig.transfer(msg.value);
    |        
    |        
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(293)

[33mWarning[0m for UnhandledException in contract 'ANWCrowdsale':
    |    function initMinting() onlyOwner returns (bool) {
    |        require(!ifInit);
  > |        require(token.mint(manager, tokenDec.mul(10000000)));
    |        require(token.mint(address(this), tokenDec.mul(10000000)));
    |        //token.finishMinting();
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(263)

[33mWarning[0m for UnhandledException in contract 'ANWCrowdsale':
    |        require(!ifInit);
    |        require(token.mint(manager, tokenDec.mul(10000000)));
  > |        require(token.mint(address(this), tokenDec.mul(10000000)));
    |        //token.finishMinting();
    |        token.transferOwnership(manager);
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(264)

[33mWarning[0m for UnhandledException in contract 'ANWCrowdsale':
    |        require(token.mint(address(this), tokenDec.mul(10000000)));
    |        //token.finishMinting();
  > |        token.transferOwnership(manager);
    |        transferOwnership(manager);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(266)

[33mWarning[0m for UnhandledException in contract 'ANWCrowdsale':
    |    
    |    function tokenBalance() constant returns (uint256) {
  > |        return token.balanceOf(address(this));
    |    }        
    |    
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(274)

[33mWarning[0m for UnhandledException in contract 'ANWCrowdsale':
    |    
    |    function transferToken(address _to, uint _value) onlyOwner returns (bool) {
  > |        return token.transfer(_to,  _value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(279)

[33mWarning[0m for UnhandledException in contract 'ANWCrowdsale':
    |        uint tokensAmount = msg.value.mul(tokenDec).div(tokenPrice);
    |        
  > |        require(token.transfer(msg.sender, tokensAmount));
    |        multisig.transfer(msg.value);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(292)

[33mWarning[0m for UnhandledException in contract 'ANWCrowdsale':
    |        
    |        require(token.transfer(msg.sender, tokensAmount));
  > |        multisig.transfer(msg.value);
    |        
    |        
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ANWCrowdsale':
    |    function initMinting() onlyOwner returns (bool) {
    |        require(!ifInit);
  > |        require(token.mint(manager, tokenDec.mul(10000000)));
    |        require(token.mint(address(this), tokenDec.mul(10000000)));
    |        //token.finishMinting();
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(263)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ANWCrowdsale':
    |        require(!ifInit);
    |        require(token.mint(manager, tokenDec.mul(10000000)));
  > |        require(token.mint(address(this), tokenDec.mul(10000000)));
    |        //token.finishMinting();
    |        token.transferOwnership(manager);
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(264)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ANWCrowdsale':
    |        require(token.mint(address(this), tokenDec.mul(10000000)));
    |        //token.finishMinting();
  > |        token.transferOwnership(manager);
    |        transferOwnership(manager);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ANWCrowdsale':
    |    
    |    function tokenBalance() constant returns (uint256) {
  > |        return token.balanceOf(address(this));
    |    }        
    |    
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(274)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ANWCrowdsale':
    |    
    |    function transferToken(address _to, uint _value) onlyOwner returns (bool) {
  > |        return token.transfer(_to,  _value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(279)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ANWCrowdsale':
    |        uint tokensAmount = msg.value.mul(tokenDec).div(tokenPrice);
    |        
  > |        require(token.transfer(msg.sender, tokensAmount));
    |        multisig.transfer(msg.value);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ANWCrowdsale':
    |        
    |        require(token.transfer(msg.sender, tokensAmount));
  > |        multisig.transfer(msg.value);
    |        
    |        
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'ANWCrowdsale':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'ANWCrowdsale':
    |        transferOwnership(manager);
    |        
  > |        ifInit = true;
    |        return true;
    |    } 
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(269)

[33mWarning[0m for LockedEther in contract 'ANWTokenCoin':
    |}
    |
  > |contract ANWTokenCoin is MintableToken {
    |    
    |    string public constant name = "Animal Welfare Token Contract";
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'ANWTokenCoin':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'ANWTokenCoin':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'ANWTokenCoin':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'ANWTokenCoin':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'ANWTokenCoin':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'ANWTokenCoin':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'ANWTokenCoin':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    //Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'ANWTokenCoin':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    //Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'ANWTokenCoin':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'ANWTokenCoin':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(224)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances. 
    | */
  > |contract BasicToken is ERC20Basic {
    |    
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(72)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |    
    |  event Mint(address indexed to, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    //Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    //Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(224)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(180)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(28)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb0d406cebdbc2973b3cce2afc43bbd60960d695b.sol(132)


