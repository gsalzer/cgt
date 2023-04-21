Processing contract: /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol:TokenVesting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable
    |{
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable
    |{
  > |  address public owner;
    |
    |  event OwnershipRenounced(address indexed previousOwner);
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(100)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |  function safeTransfer(
    |    ERC20 _token,
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(149)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath
    |{
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(7)

[33mWarning[0m for LockedEther in contract 'TokenVesting':
    | * owner.
    | */
  > |contract TokenVesting is Ownable {
    |  using SafeMath for uint256;
    |  using SafeERC20 for ERC20;
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(189)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |    internal
    |  {
  > |    _token.transfer(_to, _value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(157)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |    require(!revoked[_token]);
    |
  > |    uint256 balance = _token.balanceOf(address(this));
    |
    |    uint256 unreleased = releasableAmount(_token);
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(262)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |   */
    |  function vestedAmount(ERC20 _token) public view returns (uint256) {
  > |    uint256 currentBalance = _token.balanceOf(this);
    |    uint256 totalBalance = currentBalance.add(released[_token]);
    |
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(287)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |    internal
    |  {
  > |    _token.transfer(_to, _value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(157)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |    require(!revoked[_token]);
    |
  > |    uint256 balance = _token.balanceOf(address(this));
    |
    |    uint256 unreleased = releasableAmount(_token);
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(262)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |   */
    |  function vestedAmount(ERC20 _token) public view returns (uint256) {
  > |    uint256 currentBalance = _token.balanceOf(this);
    |    uint256 totalBalance = currentBalance.add(released[_token]);
    |
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |    require(unreleased > 0);
    |
  > |    released[_token] = unreleased.add(released[_token]);
    |
    |    _token.safeTransfer(beneficiary, unreleased);
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |    uint256 refund = balance.sub(unreleased);
    |
  > |    revoked[_token] = true;
    |
    |    _token.safeTransfer(owner, refund);
  at /home/jiaming/mavs_srcs/contract@0xed577ceeb462f4df9200e1cd29b9fbbaef1d0eb8.sol(267)


