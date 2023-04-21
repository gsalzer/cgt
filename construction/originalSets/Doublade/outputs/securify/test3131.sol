Processing contract: /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol:SimpleVesting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol:TokenVesting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(31)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
    |    assert(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(61)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(77)

[33mWarning[0m for LockedEther in contract 'SimpleVesting':
    |  }
    |}
  > |contract SimpleVesting is TokenVesting {
    |    function SimpleVesting(address _beneficiary) TokenVesting(
    |            _beneficiary,
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(188)

[33mWarning[0m for UnhandledException in contract 'SimpleVesting':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |  function safeTransferFrom(ERC20 token, address from, address to, uint256 value) internal {
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(63)

[33mWarning[0m for UnhandledException in contract 'SimpleVesting':
    |    require(revocable);
    |    require(!revoked[token]);
  > |    uint256 balance = token.balanceOf(this);
    |    uint256 unreleased = releasableAmount(token);
    |    uint256 refund = balance.sub(unreleased);
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(158)

[33mWarning[0m for UnhandledException in contract 'SimpleVesting':
    |   */
    |  function vestedAmount(ERC20Basic token) public view returns (uint256) {
  > |    uint256 currentBalance = token.balanceOf(this);
    |    uint256 totalBalance = currentBalance.add(released[token]);
    |    if (now < cliff) {
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(177)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleVesting':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |  function safeTransferFrom(ERC20 token, address from, address to, uint256 value) internal {
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(63)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleVesting':
    |    require(revocable);
    |    require(!revoked[token]);
  > |    uint256 balance = token.balanceOf(this);
    |    uint256 unreleased = releasableAmount(token);
    |    uint256 refund = balance.sub(unreleased);
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(158)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleVesting':
    |   */
    |  function vestedAmount(ERC20Basic token) public view returns (uint256) {
  > |    uint256 currentBalance = token.balanceOf(this);
    |    uint256 totalBalance = currentBalance.add(released[token]);
    |    if (now < cliff) {
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleVesting':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleVesting':
    |    uint256 unreleased = releasableAmount(token);
    |    require(unreleased > 0);
  > |    released[token] = released[token].add(unreleased);
    |    token.safeTransfer(beneficiary, unreleased);
    |    Released(unreleased);
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleVesting':
    |    uint256 unreleased = releasableAmount(token);
    |    uint256 refund = balance.sub(unreleased);
  > |    revoked[token] = true;
    |    token.safeTransfer(owner, refund);
    |    Revoked();
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(161)

[33mWarning[0m for LockedEther in contract 'TokenVesting':
    | * owner.
    | */
  > |contract TokenVesting is Ownable {
    |  using SafeMath for uint256;
    |  using SafeERC20 for ERC20Basic;
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(108)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |  function safeTransferFrom(ERC20 token, address from, address to, uint256 value) internal {
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(63)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |    require(revocable);
    |    require(!revoked[token]);
  > |    uint256 balance = token.balanceOf(this);
    |    uint256 unreleased = releasableAmount(token);
    |    uint256 refund = balance.sub(unreleased);
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(158)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |   */
    |  function vestedAmount(ERC20Basic token) public view returns (uint256) {
  > |    uint256 currentBalance = token.balanceOf(this);
    |    uint256 totalBalance = currentBalance.add(released[token]);
    |    if (now < cliff) {
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(177)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |  function safeTransferFrom(ERC20 token, address from, address to, uint256 value) internal {
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(63)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |    require(revocable);
    |    require(!revoked[token]);
  > |    uint256 balance = token.balanceOf(this);
    |    uint256 unreleased = releasableAmount(token);
    |    uint256 refund = balance.sub(unreleased);
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(158)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |   */
    |  function vestedAmount(ERC20Basic token) public view returns (uint256) {
  > |    uint256 currentBalance = token.balanceOf(this);
    |    uint256 totalBalance = currentBalance.add(released[token]);
    |    if (now < cliff) {
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |    uint256 unreleased = releasableAmount(token);
    |    require(unreleased > 0);
  > |    released[token] = released[token].add(unreleased);
    |    token.safeTransfer(beneficiary, unreleased);
    |    Released(unreleased);
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |    uint256 unreleased = releasableAmount(token);
    |    uint256 refund = balance.sub(unreleased);
  > |    revoked[token] = true;
    |    token.safeTransfer(owner, refund);
    |    Revoked();
  at /home/jiaming/mavs_srcs/contract@0xcd22c79ae2d673935045e15764e17d64408a35e8.sol(161)


