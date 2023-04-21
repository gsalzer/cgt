Processing contract: /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol:token
[31mViolation[0m for DAOConstantGas in contract 'Crowdsale':
    |    function safeWithdrawal() afterDeadline {
    |
  > |        if (beneficiary.send(amountRaised)) {
    |            FundTransfer(beneficiary, amountRaised, false);
    |            tokenReward.transfer(beneficiary, tokenReward.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(102)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale {
    |    address public beneficiary;
    |    uint public tokenBalance;
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint price;
    |    token public tokenReward;
  > |    mapping(address => uint256) public balanceOf;
    |    event FundTransfer(address backer, uint amount, bool isContribution);
    |
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |library SafeMath {
  > |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  }
    |
  > |  function div(uint a, uint b) internal returns (uint) {
    |    // assert(b > 0); // Solidity automatically throws when dividing by 0
    |    uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  }
    |
  > |  function sub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |contract Crowdsale {
  > |    address public beneficiary;
    |    uint public tokenBalance;
    |    uint public amountRaised;
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |contract Crowdsale {
    |    address public beneficiary;
  > |    uint public tokenBalance;
    |    uint public amountRaised;
    |    uint public deadline;
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    address public beneficiary;
    |    uint public tokenBalance;
  > |    uint public amountRaised;
    |    uint public deadline;
    |    uint dollar_exchange;
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint public tokenBalance;
    |    uint public amountRaised;
  > |    uint public deadline;
    |    uint dollar_exchange;
    |    uint test_factor;
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint start_time;
    |    uint price;
  > |    token public tokenReward;
    |    mapping(address => uint256) public balanceOf;
    |    event FundTransfer(address backer, uint amount, bool isContribution);
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    modifier beforeDeadline() { if (now <= deadline) _; }
    |
  > |    function safeWithdrawal() afterDeadline {
    |
    |        if (beneficiary.send(amountRaised)) {
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(100)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |    function safeWithdrawal() afterDeadline {
    |
  > |        if (beneficiary.send(amountRaised)) {
    |            FundTransfer(beneficiary, amountRaised, false);
    |            tokenReward.transfer(beneficiary, tokenReward.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(102)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |    function safeWithdrawal() afterDeadline {
    |
  > |        if (beneficiary.send(amountRaised)) {
    |            FundTransfer(beneficiary, amountRaised, false);
    |            tokenReward.transfer(beneficiary, tokenReward.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(102)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    function safeWithdrawal() afterDeadline {
    |
  > |        if (beneficiary.send(amountRaised)) {
    |            FundTransfer(beneficiary, amountRaised, false);
    |            tokenReward.transfer(beneficiary, tokenReward.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(102)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        if (beneficiary.send(amountRaised)) {
    |            FundTransfer(beneficiary, amountRaised, false);
  > |            tokenReward.transfer(beneficiary, tokenReward.balanceOf(this));
    |            tokenBalance = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(104)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        if (beneficiary.send(amountRaised)) {
    |            FundTransfer(beneficiary, amountRaised, false);
  > |            tokenReward.transfer(beneficiary, tokenReward.balanceOf(this));
    |            tokenBalance = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(104)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            FundTransfer(beneficiary, amountRaised, false);
    |            tokenReward.transfer(beneficiary, tokenReward.balanceOf(this));
  > |            tokenBalance = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(105)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x30919c5c5c7727eea89b110d7258cbb36d541377.sol(3)


