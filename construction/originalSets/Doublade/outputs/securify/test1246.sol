Processing contract: /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol:BaseCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol:CappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol:Contributions
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol:Crowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol:ForkTokenSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol:OperatorRole
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol:ReentrancyGuard
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol:TimedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol:TokenRecover
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BaseCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    _wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(651)

[33mWarning[0m for LockedEther in contract 'BaseCrowdsale':
    | *  Base for any other Crowdsale contract
    | */
  > |contract BaseCrowdsale is TimedCrowdsale, CappedCrowdsale, TokenRecover {
    |
    |  // reference to Contributions contract
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(1109)

[33mWarning[0m for UnhandledException in contract 'BaseCrowdsale':
    |    internal
    |  {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(332)

[33mWarning[0m for UnhandledException in contract 'BaseCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    _wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(651)

[33mWarning[0m for UnhandledException in contract 'BaseCrowdsale':
    |    onlyOwner
    |  {
  > |    IERC20(tokenAddress).transfer(owner(), tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(888)

[33mWarning[0m for UnhandledException in contract 'BaseCrowdsale':
    |  {
    |    super._updatePurchasingState(beneficiary, weiAmount);
  > |    _contributions.addBalance(
    |      beneficiary,
    |      weiAmount,
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(1213)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseCrowdsale':
    |    internal
    |  {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(332)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    _wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(651)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseCrowdsale':
    |    onlyOwner
    |  {
  > |    IERC20(tokenAddress).transfer(owner(), tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(888)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseCrowdsale':
    |  {
    |    super._updatePurchasingState(beneficiary, weiAmount);
  > |    _contributions.addBalance(
    |      beneficiary,
    |      weiAmount,
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(1213)

[31mViolation[0m for UnrestrictedWrite in contract 'BaseCrowdsale':
    |   */
    |  modifier nonReentrant() {
  > |    _guardCounter += 1;
    |    uint256 localCounter = _guardCounter;
    |    _;
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseCrowdsale':
    |
    |    // update state
  > |    _weiRaised = _weiRaised.add(weiAmount);
    |
    |    _processPurchase(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(540)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseCrowdsale':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(845)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseCrowdsale':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(863)

[33mWarning[0m for LockedEther in contract 'Contributions':
    | * @dev Utility contract where to save any information about Crowdsale contributions
    | */
  > |contract Contributions is OperatorRole, TokenRecover {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(986)

[33mWarning[0m for UnhandledException in contract 'Contributions':
    |    onlyOwner
    |  {
  > |    IERC20(tokenAddress).transfer(owner(), tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(888)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Contributions':
    |    onlyOwner
    |  {
  > |    IERC20(tokenAddress).transfer(owner(), tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(888)

[33mWarning[0m for UnrestrictedWrite in contract 'Contributions':
    |pragma solidity ^0.4.25;
    |
  > |// File: openzeppelin-solidity/contracts/token/ERC20/IERC20.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Contributions':
    |    require(!has(role, account));
    |
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(910)

[33mWarning[0m for UnrestrictedWrite in contract 'Contributions':
    |    require(has(role, account));
    |
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(920)

[33mWarning[0m for UnrestrictedWrite in contract 'Contributions':
    |  {
    |    if (!_contributors[account].exists) {
  > |      _addresses.push(account);
    |      _contributors[account].exists = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(1081)

[33mWarning[0m for UnrestrictedWrite in contract 'Contributions':
    |    if (!_contributors[account].exists) {
    |      _addresses.push(account);
  > |      _contributors[account].exists = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(1082)

[33mWarning[0m for UnrestrictedWrite in contract 'Contributions':
    |    }
    |
  > |    _contributors[account].weiAmount = _contributors[account].weiAmount.add(weiAmount);
    |    _contributors[account].tokenAmount = _contributors[account].tokenAmount.add(tokenAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(1085)

[33mWarning[0m for UnrestrictedWrite in contract 'Contributions':
    |
    |    _contributors[account].weiAmount = _contributors[account].weiAmount.add(weiAmount);
  > |    _contributors[account].tokenAmount = _contributors[account].tokenAmount.add(tokenAmount);
    |
    |    _totalWeiRaised = _totalWeiRaised.add(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(1086)

[33mWarning[0m for UnrestrictedWrite in contract 'Contributions':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(845)

[33mWarning[0m for UnrestrictedWrite in contract 'Contributions':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(863)

[33mWarning[0m for UnrestrictedWrite in contract 'Contributions':
    |    _contributors[account].tokenAmount = _contributors[account].tokenAmount.add(tokenAmount);
    |
  > |    _totalWeiRaised = _totalWeiRaised.add(weiAmount);
    |    _totalSoldTokens = _totalSoldTokens.add(tokenAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(1088)

[33mWarning[0m for UnrestrictedWrite in contract 'Contributions':
    |
    |    _totalWeiRaised = _totalWeiRaised.add(weiAmount);
  > |    _totalSoldTokens = _totalSoldTokens.add(tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(1089)

[33mWarning[0m for LockedEther in contract 'ERC20':
    | * Originally based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract ERC20 is IERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(262)

[33mWarning[0m for DAOConstantGas in contract 'ForkTokenSale':
    |   */
    |  function _forwardFunds() internal {
  > |    _wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(651)

[33mWarning[0m for LockedEther in contract 'ForkTokenSale':
    | * @dev Extends from BaseCrowdsale with the ability to change rate
    | */
  > |contract ForkTokenSale is BaseCrowdsale {
    |
    |  uint256 private _currentRate;
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(1228)

[33mWarning[0m for UnhandledException in contract 'ForkTokenSale':
    |    internal
    |  {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(332)

[33mWarning[0m for UnhandledException in contract 'ForkTokenSale':
    |   */
    |  function _forwardFunds() internal {
  > |    _wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(651)

[33mWarning[0m for UnhandledException in contract 'ForkTokenSale':
    |    onlyOwner
    |  {
  > |    IERC20(tokenAddress).transfer(owner(), tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(888)

[33mWarning[0m for UnhandledException in contract 'ForkTokenSale':
    |  {
    |    super._updatePurchasingState(beneficiary, weiAmount);
  > |    _contributions.addBalance(
    |      beneficiary,
    |      weiAmount,
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(1213)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ForkTokenSale':
    |    internal
    |  {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(332)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ForkTokenSale':
    |   */
    |  function _forwardFunds() internal {
  > |    _wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(651)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ForkTokenSale':
    |    onlyOwner
    |  {
  > |    IERC20(tokenAddress).transfer(owner(), tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(888)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ForkTokenSale':
    |  {
    |    super._updatePurchasingState(beneficiary, weiAmount);
  > |    _contributions.addBalance(
    |      beneficiary,
    |      weiAmount,
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(1213)

[31mViolation[0m for UnrestrictedWrite in contract 'ForkTokenSale':
    |   */
    |  modifier nonReentrant() {
  > |    _guardCounter += 1;
    |    uint256 localCounter = _guardCounter;
    |    _;
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'ForkTokenSale':
    |
    |    // update state
  > |    _weiRaised = _weiRaised.add(weiAmount);
    |
    |    _processPurchase(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(540)

[33mWarning[0m for UnrestrictedWrite in contract 'ForkTokenSale':
    |    internal
    |  {
  > |    _soldTokens = _soldTokens.add(_getTokenAmount(weiAmount));
    |    super._updatePurchasingState(beneficiary, weiAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(1302)

[33mWarning[0m for UnrestrictedWrite in contract 'ForkTokenSale':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(845)

[33mWarning[0m for UnrestrictedWrite in contract 'ForkTokenSale':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(863)

[33mWarning[0m for UnrestrictedWrite in contract 'ForkTokenSale':
    |  function setRate(uint256 newRate) public onlyOwner {
    |    require(newRate > 0);
  > |    _currentRate = newRate;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(1265)

[33mWarning[0m for LockedEther in contract 'Roles':
    | * @dev Library for managing addresses assigned to a Role.
    | */
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(898)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(321)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(44)

[33mWarning[0m for LockedEther in contract 'TokenRecover':
    | * @dev Allow to recover any ERC20 sent into the contract for error
    | */
  > |contract TokenRecover is Ownable {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(874)

[31mViolation[0m for MissingInputValidation in contract 'TokenRecover':
    |   * @param tokenAmount Number of tokens to be sent
    |   */
  > |  function recoverERC20(
    |    address tokenAddress,
    |    uint256 tokenAmount
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(881)

[33mWarning[0m for MissingInputValidation in contract 'TokenRecover':
    |   * @return the address of the owner.
    |   */
  > |  function owner() public view returns(address) {
    |    return _owner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(818)

[33mWarning[0m for MissingInputValidation in contract 'TokenRecover':
    |   * @return true if `msg.sender` is the owner of the contract.
    |   */
  > |  function isOwner() public view returns(bool) {
    |    return msg.sender == _owner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(833)

[33mWarning[0m for MissingInputValidation in contract 'TokenRecover':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
    |    _owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(843)

[33mWarning[0m for MissingInputValidation in contract 'TokenRecover':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    _transferOwnership(newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(852)

[33mWarning[0m for MissingInputValidation in contract 'TokenRecover':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address newOwner) internal {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(860)

[33mWarning[0m for UnhandledException in contract 'TokenRecover':
    |    onlyOwner
    |  {
  > |    IERC20(tokenAddress).transfer(owner(), tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(888)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenRecover':
    |    onlyOwner
    |  {
  > |    IERC20(tokenAddress).transfer(owner(), tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(888)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenRecover':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(863)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRecover':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(845)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRecover':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ec0cb5c73a9ed73ea821806f2701b29e6e44f0d.sol(863)


