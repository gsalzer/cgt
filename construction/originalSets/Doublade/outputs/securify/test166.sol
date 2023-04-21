Processing contract: /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol:Basic
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol:Team
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol:smartContract
[31mViolation[0m for LockedEther in contract 'Basic':
    |}
    |
  > |contract Basic is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(75)

[33mWarning[0m for UnhandledException in contract 'Basic':
    |        availableAmount[_addr] = 0;
    |
  > |        contractAddress.transfer(_addr, available);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(141)

[33mWarning[0m for UnhandledException in contract 'Basic':
    |        // no need to create modifier for one case
    |        require(now > ownerWithdrawalDate);
  > |        contractAddress.transfer(msg.sender, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Basic':
    |        availableAmount[_addr] = 0;
    |
  > |        contractAddress.transfer(_addr, available);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(141)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Basic':
    |        // no need to create modifier for one case
    |        require(now > ownerWithdrawalDate);
  > |        contractAddress.transfer(msg.sender, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'Basic':
    |        for (uint i = 0; i < periods.length; i++) {
    |            if (periods[i] <= now && i >= currentPeriod) {
  > |                currentPeriod = i;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'Basic':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Basic':
    |        require(_from != 0x0);
    |        require(totalAmount[_from] == 0);
  > |        totalAmount[_from] = _amount;
    |        availableAmount[_from] = 0;
    |        withdrawedAmount[_from] = 0;
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'Basic':
    |        require(totalAmount[_from] == 0);
    |        totalAmount[_from] = _amount;
  > |        availableAmount[_from] = 0;
    |        withdrawedAmount[_from] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Basic':
    |        totalAmount[_from] = _amount;
    |        availableAmount[_from] = 0;
  > |        withdrawedAmount[_from] = 0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(123)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(66)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(8)

[31mViolation[0m for LockedEther in contract 'Team':
    |}
    |
  > |contract Team is Basic{
    |    function Team(address _contractAddress) Basic(_contractAddress) public{
    |        periods = [
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(165)

[33mWarning[0m for UnhandledException in contract 'Team':
    |        availableAmount[_addr] = 0;
    |
  > |        contractAddress.transfer(_addr, available);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(141)

[33mWarning[0m for UnhandledException in contract 'Team':
    |        // no need to create modifier for one case
    |        require(now > ownerWithdrawalDate);
  > |        contractAddress.transfer(msg.sender, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Team':
    |        availableAmount[_addr] = 0;
    |
  > |        contractAddress.transfer(_addr, available);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(141)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Team':
    |        // no need to create modifier for one case
    |        require(now > ownerWithdrawalDate);
  > |        contractAddress.transfer(msg.sender, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |        for (uint i = 0; i < periods.length; i++) {
    |            if (periods[i] <= now && i >= currentPeriod) {
  > |                currentPeriod = i;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'Team':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Team':
    |        require(_from != 0x0);
    |        require(totalAmount[_from] == 0);
  > |        totalAmount[_from] = _amount;
    |        availableAmount[_from] = 0;
    |        withdrawedAmount[_from] = 0;
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'Team':
    |        require(totalAmount[_from] == 0);
    |        totalAmount[_from] = _amount;
  > |        availableAmount[_from] = 0;
    |        withdrawedAmount[_from] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Team':
    |        totalAmount[_from] = _amount;
    |        availableAmount[_from] = 0;
  > |        withdrawedAmount[_from] = 0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b3a0edd51ee5e7900666bbfdf139ea55ccf0ca0.sol(123)


