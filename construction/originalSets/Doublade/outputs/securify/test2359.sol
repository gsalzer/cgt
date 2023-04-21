Processing contract: /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol:JesusCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol:JesusCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol:TokenDestructible
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances. 
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(62)

[33mWarning[0m for LockedEther in contract 'JesusCoin':
    | */
    | 
  > |contract JesusCoin is StandardToken, Ownable, TokenDestructible {
    |
    |  string public name = "Jesus Coin";
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(311)

[33mWarning[0m for UnhandledException in contract 'JesusCoin':
    |    for (uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(295)

[33mWarning[0m for UnhandledException in contract 'JesusCoin':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(296)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JesusCoin':
    |    for (uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(295)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JesusCoin':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(337)

[33mWarning[0m for DAOConstantGas in contract 'JesusCrowdsale':
    |    token.mint(beneficiary, tokens);
    |
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(401)

[33mWarning[0m for LockedEther in contract 'JesusCrowdsale':
    | * as they arrive.
    | */
  > |contract JesusCrowdsale is Ownable, Pausable, TokenDestructible {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(352)

[33mWarning[0m for UnhandledException in contract 'JesusCrowdsale':
    |    for (uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(295)

[33mWarning[0m for UnhandledException in contract 'JesusCrowdsale':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(296)

[33mWarning[0m for UnhandledException in contract 'JesusCrowdsale':
    |
    |    uint256 tokens = weiAmount.mul(getRate()).div(10);
  > |    token.mint(beneficiary, tokens);
    |
    |    wallet.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(399)

[33mWarning[0m for UnhandledException in contract 'JesusCrowdsale':
    |    token.mint(beneficiary, tokens);
    |
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(401)

[33mWarning[0m for UnhandledException in contract 'JesusCrowdsale':
    |    // calculate token amount to be minted for bounty
    |    uint256 amount = weiRaised.div(100).mul(2); // 2% of all tokens
  > |    token.mint(bountyWallet, amount);
    |    
    |    bountyDistributed = true;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(410)

[33mWarning[0m for UnhandledException in contract 'JesusCrowdsale':
    |    require(block.timestamp >= END);
    |
  > |    return token.finishMinting();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(423)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JesusCrowdsale':
    |    for (uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(295)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JesusCrowdsale':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(296)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JesusCrowdsale':
    |
    |    uint256 tokens = weiAmount.mul(getRate()).div(10);
  > |    token.mint(beneficiary, tokens);
    |
    |    wallet.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(399)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JesusCrowdsale':
    |    token.mint(beneficiary, tokens);
    |
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(401)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JesusCrowdsale':
    |    // calculate token amount to be minted for bounty
    |    uint256 amount = weiRaised.div(100).mul(2); // 2% of all tokens
  > |    token.mint(bountyWallet, amount);
    |    
    |    bountyDistributed = true;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(410)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JesusCrowdsale':
    |    require(block.timestamp >= END);
    |
  > |    return token.finishMinting();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(423)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCrowdsale':
    |    token.mint(bountyWallet, amount);
    |    
  > |    bountyDistributed = true;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(412)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCrowdsale':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCrowdsale':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCrowdsale':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCrowdsale':
    |
    |    uint256 weiAmount = msg.value;
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    uint256 tokens = weiAmount.mul(getRate()).div(10);
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(396)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(267)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(180)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(194)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused returns (bool) {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(215)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused returns (bool) {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(225)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(133)

[33mWarning[0m for LockedEther in contract 'TokenDestructible':
    | * listed tokens will be sent to the owner.
    | */
  > |contract TokenDestructible is Ownable {
    |
    |  function TokenDestructible() payable { } 
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(279)

[33mWarning[0m for UnhandledException in contract 'TokenDestructible':
    |    for (uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(295)

[33mWarning[0m for UnhandledException in contract 'TokenDestructible':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(296)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDestructible':
    |    for (uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(295)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDestructible':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDestructible':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x99da01230f505df9ef9987f8529d875e954b0a81.sol(180)


