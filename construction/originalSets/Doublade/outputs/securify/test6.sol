Processing contract: /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol:Basic
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol:Partners
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol:smartContract
[31mViolation[0m for LockedEther in contract 'Basic':
    |}
    |
  > |contract Basic is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(75)

[33mWarning[0m for UnhandledException in contract 'Basic':
    |        availableAmount[_addr] = 0;
    |
  > |        contractAddress.transfer(_addr, available);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(141)

[33mWarning[0m for UnhandledException in contract 'Basic':
    |        // no need to create modifier for one case
    |        require(now > ownerWithdrawalDate);
  > |        contractAddress.transfer(msg.sender, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Basic':
    |        availableAmount[_addr] = 0;
    |
  > |        contractAddress.transfer(_addr, available);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(141)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Basic':
    |        // no need to create modifier for one case
    |        require(now > ownerWithdrawalDate);
  > |        contractAddress.transfer(msg.sender, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'Basic':
    |        for (uint i = 0; i < periods.length; i++) {
    |            if (periods[i] <= now && i >= currentPeriod) {
  > |                currentPeriod = i;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'Basic':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Basic':
    |        require(_from != 0x0);
    |        require(totalAmount[_from] == 0);
  > |        totalAmount[_from] = _amount;
    |        availableAmount[_from] = 0;
    |        withdrawedAmount[_from] = 0;
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'Basic':
    |        require(totalAmount[_from] == 0);
    |        totalAmount[_from] = _amount;
  > |        availableAmount[_from] = 0;
    |        withdrawedAmount[_from] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Basic':
    |        totalAmount[_from] = _amount;
    |        availableAmount[_from] = 0;
  > |        withdrawedAmount[_from] = 0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(123)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(66)

[31mViolation[0m for LockedEther in contract 'Partners':
    |}
    |
  > |contract Partners is Basic{
    |    function Partners(address _contractAddress) Basic(_contractAddress) public {
    |        periods = [
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(165)

[33mWarning[0m for UnhandledException in contract 'Partners':
    |        availableAmount[_addr] = 0;
    |
  > |        contractAddress.transfer(_addr, available);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(141)

[33mWarning[0m for UnhandledException in contract 'Partners':
    |        // no need to create modifier for one case
    |        require(now > ownerWithdrawalDate);
  > |        contractAddress.transfer(msg.sender, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Partners':
    |        availableAmount[_addr] = 0;
    |
  > |        contractAddress.transfer(_addr, available);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(141)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Partners':
    |        // no need to create modifier for one case
    |        require(now > ownerWithdrawalDate);
  > |        contractAddress.transfer(msg.sender, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'Partners':
    |        for (uint i = 0; i < periods.length; i++) {
    |            if (periods[i] <= now && i >= currentPeriod) {
  > |                currentPeriod = i;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'Partners':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Partners':
    |        require(_from != 0x0);
    |        require(totalAmount[_from] == 0);
  > |        totalAmount[_from] = _amount;
    |        availableAmount[_from] = 0;
    |        withdrawedAmount[_from] = 0;
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'Partners':
    |        require(totalAmount[_from] == 0);
    |        totalAmount[_from] = _amount;
  > |        availableAmount[_from] = 0;
    |        withdrawedAmount[_from] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Partners':
    |        totalAmount[_from] = _amount;
    |        availableAmount[_from] = 0;
  > |        withdrawedAmount[_from] = 0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(123)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x005ebcce7fc2d1432c82be1923ab938989271583.sol(8)


