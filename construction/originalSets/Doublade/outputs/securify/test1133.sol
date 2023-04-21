Processing contract: /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol:KeplerTokenCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol:token
[33mWarning[0m for DAOConstantGas in contract 'KeplerTokenCrowdsale':
    |    function withdraw(uint256 value) onlyOwner public {
    |        uint256 amount = value * 1 ether / 100;
  > |        owner.transfer(amount);
    |        emit FundTransfer(owner, amount, false);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol(86)

[33mWarning[0m for LockedEther in contract 'KeplerTokenCrowdsale':
    |}
    |
  > |contract KeplerTokenCrowdsale is Ownable {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol(57)

[33mWarning[0m for TODAmount in contract 'KeplerTokenCrowdsale':
    |    function withdraw(uint256 value) onlyOwner public {
    |        uint256 amount = value * 1 ether / 100;
  > |        owner.transfer(amount);
    |        emit FundTransfer(owner, amount, false);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol(86)

[31mViolation[0m for TODReceiver in contract 'KeplerTokenCrowdsale':
    |    function withdraw(uint256 value) onlyOwner public {
    |        uint256 amount = value * 1 ether / 100;
  > |        owner.transfer(amount);
    |        emit FundTransfer(owner, amount, false);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol(86)

[33mWarning[0m for UnhandledException in contract 'KeplerTokenCrowdsale':
    |    	require(msg.value != 0);
    |        uint256 amount = msg.value;
  > |        tokenReward.transfer(msg.sender, amount * TokensPerETH);
    |        emit FundTransfer(msg.sender, amount, true);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol(76)

[33mWarning[0m for UnhandledException in contract 'KeplerTokenCrowdsale':
    |    function withdraw(uint256 value) onlyOwner public {
    |        uint256 amount = value * 1 ether / 100;
  > |        owner.transfer(amount);
    |        emit FundTransfer(owner, amount, false);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol(86)

[33mWarning[0m for UnhandledException in contract 'KeplerTokenCrowdsale':
    |    function withdrawTokens(address otherTokenAddress, uint256 amount) onlyOwner public {
    |        token otherToken = token(otherTokenAddress);
  > |        otherToken.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol(92)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KeplerTokenCrowdsale':
    |    	require(msg.value != 0);
    |        uint256 amount = msg.value;
  > |        tokenReward.transfer(msg.sender, amount * TokensPerETH);
    |        emit FundTransfer(msg.sender, amount, true);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol(76)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KeplerTokenCrowdsale':
    |    function withdrawTokens(address otherTokenAddress, uint256 amount) onlyOwner public {
    |        token otherToken = token(otherTokenAddress);
  > |        otherToken.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol(92)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KeplerTokenCrowdsale':
    |    function withdraw(uint256 value) onlyOwner public {
    |        uint256 amount = value * 1 ether / 100;
  > |        owner.transfer(amount);
    |        emit FundTransfer(owner, amount, false);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'KeplerTokenCrowdsale':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'KeplerTokenCrowdsale':
    |
    |    function changeEtherPrice(uint256 newEtherPrice) onlyOwner public {
  > |        TokensPerETH = newEtherPrice * 150 / 125 ;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol(81)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol(52)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x4781d98e2e168fd88eedd449d135fa222d221a22.sol(7)


