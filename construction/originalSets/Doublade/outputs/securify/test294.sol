Processing contract: /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol:lockEtherPay
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol:token
[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol(61)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |* @dev Math operations with safety checks that throw on error
    |*/
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol(7)

[33mWarning[0m for LockedEther in contract 'lockEtherPay':
    |}
    |
  > |contract lockEtherPay is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol(65)

[33mWarning[0m for UnhandledException in contract 'lockEtherPay':
    |
    |  function tokenBalance() constant public returns (uint256){
  > |    return token_reward.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol(84)

[33mWarning[0m for UnhandledException in contract 'lockEtherPay':
    |    require(lockOver());
    |    uint256 token_amount = tokenBalance();
  > |    token_reward.transfer( beneficiary, token_amount);
    |    emit TokenReleased(beneficiary, token_amount);
    |    isReleased = true;
  at /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol(105)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'lockEtherPay':
    |
    |  function tokenBalance() constant public returns (uint256){
  > |    return token_reward.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol(84)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'lockEtherPay':
    |    require(lockOver());
    |    uint256 token_amount = tokenBalance();
  > |    token_reward.transfer( beneficiary, token_amount);
    |    emit TokenReleased(beneficiary, token_amount);
    |    isReleased = true;
  at /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'lockEtherPay':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'lockEtherPay':
    |      require(!isLocked);
    |      require(tokenBalance() > 0);
  > |      start_time = now;
    |      end_time = start_time.add(fifty_two_weeks);
    |      isLocked = true;
  at /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'lockEtherPay':
    |      require(tokenBalance() > 0);
    |      start_time = now;
  > |      end_time = start_time.add(fifty_two_weeks);
    |      isLocked = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'lockEtherPay':
    |      start_time = now;
    |      end_time = start_time.add(fifty_two_weeks);
  > |      isLocked = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'lockEtherPay':
    |    token_reward.transfer( beneficiary, token_amount);
    |    emit TokenReleased(beneficiary, token_amount);
  > |    isReleased = true;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x144053ca5972624b0e39bb73a46842fa811e3db5.sol(107)


