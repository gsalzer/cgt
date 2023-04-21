Processing contract: /home/jiaming/mavs_srcs/contract@0x75bcacd381d946792ed2f898065f994bd40aecd1.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x75bcacd381d946792ed2f898065f994bd40aecd1.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x75bcacd381d946792ed2f898065f994bd40aecd1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x75bcacd381d946792ed2f898065f994bd40aecd1.sol:TokenTimelock
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x75bcacd381d946792ed2f898065f994bd40aecd1.sol(148)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |    int256 constant private INT256_MIN = -2**255;
    |
  at /home/jiaming/mavs_srcs/contract@0x75bcacd381d946792ed2f898065f994bd40aecd1.sol(29)

[33mWarning[0m for LockedEther in contract 'TokenTimelock':
    | * beneficiary to extract the tokens after a given release time
    | */
  > |contract TokenTimelock {
    |    using SafeERC20 for IERC20;
    |
  at /home/jiaming/mavs_srcs/contract@0x75bcacd381d946792ed2f898065f994bd40aecd1.sol(182)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |
    |    function safeTransfer(IERC20 token, address to, uint256 value) internal {
  > |        require(token.transfer(to, value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x75bcacd381d946792ed2f898065f994bd40aecd1.sol(152)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |        require(block.timestamp >= _releaseTime);
    |
  > |        uint256 amount = _token.balanceOf(address(this));
    |        require(amount > 0, "amount less than 0");
    |
  at /home/jiaming/mavs_srcs/contract@0x75bcacd381d946792ed2f898065f994bd40aecd1.sol(230)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |
    |    function safeTransfer(IERC20 token, address to, uint256 value) internal {
  > |        require(token.transfer(to, value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x75bcacd381d946792ed2f898065f994bd40aecd1.sol(152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |        require(block.timestamp >= _releaseTime);
    |
  > |        uint256 amount = _token.balanceOf(address(this));
    |        require(amount > 0, "amount less than 0");
    |
  at /home/jiaming/mavs_srcs/contract@0x75bcacd381d946792ed2f898065f994bd40aecd1.sol(230)


