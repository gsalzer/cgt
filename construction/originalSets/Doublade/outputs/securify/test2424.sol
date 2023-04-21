Processing contract: /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol:AllowanceCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol:CappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol:OSNPresaleCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol:TimedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol:WhitelistedCrowdsale
[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(266)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * behavior.
    | */
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(124)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(232)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(232)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(187)

[33mWarning[0m for DAOConstantGas in contract 'OSNPresaleCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(266)

[33mWarning[0m for UnhandledException in contract 'OSNPresaleCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(266)

[33mWarning[0m for UnhandledException in contract 'OSNPresaleCrowdsale':
    |   */
    |  function remainingTokens() public view returns (uint256) {
  > |    return token.allowance(tokenWallet, this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(294)

[33mWarning[0m for UnhandledException in contract 'OSNPresaleCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transferFrom(tokenWallet, _beneficiary, _tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(303)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OSNPresaleCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OSNPresaleCrowdsale':
    |   */
    |  function remainingTokens() public view returns (uint256) {
  > |    return token.allowance(tokenWallet, this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OSNPresaleCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transferFrom(tokenWallet, _beneficiary, _tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(303)

[31mViolation[0m for UnrestrictedWrite in contract 'OSNPresaleCrowdsale':
    |  function addManyToWhitelist(address[] _beneficiaries) external onlyOwner {
    |    for (uint256 i = 0; i < _beneficiaries.length; i++) {
  > |      whitelist[_beneficiaries[i]] = true;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(433)

[33mWarning[0m for UnrestrictedWrite in contract 'OSNPresaleCrowdsale':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'OSNPresaleCrowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'OSNPresaleCrowdsale':
    |   */
    |  function addToWhitelist(address _beneficiary) external onlyOwner {
  > |    whitelist[_beneficiary] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(424)

[33mWarning[0m for UnrestrictedWrite in contract 'OSNPresaleCrowdsale':
    |   */
    |  function removeFromWhitelist(address _beneficiary) external onlyOwner {
  > |    whitelist[_beneficiary] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(442)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(39)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x9d94d1932a62185d0ac8e7f8c22d0eaa802f32e1.sol(45)


