Processing contract: /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol:ArgumentsChecker
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol:LightFundsRegistry
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol:ReentrancyGuard
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ArgumentsChecker':
    |}
    |
  > |contract ArgumentsChecker {
    |
    |    /// @dev check which prevents short address attack
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(56)

[31mViolation[0m for DAOConstantGas in contract 'LightFundsRegistry':
    |        m_weiBalances[payee] = 0;
    |
  > |        payee.transfer(payment);
    |        RefundSent(payee, payment);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(203)

[33mWarning[0m for DAOConstantGas in contract 'LightFundsRegistry':
    |        if (State.SUCCEEDED == _newState) {
    |            uint _80percent = this.balance.mul(80).div(100);
  > |            m_owner80.transfer(_80percent);
    |            EtherSent(m_owner80, _80percent);
    |
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(158)

[33mWarning[0m for DAOConstantGas in contract 'LightFundsRegistry':
    |
    |            uint _20percent = this.balance;
  > |            m_owner20.transfer(_20percent);
    |            EtherSent(m_owner20, _20percent);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(162)

[33mWarning[0m for LockedEther in contract 'LightFundsRegistry':
    |}
    |
  > |contract LightFundsRegistry is ArgumentsChecker, Ownable, ReentrancyGuard {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(108)

[31mViolation[0m for TODAmount in contract 'LightFundsRegistry':
    |
    |            uint _20percent = this.balance;
  > |            m_owner20.transfer(_20percent);
    |            EtherSent(m_owner20, _20percent);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(162)

[33mWarning[0m for TODReceiver in contract 'LightFundsRegistry':
    |        m_weiBalances[payee] = 0;
    |
  > |        payee.transfer(payment);
    |        RefundSent(payee, payment);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(203)

[33mWarning[0m for UnhandledException in contract 'LightFundsRegistry':
    |        if (State.SUCCEEDED == _newState) {
    |            uint _80percent = this.balance.mul(80).div(100);
  > |            m_owner80.transfer(_80percent);
    |            EtherSent(m_owner80, _80percent);
    |
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(158)

[33mWarning[0m for UnhandledException in contract 'LightFundsRegistry':
    |
    |            uint _20percent = this.balance;
  > |            m_owner20.transfer(_20percent);
    |            EtherSent(m_owner20, _20percent);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(162)

[33mWarning[0m for UnhandledException in contract 'LightFundsRegistry':
    |        m_weiBalances[payee] = 0;
    |
  > |        payee.transfer(payment);
    |        RefundSent(payee, payment);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LightFundsRegistry':
    |        if (State.SUCCEEDED == _newState) {
    |            uint _80percent = this.balance.mul(80).div(100);
  > |            m_owner80.transfer(_80percent);
    |            EtherSent(m_owner80, _80percent);
    |
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(158)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LightFundsRegistry':
    |
    |            uint _20percent = this.balance;
  > |            m_owner20.transfer(_20percent);
    |            EtherSent(m_owner20, _20percent);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(162)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LightFundsRegistry':
    |        m_weiBalances[payee] = 0;
    |
  > |        payee.transfer(payment);
    |        RefundSent(payee, payment);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(203)

[31mViolation[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |  modifier nonReentrant() {
    |    require(!rentrancy_lock);
  > |    rentrancy_lock = true;
    |    _;
    |    rentrancy_lock = false;
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |    rentrancy_lock = true;
    |    _;
  > |    rentrancy_lock = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |        else assert(false);
    |
  > |        m_state = _newState;
    |        StateChanged(m_state);
    |
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |        // register investor
    |        if (0 == m_weiBalances[_investor])
  > |            m_investors.push(_investor);
    |
    |        // register payment
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |
    |        // register payment
  > |        totalInvested = totalInvested.add(amount);
    |        m_weiBalances[_investor] = m_weiBalances[_investor].add(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |        // register payment
    |        totalInvested = totalInvested.add(amount);
  > |        m_weiBalances[_investor] = m_weiBalances[_investor].add(amount);
    |
    |        Invested(_investor, amount);
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |        require(this.balance >= payment);
    |
  > |        totalInvested = totalInvested.sub(payment);
    |        m_weiBalances[payee] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |
    |        totalInvested = totalInvested.sub(payment);
  > |        m_weiBalances[payee] = 0;
    |
    |        payee.transfer(payment);
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(201)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(103)

[33mWarning[0m for LockedEther in contract 'ReentrancyGuard':
    |}
    |
  > |contract ReentrancyGuard {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(32)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xd3939f92a2f0452a1a2b8e738bc401bcd32ee1d1.sol(3)


