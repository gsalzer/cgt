Processing contract: /home/jiaming/mavs_srcs/contract@0xee743637adb7f1231ab8d2151abca19779246017.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee743637adb7f1231ab8d2151abca19779246017.sol:token
[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |function balanceOf(address tokenOwner) public constant returns (uint balance);
    |}
  > |contract Crowdsale {
    |address public beneficiary;
    |uint public amountRaised;
  at /home/jiaming/mavs_srcs/contract@0xee743637adb7f1231ab8d2151abca19779246017.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |token public tokenReward;
    |token public tokenSource;
  > |mapping(address => uint256) public balanceOf;
    |bool crowdsaleClosed = false;
    |event FundTransfer(address backer, uint amount, bool isContribution);
  at /home/jiaming/mavs_srcs/contract@0xee743637adb7f1231ab8d2151abca19779246017.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |}
    |contract Crowdsale {
  > |address public beneficiary;
    |uint public amountRaised;
    |uint public deadline;
  at /home/jiaming/mavs_srcs/contract@0xee743637adb7f1231ab8d2151abca19779246017.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |contract Crowdsale {
    |address public beneficiary;
  > |uint public amountRaised;
    |uint public deadline;
    |token public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0xee743637adb7f1231ab8d2151abca19779246017.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |address public beneficiary;
    |uint public amountRaised;
  > |uint public deadline;
    |token public tokenReward;
    |token public tokenSource;
  at /home/jiaming/mavs_srcs/contract@0xee743637adb7f1231ab8d2151abca19779246017.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |uint public amountRaised;
    |uint public deadline;
  > |token public tokenReward;
    |token public tokenSource;
    |mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xee743637adb7f1231ab8d2151abca19779246017.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |uint public deadline;
    |token public tokenReward;
  > |token public tokenSource;
    |mapping(address => uint256) public balanceOf;
    |bool crowdsaleClosed = false;
  at /home/jiaming/mavs_srcs/contract@0xee743637adb7f1231ab8d2151abca19779246017.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |}
    |modifier afterDeadline() { if (now >= deadline) _; }
  > |function safeWithdrawal() public {
    |require(beneficiary == msg.sender);
    |uint tokenBalance = tokenReward.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0xee743637adb7f1231ab8d2151abca19779246017.sol(39)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |function safeWithdrawal() public {
    |require(beneficiary == msg.sender);
  > |uint tokenBalance = tokenReward.balanceOf(this);
    |tokenReward.transfer(beneficiary, tokenBalance);
    |}
  at /home/jiaming/mavs_srcs/contract@0xee743637adb7f1231ab8d2151abca19779246017.sol(41)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |require(beneficiary == msg.sender);
    |uint tokenBalance = tokenReward.balanceOf(this);
  > |tokenReward.transfer(beneficiary, tokenBalance);
    |}
    |}
  at /home/jiaming/mavs_srcs/contract@0xee743637adb7f1231ab8d2151abca19779246017.sol(42)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |function safeWithdrawal() public {
    |require(beneficiary == msg.sender);
  > |uint tokenBalance = tokenReward.balanceOf(this);
    |tokenReward.transfer(beneficiary, tokenBalance);
    |}
  at /home/jiaming/mavs_srcs/contract@0xee743637adb7f1231ab8d2151abca19779246017.sol(41)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |require(beneficiary == msg.sender);
    |uint tokenBalance = tokenReward.balanceOf(this);
  > |tokenReward.transfer(beneficiary, tokenBalance);
    |}
    |}
  at /home/jiaming/mavs_srcs/contract@0xee743637adb7f1231ab8d2151abca19779246017.sol(42)


