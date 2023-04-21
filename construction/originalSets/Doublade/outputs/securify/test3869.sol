Processing contract: /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol:BaseToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol:FinalizableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol:TokenCappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol:ZitKOINCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BaseToken':
    |// File: contracts\token\BaseToken.sol
    |
  > |contract BaseToken is ERC20Interface {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    require(_spender != address(0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |   */
    |  function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(233)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(384)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * must be owner of the token in order to be able to mint it.
    | */
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(301)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    tokensSold = tokensSold.add(tokens);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(365)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(384)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    tokensSold = tokensSold.add(tokens);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(365)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(384)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |    tokensSold = tokensSold.add(tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    // update state
    |    weiRaised = weiRaised.add(weiAmount);
  > |    tokensSold = tokensSold.add(tokens);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(363)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is BaseToken, Ownable {
    |
    |  event Mint(address indexed to, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_spender != address(0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(282)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(38)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(49)

[33mWarning[0m for DAOConstantGas in contract 'ZitKOINCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(384)

[33mWarning[0m for LockedEther in contract 'ZitKOINCrowdsale':
    |// File: contracts\ZitKOINCrowdsale.sol
    |
  > |contract ZitKOINCrowdsale is TokenCappedCrowdsale, FinalizableCrowdsale {
    |  event RateChanged(uint256 newRate);
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(459)

[31mViolation[0m for TODReceiver in contract 'ZitKOINCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(384)

[33mWarning[0m for UnhandledException in contract 'ZitKOINCrowdsale':
    |    tokensSold = tokensSold.add(tokens);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(365)

[33mWarning[0m for UnhandledException in contract 'ZitKOINCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(384)

[33mWarning[0m for UnhandledException in contract 'ZitKOINCrowdsale':
    |
    |  function finalization() internal {
  > |    token.mint(TEAM_ADDRESS, TEAM_TOKENS);
    |    token.mint(FUTURE_ME_ADDRESS, FUTURE_ME_TOKENS);
    |    token.mint(ADVISORS_ADDRESS, ADVISORS_TOKENS);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(504)

[33mWarning[0m for UnhandledException in contract 'ZitKOINCrowdsale':
    |  function finalization() internal {
    |    token.mint(TEAM_ADDRESS, TEAM_TOKENS);
  > |    token.mint(FUTURE_ME_ADDRESS, FUTURE_ME_TOKENS);
    |    token.mint(ADVISORS_ADDRESS, ADVISORS_TOKENS);
    |    token.mint(AIRDROP_ADDRESS, AIRDROP_TOKENS);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(505)

[33mWarning[0m for UnhandledException in contract 'ZitKOINCrowdsale':
    |    token.mint(TEAM_ADDRESS, TEAM_TOKENS);
    |    token.mint(FUTURE_ME_ADDRESS, FUTURE_ME_TOKENS);
  > |    token.mint(ADVISORS_ADDRESS, ADVISORS_TOKENS);
    |    token.mint(AIRDROP_ADDRESS, AIRDROP_TOKENS);
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(506)

[33mWarning[0m for UnhandledException in contract 'ZitKOINCrowdsale':
    |    token.mint(FUTURE_ME_ADDRESS, FUTURE_ME_TOKENS);
    |    token.mint(ADVISORS_ADDRESS, ADVISORS_TOKENS);
  > |    token.mint(AIRDROP_ADDRESS, AIRDROP_TOKENS);
    |
    |    // finish minting
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(507)

[33mWarning[0m for UnhandledException in contract 'ZitKOINCrowdsale':
    |
    |    // finish minting
  > |    token.finishMinting();
    |    // release ownership back to owner
    |    token.transferOwnership(owner);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(510)

[33mWarning[0m for UnhandledException in contract 'ZitKOINCrowdsale':
    |    token.finishMinting();
    |    // release ownership back to owner
  > |    token.transferOwnership(owner);
    |    // finalize
    |    super.finalization();
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(512)

[33mWarning[0m for UnhandledException in contract 'ZitKOINCrowdsale':
    |  // @dev Recover any mistakenly sent ERC20 tokens to the Crowdsale address
    |  function recoverERC20Tokens(address _erc20, uint256 _amount) public onlyOwner {
  > |    ERC20Interface(_erc20).transfer(msg.sender, _amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(519)

[33mWarning[0m for UnhandledException in contract 'ZitKOINCrowdsale':
    |
    |  function releaseTokenOwnership() public onlyOwner {
  > |    token.transferOwnership(owner);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(523)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZitKOINCrowdsale':
    |    tokensSold = tokensSold.add(tokens);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(365)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZitKOINCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(384)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZitKOINCrowdsale':
    |
    |  function finalization() internal {
  > |    token.mint(TEAM_ADDRESS, TEAM_TOKENS);
    |    token.mint(FUTURE_ME_ADDRESS, FUTURE_ME_TOKENS);
    |    token.mint(ADVISORS_ADDRESS, ADVISORS_TOKENS);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(504)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZitKOINCrowdsale':
    |  function finalization() internal {
    |    token.mint(TEAM_ADDRESS, TEAM_TOKENS);
  > |    token.mint(FUTURE_ME_ADDRESS, FUTURE_ME_TOKENS);
    |    token.mint(ADVISORS_ADDRESS, ADVISORS_TOKENS);
    |    token.mint(AIRDROP_ADDRESS, AIRDROP_TOKENS);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(505)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZitKOINCrowdsale':
    |    token.mint(TEAM_ADDRESS, TEAM_TOKENS);
    |    token.mint(FUTURE_ME_ADDRESS, FUTURE_ME_TOKENS);
  > |    token.mint(ADVISORS_ADDRESS, ADVISORS_TOKENS);
    |    token.mint(AIRDROP_ADDRESS, AIRDROP_TOKENS);
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(506)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZitKOINCrowdsale':
    |    token.mint(FUTURE_ME_ADDRESS, FUTURE_ME_TOKENS);
    |    token.mint(ADVISORS_ADDRESS, ADVISORS_TOKENS);
  > |    token.mint(AIRDROP_ADDRESS, AIRDROP_TOKENS);
    |
    |    // finish minting
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(507)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZitKOINCrowdsale':
    |
    |    // finish minting
  > |    token.finishMinting();
    |    // release ownership back to owner
    |    token.transferOwnership(owner);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(510)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZitKOINCrowdsale':
    |    token.finishMinting();
    |    // release ownership back to owner
  > |    token.transferOwnership(owner);
    |    // finalize
    |    super.finalization();
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(512)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZitKOINCrowdsale':
    |  // @dev Recover any mistakenly sent ERC20 tokens to the Crowdsale address
    |  function recoverERC20Tokens(address _erc20, uint256 _amount) public onlyOwner {
  > |    ERC20Interface(_erc20).transfer(msg.sender, _amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(519)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZitKOINCrowdsale':
    |
    |  function releaseTokenOwnership() public onlyOwner {
  > |    token.transferOwnership(owner);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(523)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOINCrowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |    tokensSold = tokensSold.add(tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOINCrowdsale':
    |    // update state
    |    weiRaised = weiRaised.add(weiAmount);
  > |    tokensSold = tokensSold.add(tokens);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOINCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOINCrowdsale':
    |    Finalized();
    |
  > |    isFinalized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(416)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOINCrowdsale':
    |  function setCrowdsaleWallet(address _wallet) public onlyOwner {
    |    require(_wallet != address(0));
  > |    wallet = _wallet;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(495)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOINCrowdsale':
    |
    |  function setRate(uint256 _rate) public onlyOwner  {
  > |    rate = _rate;
    |    RateChanged(_rate);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xff4b417892f3ca1678a288cc6296a7094bf98f0b.sol(499)


