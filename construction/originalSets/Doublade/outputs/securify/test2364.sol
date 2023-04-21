Processing contract: /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol:FinalizableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol:STAB
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol:STACrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol:TimedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol:WhitelistedCrowdsale
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |   function addCrowdSale(uint256 _value) public {
    |       
  > |       crowdsaleDist_ =  crowdsaleDist_.add(_value);
    |       
    |   }
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |   if(balances[_to]>=_value)
    |   {
  > |     balances[_to] = balances[_to].sub(_value);
    |   }
    |    //emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(249)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | */
    |
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(513)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |  // The token being sold
  > |  STAB public token;
    |
    |  // Address where funds are collected
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(517)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |  // Address where funds are collected
  > |  address public wallet;
    |  // Address where Technical team are collected
    |  address public techWallet;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(520)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  address public wallet;
    |  // Address where Technical team are collected
  > |  address public techWallet;
    |
    |  // How many token units a buyer gets per wei
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(522)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |  // How many token units a buyer gets per wei
  > |  uint256 public startRate;
    |
    |  // Amount of wei raised
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(525)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |  // Amount of wei raised
  > |  uint256 public weiRaised;
    |  
    |  // STA token unit.
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(528)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  // Using same decimal value as ETH (makes ETH-STA conversion much easier).
    |  // This is the same as in STA token contract.
  > |  uint256 public constant TOKEN_UNIT = 10 ** 18;
    |  // Maximum number of tokens in circulation
    |  uint256 public constant MAX_TOKENS = 12*10**8*TOKEN_UNIT;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(533)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  uint256 public constant TOKEN_UNIT = 10 ** 18;
    |  // Maximum number of tokens in circulation
  > |  uint256 public constant MAX_TOKENS = 12*10**8*TOKEN_UNIT;
    |  //Technical team awards
    |  uint256 public constant TEC_TOKENS_NUMS = 5000000*TOKEN_UNIT;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(535)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  uint256 public constant MAX_TOKENS = 12*10**8*TOKEN_UNIT;
    |  //Technical team awards
  > |  uint256 public constant TEC_TOKENS_NUMS = 5000000*TOKEN_UNIT;
    |  //Airdrop candy
    |  uint256 public constant AIRDROP_TOKENS_NUMS = 30000000*TOKEN_UNIT;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(537)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  uint256 public constant TEC_TOKENS_NUMS = 5000000*TOKEN_UNIT;
    |  //Airdrop candy
  > |  uint256 public constant AIRDROP_TOKENS_NUMS = 30000000*TOKEN_UNIT;
    |  //Equipment sales reward
    |  uint256 public constant EQUIPMENT_REWARD_TOKENS_NUMS = 30000000*TOKEN_UNIT;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(539)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  uint256 public constant AIRDROP_TOKENS_NUMS = 30000000*TOKEN_UNIT;
    |  //Equipment sales reward
  > |  uint256 public constant EQUIPMENT_REWARD_TOKENS_NUMS = 30000000*TOKEN_UNIT;
    |  //CrowdSale reward
    |  uint256 public constant CROWDSALE_TOKENS_NUMS =67500000*TOKEN_UNIT;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(541)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  uint256 public constant EQUIPMENT_REWARD_TOKENS_NUMS = 30000000*TOKEN_UNIT;
    |  //CrowdSale reward
  > |  uint256 public constant CROWDSALE_TOKENS_NUMS =67500000*TOKEN_UNIT;
    |  //CrowdSale reward
    |  uint256 public constant CROWDSALE_REWARD_TOKENS_NUMS = 67500000*TOKEN_UNIT;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(543)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  uint256 public constant CROWDSALE_TOKENS_NUMS =67500000*TOKEN_UNIT;
    |  //CrowdSale reward
  > |  uint256 public constant CROWDSALE_REWARD_TOKENS_NUMS = 67500000*TOKEN_UNIT;
    |  
    |
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(545)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(401)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   function addCrowdSale(uint256 _value) public {
    |       
  > |       crowdsaleDist_ =  crowdsaleDist_.add(_value);
    |       
    |   }
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   if(balances[_to]>=_value)
    |   {
  > |     balances[_to] = balances[_to].sub(_value);
    |   }
    |    //emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    
  > |    mintNums_ = mintNums_.add(_amount);
    |    require(mintNums_<=totalSupply_);
    |    balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(421)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    mintNums_ = mintNums_.add(_amount);
    |    require(mintNums_<=totalSupply_);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(423)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(434)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(87)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(133)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(369)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   function addCrowdSale(uint256 _value) public {
    |       
  > |       crowdsaleDist_ =  crowdsaleDist_.add(_value);
    |       
    |   }
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   if(balances[_to]>=_value)
    |   {
  > |     balances[_to] = balances[_to].sub(_value);
    |   }
    |    //emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(133)

[33mWarning[0m for LockedEther in contract 'STAB':
    | * Based on references from OpenZeppelin: https://github.com/OpenZeppelin/zeppelin-solidity
    | */
  > |contract STAB is MintableToken, PausableToken {
    |    string public constant version = "1.0";
    |    string public constant name = "STACX Crypto Platform";
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(445)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |   function addCrowdSale(uint256 _value) public {
    |       
  > |       crowdsaleDist_ =  crowdsaleDist_.add(_value);
    |       
    |   }
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |   if(balances[_to]>=_value)
    |   {
  > |     balances[_to] = balances[_to].sub(_value);
    |   }
    |    //emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    
  > |    mintNums_ = mintNums_.add(_amount);
    |    require(mintNums_<=totalSupply_);
    |    balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(421)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |    mintNums_ = mintNums_.add(_amount);
    |    require(mintNums_<=totalSupply_);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(423)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |        require(newMaster != address(0));
    |        emit MintMasterTransferred(mintMaster, newMaster);
  > |        mintMaster = newMaster;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |    function mint(address _to, uint256 _amount) onlyMintMasterOrOwner canMint public returns (bool) {
    |        address oldOwner = owner;
  > |        owner = msg.sender;
    |        bool result = super.mint(_to, _amount);
    |        owner = oldOwner;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |        owner = msg.sender;
    |        bool result = super.mint(_to, _amount);
  > |        owner = oldOwner;
    |        return result;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(491)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   function addCrowdSale(uint256 _value) public {
    |       
  > |       crowdsaleDist_ =  crowdsaleDist_.add(_value);
    |       
    |   }
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   if(balances[_to]>=_value)
    |   {
  > |     balances[_to] = balances[_to].sub(_value);
    |   }
    |    //emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9a0bfb652f6829e0584783e8b84f40e6de365dd0.sol(355)


