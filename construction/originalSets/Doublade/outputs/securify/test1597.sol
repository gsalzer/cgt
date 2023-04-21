Processing contract: /home/jiaming/mavs_srcs/contract@0x6577e6676f8caad9fc725374cd9ec628d20ba7ad.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6577e6676f8caad9fc725374cd9ec628d20ba7ad.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x6577e6676f8caad9fc725374cd9ec628d20ba7ad.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6577e6676f8caad9fc725374cd9ec628d20ba7ad.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6577e6676f8caad9fc725374cd9ec628d20ba7ad.sol:TOSERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6577e6676f8caad9fc725374cd9ec628d20ba7ad.sol:TosTeamLockContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |    function safeTransfer(ERC20 token, address to, uint256 value) internal {
    |        assert(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0x6577e6676f8caad9fc725374cd9ec628d20ba7ad.sol(37)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x6577e6676f8caad9fc725374cd9ec628d20ba7ad.sol(62)

[33mWarning[0m for LockedEther in contract 'TosTeamLockContract':
    | * beneficiary to extract the tokens after a given unlock time
    | */
  > |contract TosTeamLockContract {
    |    using SafeERC20 for TOSERC20;
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x6577e6676f8caad9fc725374cd9ec628d20ba7ad.sol(93)

[33mWarning[0m for UnhandledException in contract 'TosTeamLockContract':
    |library SafeERC20 {
    |    function safeTransfer(ERC20 token, address to, uint256 value) internal {
  > |        assert(token.transfer(to, value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6577e6676f8caad9fc725374cd9ec628d20ba7ad.sol(39)

[33mWarning[0m for UnhandledException in contract 'TosTeamLockContract':
    |        require(num + 1 > numOfReleased);
    |
  > |        uint256 amount = tosToken.balanceOf(this).mul(30).div(100);
    |
    |        require(amount > 0);
  at /home/jiaming/mavs_srcs/contract@0x6577e6676f8caad9fc725374cd9ec628d20ba7ad.sol(121)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TosTeamLockContract':
    |library SafeERC20 {
    |    function safeTransfer(ERC20 token, address to, uint256 value) internal {
  > |        assert(token.transfer(to, value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6577e6676f8caad9fc725374cd9ec628d20ba7ad.sol(39)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TosTeamLockContract':
    |        require(num + 1 > numOfReleased);
    |
  > |        uint256 amount = tosToken.balanceOf(this).mul(30).div(100);
    |
    |        require(amount > 0);
  at /home/jiaming/mavs_srcs/contract@0x6577e6676f8caad9fc725374cd9ec628d20ba7ad.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'TosTeamLockContract':
    |
    |        tosToken.safeTransfer(beneficiary, amount);
  > |        numOfReleased = numOfReleased.add(1);   
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6577e6676f8caad9fc725374cd9ec628d20ba7ad.sol(126)


