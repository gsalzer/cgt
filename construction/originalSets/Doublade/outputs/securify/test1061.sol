Processing contract: /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol:CommonCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol:MilkCoinToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol:MilkCoinTokenCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(75)

[31mViolation[0m for DAOConstantGas in contract 'CommonCrowdsale':
    |  function createTokens() public payable {
    |    require(now >= start && now < end() && invested < hardcap);
  > |    wallet.transfer(msg.value);
    |    invested = invested.add(msg.value);
    |    uint tokens = price.mul(msg.value).div(DIVIDER);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(537)

[31mViolation[0m for TODReceiver in contract 'CommonCrowdsale':
    |  function createTokens() public payable {
    |    require(now >= start && now < end() && invested < hardcap);
  > |    wallet.transfer(msg.value);
    |    invested = invested.add(msg.value);
    |    uint tokens = price.mul(msg.value).div(DIVIDER);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(537)

[33mWarning[0m for UnhandledException in contract 'CommonCrowdsale':
    |  function createTokensManually(address to, uint amount) public onlyOwner {
    |    require(now >= start && now < end());
  > |    token.mint(to, amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(532)

[33mWarning[0m for UnhandledException in contract 'CommonCrowdsale':
    |  function createTokens() public payable {
    |    require(now >= start && now < end() && invested < hardcap);
  > |    wallet.transfer(msg.value);
    |    invested = invested.add(msg.value);
    |    uint tokens = price.mul(msg.value).div(DIVIDER);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(537)

[33mWarning[0m for UnhandledException in contract 'CommonCrowdsale':
    |      tokens = tokens.add(tokens.mul(bonusPercent).div(PERCENT_RATE));
    |    }
  > |    token.mint(msg.sender, tokens);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(544)

[33mWarning[0m for UnhandledException in contract 'CommonCrowdsale':
    |
    |  function finishMinting() public onlyOwner {
  > |    token.finishMinting(invested);
    |    token.transferOwnership(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(548)

[33mWarning[0m for UnhandledException in contract 'CommonCrowdsale':
    |  function finishMinting() public onlyOwner {
    |    token.finishMinting(invested);
  > |    token.transferOwnership(owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(549)

[33mWarning[0m for UnhandledException in contract 'CommonCrowdsale':
    |  function retrieveTokens(address anotherToken) public onlyOwner {
    |    ERC20 alienToken = ERC20(anotherToken);
  > |    alienToken.transfer(wallet, alienToken.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(558)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CommonCrowdsale':
    |  function createTokensManually(address to, uint amount) public onlyOwner {
    |    require(now >= start && now < end());
  > |    token.mint(to, amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(532)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CommonCrowdsale':
    |      tokens = tokens.add(tokens.mul(bonusPercent).div(PERCENT_RATE));
    |    }
  > |    token.mint(msg.sender, tokens);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(544)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CommonCrowdsale':
    |
    |  function finishMinting() public onlyOwner {
  > |    token.finishMinting(invested);
    |    token.transferOwnership(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(548)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CommonCrowdsale':
    |  function finishMinting() public onlyOwner {
    |    token.finishMinting(invested);
  > |    token.transferOwnership(owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(549)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CommonCrowdsale':
    |  function retrieveTokens(address anotherToken) public onlyOwner {
    |    ERC20 alienToken = ERC20(anotherToken);
  > |    alienToken.transfer(wallet, alienToken.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(558)

[31mViolation[0m for UnrestrictedWrite in contract 'CommonCrowdsale':
    |    require(now >= start && now < end() && invested < hardcap);
    |    wallet.transfer(msg.value);
  > |    invested = invested.add(msg.value);
    |    uint tokens = price.mul(msg.value).div(DIVIDER);
    |    uint bonusPercent = getMilestoneBonus();    
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(538)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonCrowdsale':
    |
    |/**
  > | * @title ERC20Basic
    | * @dev Simpler version of ERC20 interface
    | * @dev see https://github.com/ethereum/EIPs/issues/179
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonCrowdsale':
    |
    |  function setHardcap(uint newHardcap) public onlyOwner { 
  > |    hardcap = newHardcap;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonCrowdsale':
    | 
    |  function setStart(uint newStart) public onlyOwner { 
  > |    start = newStart;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonCrowdsale':
    |
    |  function setWallet(address newWallet) public onlyOwner { 
  > |    wallet = newWallet;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonCrowdsale':
    |
    |  function setPrice(uint newPrice) public onlyOwner {
  > |    price = newPrice;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(495)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonCrowdsale':
    |
    |  function setMinInvestedLimit(uint newMinInvestedLimit) public onlyOwner {
  > |    minInvestedLimit = newMinInvestedLimit;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonCrowdsale':
    |
    |  function addMilestone(uint limit, uint bonus) public onlyOwner {
  > |    milestones.push(Milestone(limit, bonus));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(507)

[31mViolation[0m for DAOConstantGas in contract 'MilkCoinTokenCrowdsale':
    |  function createTokens() public payable {
    |    require(now >= start && now < end() && invested < hardcap);
  > |    wallet.transfer(msg.value);
    |    invested = invested.add(msg.value);
    |    uint tokens = price.mul(msg.value).div(DIVIDER);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(537)

[31mViolation[0m for TODReceiver in contract 'MilkCoinTokenCrowdsale':
    |  function createTokens() public payable {
    |    require(now >= start && now < end() && invested < hardcap);
  > |    wallet.transfer(msg.value);
    |    invested = invested.add(msg.value);
    |    uint tokens = price.mul(msg.value).div(DIVIDER);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(537)

[33mWarning[0m for UnhandledException in contract 'MilkCoinTokenCrowdsale':
    |  function createTokensManually(address to, uint amount) public onlyOwner {
    |    require(now >= start && now < end());
  > |    token.mint(to, amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(532)

[33mWarning[0m for UnhandledException in contract 'MilkCoinTokenCrowdsale':
    |  function createTokens() public payable {
    |    require(now >= start && now < end() && invested < hardcap);
  > |    wallet.transfer(msg.value);
    |    invested = invested.add(msg.value);
    |    uint tokens = price.mul(msg.value).div(DIVIDER);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(537)

[33mWarning[0m for UnhandledException in contract 'MilkCoinTokenCrowdsale':
    |      tokens = tokens.add(tokens.mul(bonusPercent).div(PERCENT_RATE));
    |    }
  > |    token.mint(msg.sender, tokens);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(544)

[33mWarning[0m for UnhandledException in contract 'MilkCoinTokenCrowdsale':
    |
    |  function finishMinting() public onlyOwner {
  > |    token.finishMinting(invested);
    |    token.transferOwnership(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(548)

[33mWarning[0m for UnhandledException in contract 'MilkCoinTokenCrowdsale':
    |  function finishMinting() public onlyOwner {
    |    token.finishMinting(invested);
  > |    token.transferOwnership(owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(549)

[33mWarning[0m for UnhandledException in contract 'MilkCoinTokenCrowdsale':
    |  function retrieveTokens(address anotherToken) public onlyOwner {
    |    ERC20 alienToken = ERC20(anotherToken);
  > |    alienToken.transfer(wallet, alienToken.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(558)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MilkCoinTokenCrowdsale':
    |  function createTokensManually(address to, uint amount) public onlyOwner {
    |    require(now >= start && now < end());
  > |    token.mint(to, amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(532)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MilkCoinTokenCrowdsale':
    |      tokens = tokens.add(tokens.mul(bonusPercent).div(PERCENT_RATE));
    |    }
  > |    token.mint(msg.sender, tokens);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(544)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MilkCoinTokenCrowdsale':
    |
    |  function finishMinting() public onlyOwner {
  > |    token.finishMinting(invested);
    |    token.transferOwnership(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(548)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MilkCoinTokenCrowdsale':
    |  function finishMinting() public onlyOwner {
    |    token.finishMinting(invested);
  > |    token.transferOwnership(owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(549)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MilkCoinTokenCrowdsale':
    |  function retrieveTokens(address anotherToken) public onlyOwner {
    |    ERC20 alienToken = ERC20(anotherToken);
  > |    alienToken.transfer(wallet, alienToken.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(558)

[31mViolation[0m for UnrestrictedWrite in contract 'MilkCoinTokenCrowdsale':
    |    require(now >= start && now < end() && invested < hardcap);
    |    wallet.transfer(msg.value);
  > |    invested = invested.add(msg.value);
    |    uint tokens = price.mul(msg.value).div(DIVIDER);
    |    uint bonusPercent = getMilestoneBonus();    
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(538)

[33mWarning[0m for UnrestrictedWrite in contract 'MilkCoinTokenCrowdsale':
    |
    |/**
  > | * @title ERC20Basic
    | * @dev Simpler version of ERC20 interface
    | * @dev see https://github.com/ethereum/EIPs/issues/179
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'MilkCoinTokenCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'MilkCoinTokenCrowdsale':
    |
    |  function setHardcap(uint newHardcap) public onlyOwner { 
  > |    hardcap = newHardcap;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'MilkCoinTokenCrowdsale':
    | 
    |  function setStart(uint newStart) public onlyOwner { 
  > |    start = newStart;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'MilkCoinTokenCrowdsale':
    |
    |  function setWallet(address newWallet) public onlyOwner { 
  > |    wallet = newWallet;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'MilkCoinTokenCrowdsale':
    |
    |  function setPrice(uint newPrice) public onlyOwner {
  > |    price = newPrice;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(495)

[33mWarning[0m for UnrestrictedWrite in contract 'MilkCoinTokenCrowdsale':
    |
    |  function setMinInvestedLimit(uint newMinInvestedLimit) public onlyOwner {
  > |    minInvestedLimit = newMinInvestedLimit;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'MilkCoinTokenCrowdsale':
    |
    |  function addMilestone(uint limit, uint bonus) public onlyOwner {
  > |    milestones.push(Milestone(limit, bonus));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(507)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(257)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(214)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(30)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x4341852389bd149920cae3540dd88031ade8d0e6.sol(165)


