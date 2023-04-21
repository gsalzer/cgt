Processing contract: /home/jiaming/mavs_srcs/contract@0xe28942df3b9502193a3547e6f6bad16ce63b1e2d.sol:Escrow
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'Escrow':
    |
    |        balances[msg.sender] = 0;
  > |        bool claimed = msg.sender.call.value(balance)();
    |
    |        require(claimed);
  at /home/jiaming/mavs_srcs/contract@0xe28942df3b9502193a3547e6f6bad16ce63b1e2d.sol(16)

[33mWarning[0m for LockedEther in contract 'Escrow':
    |pragma solidity ^0.4.13;
    |
  > |contract Escrow {
    |    mapping (address => uint) public balances;
    |
  at /home/jiaming/mavs_srcs/contract@0xe28942df3b9502193a3547e6f6bad16ce63b1e2d.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Escrow':
    |
    |contract Escrow {
  > |    mapping (address => uint) public balances;
    |
    |    function deposit(address _recipient) payable {
  at /home/jiaming/mavs_srcs/contract@0xe28942df3b9502193a3547e6f6bad16ce63b1e2d.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'Escrow':
    |    mapping (address => uint) public balances;
    |
  > |    function deposit(address _recipient) payable {
    |        require(msg.value > 0);
    |        balances[_recipient] += msg.value;
  at /home/jiaming/mavs_srcs/contract@0xe28942df3b9502193a3547e6f6bad16ce63b1e2d.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Escrow':
    |    }
    |
  > |    function claim() {
    |        uint balance = balances[msg.sender];
    |        require(balance > 0);
  at /home/jiaming/mavs_srcs/contract@0xe28942df3b9502193a3547e6f6bad16ce63b1e2d.sol(11)

[33mWarning[0m for TODReceiver in contract 'Escrow':
    |
    |        balances[msg.sender] = 0;
  > |        bool claimed = msg.sender.call.value(balance)();
    |
    |        require(claimed);
  at /home/jiaming/mavs_srcs/contract@0xe28942df3b9502193a3547e6f6bad16ce63b1e2d.sol(16)

[33mWarning[0m for UnhandledException in contract 'Escrow':
    |
    |        balances[msg.sender] = 0;
  > |        bool claimed = msg.sender.call.value(balance)();
    |
    |        require(claimed);
  at /home/jiaming/mavs_srcs/contract@0xe28942df3b9502193a3547e6f6bad16ce63b1e2d.sol(16)

[31mViolation[0m for UnrestrictedWrite in contract 'Escrow':
    |    function deposit(address _recipient) payable {
    |        require(msg.value > 0);
  > |        balances[_recipient] += msg.value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe28942df3b9502193a3547e6f6bad16ce63b1e2d.sol(8)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |        require(balance > 0);
    |
  > |        balances[msg.sender] = 0;
    |        bool claimed = msg.sender.call.value(balance)();
    |
  at /home/jiaming/mavs_srcs/contract@0xe28942df3b9502193a3547e6f6bad16ce63b1e2d.sol(15)


