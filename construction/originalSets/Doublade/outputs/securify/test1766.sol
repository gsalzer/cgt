Processing contract: /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol:SilentNotaryTokenStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    | /// @title Ownable contract - base contract with an owner
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | /// @title Ownable contract - base contract with an owner
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(18)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    | /// @title SafeMath contract - math operations with safety checks
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal pure  returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(24)

[33mWarning[0m for DAO in contract 'SilentNotaryTokenStorage':
    |  function transferTokens(uint tokenAmount) private {
    |    require(tokenAmount > 0);
  > |    var transferSuccess = token.transfer(teamWallet, tokenAmount);
    |    assert(transferSuccess);
    |    Unfrozen(tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(186)

[33mWarning[0m for LockedEther in contract 'SilentNotaryTokenStorage':
    |}
    |
  > |contract SilentNotaryTokenStorage is SafeMath, Ownable {
    |
    |  /// Information about frozen portion of tokens
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'SilentNotaryTokenStorage':
    | /// @title Ownable contract - base contract with an owner
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'SilentNotaryTokenStorage':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'SilentNotaryTokenStorage':
    | /// @title SafeMath contract - math operations with safety checks
    |contract SafeMath {
  > |  function safeMul(uint a, uint b) internal pure  returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'SilentNotaryTokenStorage':
    |  }
    |
  > |  function safeDiv(uint a, uint b) internal pure returns (uint) {
    |    assert(b > 0);
    |    uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'SilentNotaryTokenStorage':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal pure returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'SilentNotaryTokenStorage':
    |
    |  /// SilentNotary token contract
  > |  ERC20 public token;
    |
    |  /// All frozen portions of the contract token balance
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'SilentNotaryTokenStorage':
    |
    |  /// All frozen portions of the contract token balance
  > |  FrozenPortion[] public frozenPortions;
    |
    |  /// Team wallet to withdraw unfrozen tokens
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'SilentNotaryTokenStorage':
    |
    |  /// Team wallet to withdraw unfrozen tokens
  > |  address public teamWallet;
    |
    |  /// Deployment time of this contract, which is also the start point to count freeze periods
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'SilentNotaryTokenStorage':
    |
    |  /// Deployment time of this contract, which is also the start point to count freeze periods
  > |  uint public deployedTime;
    |
    |  /// Is current token amount fixed (must be to unfreeze)
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'SilentNotaryTokenStorage':
    |
    |  /// Is current token amount fixed (must be to unfreeze)
  > |  bool public amountFixed;
    |
    |  /// @dev Constructor
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'SilentNotaryTokenStorage':
    |
    |  /// @dev Unfreeze currently available amount of tokens
  > |  function unfreeze() public onlyOwner {
    |    require(amountFixed);
    |
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'SilentNotaryTokenStorage':
    |
    |  /// @dev Fix current token amount (calculate absolute values of every portion)
  > |  function fixAmount() public onlyOwner {
    |    require(!amountFixed);
    |    amountFixed = true;
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'SilentNotaryTokenStorage':
    |
    |  /// @dev Withdraw remaining tokens after all freeze periods are over (in case there were additional token transfers)
  > |  function withdrawRemainder() public onlyOwner {
    |    for (uint i = 0; i < frozenPortions.length; i++) {
    |      if (!frozenPortions[i].isUnfrozen)
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'SilentNotaryTokenStorage':
    |  }
    |
  > |  function transferTokens(uint tokenAmount) private {
    |    require(tokenAmount > 0);
    |    var transferSuccess = token.transfer(teamWallet, tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(184)

[33mWarning[0m for UnhandledException in contract 'SilentNotaryTokenStorage':
    |    amountFixed = true;
    |
  > |    uint currentBalance = token.balanceOf(this);
    |    for (uint i = 0; i < frozenPortions.length; i++) {
    |      var portion = frozenPortions[i];
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(168)

[33mWarning[0m for UnhandledException in contract 'SilentNotaryTokenStorage':
    |        revert();
    |    }
  > |    transferTokens(token.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(181)

[33mWarning[0m for UnhandledException in contract 'SilentNotaryTokenStorage':
    |  function transferTokens(uint tokenAmount) private {
    |    require(tokenAmount > 0);
  > |    var transferSuccess = token.transfer(teamWallet, tokenAmount);
    |    assert(transferSuccess);
    |    Unfrozen(tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(186)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SilentNotaryTokenStorage':
    |    amountFixed = true;
    |
  > |    uint currentBalance = token.balanceOf(this);
    |    for (uint i = 0; i < frozenPortions.length; i++) {
    |      var portion = frozenPortions[i];
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(168)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SilentNotaryTokenStorage':
    |        revert();
    |    }
  > |    transferTokens(token.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(181)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SilentNotaryTokenStorage':
    |  function transferTokens(uint tokenAmount) private {
    |    require(tokenAmount > 0);
  > |    var transferSuccess = token.transfer(teamWallet, tokenAmount);
    |    assert(transferSuccess);
    |    Unfrozen(tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(186)

[31mViolation[0m for UnrestrictedWrite in contract 'SilentNotaryTokenStorage':
    |      if (portion.unfreezeTime < now) {
    |        unfrozenTokens = safeAdd(unfrozenTokens, portion.portionAmount);
  > |        portion.isUnfrozen = true;
    |      }
    |      else
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(155)

[31mViolation[0m for UnrestrictedWrite in contract 'SilentNotaryTokenStorage':
    |    for (uint i = 0; i < frozenPortions.length; i++) {
    |      var portion = frozenPortions[i];
  > |      portion.portionAmount = safeDiv(safeMul(currentBalance, portion.portionPercent), 100);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'SilentNotaryTokenStorage':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'SilentNotaryTokenStorage':
    |  function fixAmount() public onlyOwner {
    |    require(!amountFixed);
  > |    amountFixed = true;
    |
    |    uint currentBalance = token.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0x7052ad9bbc671804616e2280059fb3113dcd735b.sol(166)


