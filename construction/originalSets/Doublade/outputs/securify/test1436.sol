Processing contract: /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol:Savings
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.14;
    |
  > |contract Ownable {
    |    address public Owner;
    |    
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public Owner;
    |    
    |    function Ownable() { Owner = msg.sender; }
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(7)

[33mWarning[0m for DAOConstantGas in contract 'Savings':
    |            uint max = deposits[msg.sender];
    |            if (amount <= max && max > 0) {
  > |                msg.sender.transfer(amount);
    |                Withdrawal(msg.sender, amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(41)

[33mWarning[0m for LockedEther in contract 'Savings':
    |}
    |
  > |contract Savings is Ownable {
    |    address public Owner;
    |    mapping (address => uint) public deposits;
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'Savings':
    |contract Savings is Ownable {
    |    address public Owner;
  > |    mapping (address => uint) public deposits;
    |    uint public openDate;
    |    
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'Savings':
    |    event Withdrawal(address indexed Withdrawer, uint Amount);
    |    
  > |    function init(uint open) payable {
    |        Owner = msg.sender;
    |        openDate = open;
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Savings':
    |    
    |    function Ownable() { Owner = msg.sender; }
  > |    function isOwner() internal constant returns (bool) { return(Owner == msg.sender); }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Savings':
    |
    |contract Savings is Ownable {
  > |    address public Owner;
    |    mapping (address => uint) public deposits;
    |    uint public openDate;
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Savings':
    |    address public Owner;
    |    mapping (address => uint) public deposits;
  > |    uint public openDate;
    |    
    |    event Initialized(uint OpenDate);
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Savings':
    |    function() payable { deposit(); }
    |    
  > |    function deposit() payable {
    |        if (msg.value >= 0.5 ether) {
    |            deposits[msg.sender] += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Savings':
    |    }
    |    
  > |    function withdraw(uint amount) payable {
    |        if (isOwner() && now >= openDate) {
    |            uint max = deposits[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Savings':
    |    }
    |
  > |    function kill() payable {
    |        if (isOwner() && this.balance == 0) {
    |            selfdestruct(Owner);
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(47)

[33mWarning[0m for TODAmount in contract 'Savings':
    |            uint max = deposits[msg.sender];
    |            if (amount <= max && max > 0) {
  > |                msg.sender.transfer(amount);
    |                Withdrawal(msg.sender, amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(41)

[33mWarning[0m for TODReceiver in contract 'Savings':
    |            uint max = deposits[msg.sender];
    |            if (amount <= max && max > 0) {
  > |                msg.sender.transfer(amount);
    |                Withdrawal(msg.sender, amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(41)

[33mWarning[0m for UnhandledException in contract 'Savings':
    |            uint max = deposits[msg.sender];
    |            if (amount <= max && max > 0) {
  > |                msg.sender.transfer(amount);
    |                Withdrawal(msg.sender, amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(41)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Savings':
    |            uint max = deposits[msg.sender];
    |            if (amount <= max && max > 0) {
  > |                msg.sender.transfer(amount);
    |                Withdrawal(msg.sender, amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'Savings':
    |    
    |    function init(uint open) payable {
  > |        Owner = msg.sender;
    |        openDate = open;
    |        Initialized(open);
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(23)

[31mViolation[0m for UnrestrictedWrite in contract 'Savings':
    |    function init(uint open) payable {
    |        Owner = msg.sender;
  > |        openDate = open;
    |        Initialized(open);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'Savings':
    |    function deposit() payable {
    |        if (msg.value >= 0.5 ether) {
  > |            deposits[msg.sender] += msg.value;
    |            Deposit(msg.sender, msg.value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5b2028602af2693d50b4157f4acf84d632ec8208.sol(32)


