Processing contract: /home/jiaming/mavs_srcs/contract@0x43fe879b5f0718eb65e823aa4b255c6a84df6c5c.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x43fe879b5f0718eb65e823aa4b255c6a84df6c5c.sol:token
[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |function balanceOf(address tokenOwner) public constant returns (uint balance);
    |}
  > |contract Crowdsale {
    |address public beneficiary;
    |uint public amountRaised;
  at /home/jiaming/mavs_srcs/contract@0x43fe879b5f0718eb65e823aa4b255c6a84df6c5c.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |uint public deadline;
    |token public tokenReward;
  > |mapping(address => uint256) public balanceOf;
    |bool crowdsaleClosed = false;
    |event FundTransfer(address backer, uint amount, bool isContribution);
  at /home/jiaming/mavs_srcs/contract@0x43fe879b5f0718eb65e823aa4b255c6a84df6c5c.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |}
    |contract Crowdsale {
  > |address public beneficiary;
    |uint public amountRaised;
    |uint public deadline;
  at /home/jiaming/mavs_srcs/contract@0x43fe879b5f0718eb65e823aa4b255c6a84df6c5c.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |contract Crowdsale {
    |address public beneficiary;
  > |uint public amountRaised;
    |uint public deadline;
    |token public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0x43fe879b5f0718eb65e823aa4b255c6a84df6c5c.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |address public beneficiary;
    |uint public amountRaised;
  > |uint public deadline;
    |token public tokenReward;
    |mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x43fe879b5f0718eb65e823aa4b255c6a84df6c5c.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |uint public amountRaised;
    |uint public deadline;
  > |token public tokenReward;
    |mapping(address => uint256) public balanceOf;
    |bool crowdsaleClosed = false;
  at /home/jiaming/mavs_srcs/contract@0x43fe879b5f0718eb65e823aa4b255c6a84df6c5c.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |}
    |modifier afterDeadline() { if (now >= deadline) _; }
  > |function safeWithdrawal() public {
    |require(beneficiary == msg.sender);
    |uint tokenBalance = tokenReward.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0x43fe879b5f0718eb65e823aa4b255c6a84df6c5c.sol(36)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |function safeWithdrawal() public {
    |require(beneficiary == msg.sender);
  > |uint tokenBalance = tokenReward.balanceOf(this);
    |tokenReward.transfer(beneficiary, tokenBalance);
    |}
  at /home/jiaming/mavs_srcs/contract@0x43fe879b5f0718eb65e823aa4b255c6a84df6c5c.sol(38)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |require(beneficiary == msg.sender);
    |uint tokenBalance = tokenReward.balanceOf(this);
  > |tokenReward.transfer(beneficiary, tokenBalance);
    |}
    |}
  at /home/jiaming/mavs_srcs/contract@0x43fe879b5f0718eb65e823aa4b255c6a84df6c5c.sol(39)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |function safeWithdrawal() public {
    |require(beneficiary == msg.sender);
  > |uint tokenBalance = tokenReward.balanceOf(this);
    |tokenReward.transfer(beneficiary, tokenBalance);
    |}
  at /home/jiaming/mavs_srcs/contract@0x43fe879b5f0718eb65e823aa4b255c6a84df6c5c.sol(38)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |require(beneficiary == msg.sender);
    |uint tokenBalance = tokenReward.balanceOf(this);
  > |tokenReward.transfer(beneficiary, tokenBalance);
    |}
    |}
  at /home/jiaming/mavs_srcs/contract@0x43fe879b5f0718eb65e823aa4b255c6a84df6c5c.sol(39)


