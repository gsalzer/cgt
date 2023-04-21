Processing contract: /home/jiaming/mavs_srcs/contract@0x7a16e67f53428110e7206649ec5ef4d4fa06e44c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a16e67f53428110e7206649ec5ef4d4fa06e44c.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a16e67f53428110e7206649ec5ef4d4fa06e44c.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a16e67f53428110e7206649ec5ef4d4fa06e44c.sol:TokenTimelock
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeERC20':
    |}
    |
  > |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
    |    assert(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0x7a16e67f53428110e7206649ec5ef4d4fa06e44c.sol(17)

[33mWarning[0m for LockedEther in contract 'TokenTimelock':
    |}
    |
  > |contract TokenTimelock {
    |  using SafeERC20 for ERC20Basic;
    |
  at /home/jiaming/mavs_srcs/contract@0x7a16e67f53428110e7206649ec5ef4d4fa06e44c.sol(31)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7a16e67f53428110e7206649ec5ef4d4fa06e44c.sol(19)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |    require(now >= releaseTime);
    |
  > |    uint256 amount = token.balanceOf(this);
    |    require(amount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x7a16e67f53428110e7206649ec5ef4d4fa06e44c.sol(56)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7a16e67f53428110e7206649ec5ef4d4fa06e44c.sol(19)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |    require(now >= releaseTime);
    |
  > |    uint256 amount = token.balanceOf(this);
    |    require(amount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x7a16e67f53428110e7206649ec5ef4d4fa06e44c.sol(56)


