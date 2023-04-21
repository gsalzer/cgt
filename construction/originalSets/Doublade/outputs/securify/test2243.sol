Processing contract: /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol:SilentNotaryTokenSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    | /// @title Ownable contract - base contract with an owner
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | /// @title Ownable contract - base contract with an owner
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(74)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    | /// @title SafeMath contract - math operations with safety checks
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal pure  returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(4)

[33mWarning[0m for DAOConstantGas in contract 'SilentNotaryTokenSale':
    |
    |    // Transfer the invested ETH to the multisig wallet;
  > |    ethMultisigWallet.transfer(weiAmount);
    |
    |    // Transfer the bought tokens to the ETH sender
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(227)

[33mWarning[0m for DAOConstantGas in contract 'SilentNotaryTokenSale':
    |    // Return change if any
    |    if (changeWei > 0) {
  > |      receiver.transfer(changeWei);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(235)

[33mWarning[0m for LockedEther in contract 'SilentNotaryTokenSale':
    |
    | /// @title SilentNotary token sale contract
  > |contract SilentNotaryTokenSale is Ownable, SafeMath {
    |
    |   /// State machine
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(80)

[31mViolation[0m for TODAmount in contract 'SilentNotaryTokenSale':
    |
    |    // Transfer the invested ETH to the multisig wallet;
  > |    ethMultisigWallet.transfer(weiAmount);
    |
    |    // Transfer the bought tokens to the ETH sender
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(227)

[31mViolation[0m for TODAmount in contract 'SilentNotaryTokenSale':
    |    // Return change if any
    |    if (changeWei > 0) {
  > |      receiver.transfer(changeWei);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(235)

[33mWarning[0m for TODReceiver in contract 'SilentNotaryTokenSale':
    |    // Return change if any
    |    if (changeWei > 0) {
  > |      receiver.transfer(changeWei);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(235)

[33mWarning[0m for UnhandledException in contract 'SilentNotaryTokenSale':
    |
    |    uint changeWei = 0;
  > |    var currentContractTokens = token.balanceOf(address(this));
    |    if (currentContractTokens < tokenAmount) {
    |      var changeTokenAmount = safeSub(tokenAmount, currentContractTokens);
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(207)

[33mWarning[0m for UnhandledException in contract 'SilentNotaryTokenSale':
    |
    |    // Transfer the invested ETH to the multisig wallet;
  > |    ethMultisigWallet.transfer(weiAmount);
    |
    |    // Transfer the bought tokens to the ETH sender
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(227)

[33mWarning[0m for UnhandledException in contract 'SilentNotaryTokenSale':
    |
    |    // Transfer the bought tokens to the ETH sender
  > |    var transferSuccess = token.transfer(receiver, tokenAmount);
    |    assert(transferSuccess);
    |
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(230)

[33mWarning[0m for UnhandledException in contract 'SilentNotaryTokenSale':
    |    // Return change if any
    |    if (changeWei > 0) {
  > |      receiver.transfer(changeWei);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(235)

[33mWarning[0m for UnhandledException in contract 'SilentNotaryTokenSale':
    |    if (now > startTime + duration && !prolongationPermitted)
    |      return Status.Finished;
  > |    if (token.balanceOf(address(this)) <= 0)
    |      return Status.TokenShortage;
    |    if (now > startTime + duration)
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(251)

[33mWarning[0m for UnhandledException in contract 'SilentNotaryTokenSale':
    |  /// @param value Amount of tokens to withdraw
    |  function withdrawTokens(uint value) public onlyOwner {
  > |    require(value <= token.balanceOf(address(this)));
    |    // Return the specified amount of tokens to team wallet
    |    token.transfer(tokenMultisigWallet, value);
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(263)

[33mWarning[0m for UnhandledException in contract 'SilentNotaryTokenSale':
    |    require(value <= token.balanceOf(address(this)));
    |    // Return the specified amount of tokens to team wallet
  > |    token.transfer(tokenMultisigWallet, value);
    |    Withdraw(value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(265)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SilentNotaryTokenSale':
    |
    |    uint changeWei = 0;
  > |    var currentContractTokens = token.balanceOf(address(this));
    |    if (currentContractTokens < tokenAmount) {
    |      var changeTokenAmount = safeSub(tokenAmount, currentContractTokens);
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SilentNotaryTokenSale':
    |
    |    // Transfer the bought tokens to the ETH sender
  > |    var transferSuccess = token.transfer(receiver, tokenAmount);
    |    assert(transferSuccess);
    |
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(230)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SilentNotaryTokenSale':
    |    if (now > startTime + duration && !prolongationPermitted)
    |      return Status.Finished;
  > |    if (token.balanceOf(address(this)) <= 0)
    |      return Status.TokenShortage;
    |    if (now > startTime + duration)
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(251)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SilentNotaryTokenSale':
    |  /// @param value Amount of tokens to withdraw
    |  function withdrawTokens(uint value) public onlyOwner {
  > |    require(value <= token.balanceOf(address(this)));
    |    // Return the specified amount of tokens to team wallet
    |    token.transfer(tokenMultisigWallet, value);
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(263)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SilentNotaryTokenSale':
    |    require(value <= token.balanceOf(address(this)));
    |    // Return the specified amount of tokens to team wallet
  > |    token.transfer(tokenMultisigWallet, value);
    |    Withdraw(value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'SilentNotaryTokenSale':
    |    }
    |    // Update investor-amount mappings
  > |    investedAmountOf[receiver] = safeAdd(investedAmountOf[receiver], weiAmount);
    |    tokenAmountOf[receiver] = safeAdd(tokenAmountOf[receiver], tokenAmount);
    |    // Update totals
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'SilentNotaryTokenSale':
    |    // Update investor-amount mappings
    |    investedAmountOf[receiver] = safeAdd(investedAmountOf[receiver], weiAmount);
  > |    tokenAmountOf[receiver] = safeAdd(tokenAmountOf[receiver], tokenAmount);
    |    // Update totals
    |    weiRaisedAmount = safeAdd(weiRaisedAmount, weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'SilentNotaryTokenSale':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'SilentNotaryTokenSale':
    |    require(newTokenPrice > 0);
    |
  > |    tokenPrice = newTokenPrice;
    |    TokenPriceChanged(newTokenPrice);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'SilentNotaryTokenSale':
    |  function prolong() public onlyOwner {
    |    require(!prolongationPermitted && prolongedDuration > 0);
  > |    prolongationPermitted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'SilentNotaryTokenSale':
    |  /// @dev Called by the owner on excess, triggers stopped state
    |  function stopSale() public onlyOwner {
  > |    stopped = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'SilentNotaryTokenSale':
    |  function resumeSale() public onlyOwner {
    |    require(stopped);
  > |    stopped = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x919ae7c15a37830f49d93375628d495e5ba07be7.sol(292)


