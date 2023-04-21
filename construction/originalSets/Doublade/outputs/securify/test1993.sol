Processing contract: /home/jiaming/mavs_srcs/contract@0x80f07f6bb9d2a2a69aa1e8e24687c3d33f89c175.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x80f07f6bb9d2a2a69aa1e8e24687c3d33f89c175.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x80f07f6bb9d2a2a69aa1e8e24687c3d33f89c175.sol:token
[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |        amountRaisedPhase = 0;
    |        FundTransfer(owner, withdraw, false);
  > |        owner.transfer(withdraw);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x80f07f6bb9d2a2a69aa1e8e24687c3d33f89c175.sol(88)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x80f07f6bb9d2a2a69aa1e8e24687c3d33f89c175.sol(36)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |        amountRaisedPhase = 0;
    |        FundTransfer(owner, withdraw, false);
  > |        owner.transfer(withdraw);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x80f07f6bb9d2a2a69aa1e8e24687c3d33f89c175.sol(88)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |        amountRaisedPhase = 0;
    |        FundTransfer(owner, withdraw, false);
  > |        owner.transfer(withdraw);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x80f07f6bb9d2a2a69aa1e8e24687c3d33f89c175.sol(88)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        amountRaised = amountRaised.add(amount);
    |        amountRaisedPhase = amountRaisedPhase.add(amount);
  > |        tokenReward.transfer(msg.sender, amount.mul(10**4).div(price));
    |        FundTransfer(msg.sender, amount, true);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x80f07f6bb9d2a2a69aa1e8e24687c3d33f89c175.sol(77)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        amountRaisedPhase = 0;
    |        FundTransfer(owner, withdraw, false);
  > |        owner.transfer(withdraw);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x80f07f6bb9d2a2a69aa1e8e24687c3d33f89c175.sol(88)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        amountRaised = amountRaised.add(amount);
    |        amountRaisedPhase = amountRaisedPhase.add(amount);
  > |        tokenReward.transfer(msg.sender, amount.mul(10**4).div(price));
    |        FundTransfer(msg.sender, amount, true);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x80f07f6bb9d2a2a69aa1e8e24687c3d33f89c175.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        amountRaisedPhase = 0;
    |        FundTransfer(owner, withdraw, false);
  > |        owner.transfer(withdraw);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x80f07f6bb9d2a2a69aa1e8e24687c3d33f89c175.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function () public payable {
    |        uint256 amount = msg.value;
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].add(amount);
    |        amountRaised = amountRaised.add(amount);
    |        amountRaisedPhase = amountRaisedPhase.add(amount);
  at /home/jiaming/mavs_srcs/contract@0x80f07f6bb9d2a2a69aa1e8e24687c3d33f89c175.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function safeWithdrawal() public onlyOwner {
    |        uint256 withdraw = amountRaisedPhase;
  > |        amountRaisedPhase = 0;
    |        FundTransfer(owner, withdraw, false);
    |        owner.transfer(withdraw);
  at /home/jiaming/mavs_srcs/contract@0x80f07f6bb9d2a2a69aa1e8e24687c3d33f89c175.sol(86)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * SafeMath - Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x80f07f6bb9d2a2a69aa1e8e24687c3d33f89c175.sol(10)


