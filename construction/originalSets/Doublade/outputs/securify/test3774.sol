Processing contract: /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol:AllowanceCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol:CappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol:CarboneumCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol:IndividuallyCappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol:TimedCrowdsale
[33mWarning[0m for DAOConstantGas in contract 'CarboneumCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(230)

[33mWarning[0m for UnhandledException in contract 'CarboneumCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(230)

[33mWarning[0m for UnhandledException in contract 'CarboneumCrowdsale':
    |   */
    |  function remainingTokens() public view returns (uint256) {
  > |    return token.allowance(tokenWallet, this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(259)

[33mWarning[0m for UnhandledException in contract 'CarboneumCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transferFrom(tokenWallet, _beneficiary, _tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CarboneumCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(230)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CarboneumCrowdsale':
    |   */
    |  function remainingTokens() public view returns (uint256) {
  > |    return token.allowance(tokenWallet, this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(259)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CarboneumCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transferFrom(tokenWallet, _beneficiary, _tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(268)

[31mViolation[0m for UnrestrictedWrite in contract 'CarboneumCrowdsale':
    |  function setGroupCap(address[] _beneficiaries, uint256 _cap) external onlyOwner {
    |    for (uint256 i = 0; i < _beneficiaries.length; i++) {
  > |      caps[_beneficiaries[i]] = _cap;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'CarboneumCrowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'CarboneumCrowdsale':
    |  function _updatePurchasingState(address _beneficiary, uint256 _weiAmount) internal {
    |    super._updatePurchasingState(_beneficiary, _weiAmount);
  > |    contributions[_beneficiary] = contributions[_beneficiary].add(_weiAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(421)

[33mWarning[0m for UnrestrictedWrite in contract 'CarboneumCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'CarboneumCrowdsale':
    |   */
    |  function setUserCap(address _beneficiary, uint256 _cap) external onlyOwner {
  > |    caps[_beneficiary] = _cap;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(372)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(230)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | */
    |
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(93)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(196)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(230)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(156)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(319)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(320)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(349)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xf803646439b5af31382e9acf9bfe378f3d7d2e15.sol(9)


