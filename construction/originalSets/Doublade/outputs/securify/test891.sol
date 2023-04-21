Processing contract: /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol:TokenVesting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(95)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(98)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(108)

[33mWarning[0m for LockedEther in contract 'TokenVesting':
    |// File: contracts/TokenVesting.sol
    |
  > |contract TokenVesting is Ownable {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(156)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |  function fundVesting(uint256 _totalTokens) public onlyOwner {
    |    require(totalTokens == 0, "Vesting already funded");
  > |    require(token.allowance(owner, address(this)) == _totalTokens);
    |    totalTokens = _totalTokens;
    |    token.transferFrom(owner, address(this), totalTokens);
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(203)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |    require(token.allowance(owner, address(this)) == _totalTokens);
    |    totalTokens = _totalTokens;
  > |    token.transferFrom(owner, address(this), totalTokens);
    |    emit VestingFunded(_totalTokens);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(205)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |      .sub(tokensClaimed);
    |
  > |    token.transfer(receiver, tokensToClaim);
    |    tokensClaimed = tokensClaimed.add(tokensToClaim);
    |
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(234)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |  */
    |  function killVesting() public onlyOwner {
  > |    token.transfer(owner, totalTokens.sub(tokensClaimed));
    |    tokensClaimed = totalTokens;
    |    emit VestingKilled();
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(245)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |  function fundVesting(uint256 _totalTokens) public onlyOwner {
    |    require(totalTokens == 0, "Vesting already funded");
  > |    require(token.allowance(owner, address(this)) == _totalTokens);
    |    totalTokens = _totalTokens;
    |    token.transferFrom(owner, address(this), totalTokens);
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |    require(token.allowance(owner, address(this)) == _totalTokens);
    |    totalTokens = _totalTokens;
  > |    token.transferFrom(owner, address(this), totalTokens);
    |    emit VestingFunded(_totalTokens);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(205)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |      .sub(tokensClaimed);
    |
  > |    token.transfer(receiver, tokensToClaim);
    |    tokensClaimed = tokensClaimed.add(tokensToClaim);
    |
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(234)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |  */
    |  function killVesting() public onlyOwner {
  > |    token.transfer(owner, totalTokens.sub(tokensClaimed));
    |    tokensClaimed = totalTokens;
    |    emit VestingKilled();
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |    require(totalTokens == 0, "Vesting already funded");
    |    require(token.allowance(owner, address(this)) == _totalTokens);
  > |    totalTokens = _totalTokens;
    |    token.transferFrom(owner, address(this), totalTokens);
    |    emit VestingFunded(_totalTokens);
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |  function changeReceiver(address newReceiver) public onlyOwner {
    |    require(newReceiver != address(0));
  > |    receiver = newReceiver;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |
    |    token.transfer(receiver, tokensToClaim);
  > |    tokensClaimed = tokensClaimed.add(tokensToClaim);
    |
    |    emit TokensClaimed(tokensToClaim);
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |  function killVesting() public onlyOwner {
    |    token.transfer(owner, totalTokens.sub(tokensClaimed));
  > |    tokensClaimed = totalTokens;
    |    emit VestingKilled();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x38e0e6995f503071fd6233694d0f0048a305ae46.sol(246)


