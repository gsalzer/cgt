Processing contract: /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol:BatchReleaser
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol:TokenVesting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol:VariableRateTokenVesting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BatchReleaser':
    |}
    |
  > |contract BatchReleaser {
    |    
    |    function batchRelease(address[] vestingContracts, ERC20Basic token) external {
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(278)

[33mWarning[0m for UnhandledException in contract 'BatchReleaser':
    |        for (uint256 i = 0; i < vestingContracts.length; i++) {
    |            VariableRateTokenVesting vesting = VariableRateTokenVesting(vestingContracts[i]);
  > |            vesting.release(token);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(283)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BatchReleaser':
    |        for (uint256 i = 0; i < vestingContracts.length; i++) {
    |            VariableRateTokenVesting vesting = VariableRateTokenVesting(vestingContracts[i]);
  > |            vesting.release(token);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(283)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(75)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    |}
    |
  > |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
    |    assert(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(94)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(3)

[33mWarning[0m for LockedEther in contract 'TokenVesting':
    |}
    |
  > |contract TokenVesting is Ownable {
    |  using SafeMath for uint256;
    |  using SafeERC20 for ERC20Basic;
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(115)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(96)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |    require(!revoked[token]);
    |
  > |    uint256 balance = token.balanceOf(this);
    |
    |    uint256 unreleased = releasableAmount(token);
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(187)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |   */
    |  function vestedAmount(ERC20Basic token) public view returns (uint256) {
  > |    uint256 currentBalance = token.balanceOf(this);
    |    uint256 totalBalance = currentBalance.add(released[token]);
    |
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(96)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |    require(!revoked[token]);
    |
  > |    uint256 balance = token.balanceOf(this);
    |
    |    uint256 unreleased = releasableAmount(token);
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(187)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |   */
    |  function vestedAmount(ERC20Basic token) public view returns (uint256) {
  > |    uint256 currentBalance = token.balanceOf(this);
    |    uint256 totalBalance = currentBalance.add(released[token]);
    |
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |    require(unreleased > 0);
    |
  > |    released[token] = released[token].add(unreleased);
    |
    |    token.safeTransfer(beneficiary, unreleased);
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |    uint256 refund = balance.sub(unreleased);
    |
  > |    revoked[token] = true;
    |
    |    token.safeTransfer(owner, refund);
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(192)

[33mWarning[0m for LockedEther in contract 'VariableRateTokenVesting':
    |}
    |
  > |contract VariableRateTokenVesting is TokenVesting {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(225)

[33mWarning[0m for UnhandledException in contract 'VariableRateTokenVesting':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(96)

[33mWarning[0m for UnhandledException in contract 'VariableRateTokenVesting':
    |    require(!revoked[token]);
    |
  > |    uint256 balance = token.balanceOf(this);
    |
    |    uint256 unreleased = releasableAmount(token);
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(187)

[33mWarning[0m for UnhandledException in contract 'VariableRateTokenVesting':
    |        }
    |
  > |        uint256 currentBalance = token.balanceOf(this);
    |        uint256 totalBalance = currentBalance.add(released[token]);
    |
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VariableRateTokenVesting':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(96)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VariableRateTokenVesting':
    |    require(!revoked[token]);
    |
  > |    uint256 balance = token.balanceOf(this);
    |
    |    uint256 unreleased = releasableAmount(token);
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(187)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VariableRateTokenVesting':
    |        }
    |
  > |        uint256 currentBalance = token.balanceOf(this);
    |        uint256 totalBalance = currentBalance.add(released[token]);
    |
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'VariableRateTokenVesting':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'VariableRateTokenVesting':
    |    require(unreleased > 0);
    |
  > |    released[token] = released[token].add(unreleased);
    |
    |    token.safeTransfer(beneficiary, unreleased);
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'VariableRateTokenVesting':
    |    uint256 refund = balance.sub(unreleased);
    |
  > |    revoked[token] = true;
    |
    |    token.safeTransfer(owner, refund);
  at /home/jiaming/mavs_srcs/contract@0x2269f705591263d48aad2a3180eac5e8f1260bdb.sol(192)


