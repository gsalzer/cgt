Processing contract: /home/jiaming/mavs_srcs/contract@0x70c5e77577772aaf718a73db0d752ee35791eb69.sol:CentraAsiaWhiteList
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x70c5e77577772aaf718a73db0d752ee35791eb69.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'CentraAsiaWhiteList':
    |      //Withdraw money from contract balance to owner
    |      function withdraw() onlyOwner returns (bool result) {
  > |          owner.send(this.balance);
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x70c5e77577772aaf718a73db0d752ee35791eb69.sol(41)

[33mWarning[0m for LockedEther in contract 'CentraAsiaWhiteList':
    |pragma solidity ^0.4.13;        
    |   
  > |  contract CentraAsiaWhiteList { 
    | 
    |      using SafeMath for uint;  
  at /home/jiaming/mavs_srcs/contract@0x70c5e77577772aaf718a73db0d752ee35791eb69.sol(3)

[31mViolation[0m for TODAmount in contract 'CentraAsiaWhiteList':
    |      //Withdraw money from contract balance to owner
    |      function withdraw() onlyOwner returns (bool result) {
  > |          owner.send(this.balance);
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x70c5e77577772aaf718a73db0d752ee35791eb69.sol(41)

[33mWarning[0m for TODReceiver in contract 'CentraAsiaWhiteList':
    |      //Withdraw money from contract balance to owner
    |      function withdraw() onlyOwner returns (bool result) {
  > |          owner.send(this.balance);
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x70c5e77577772aaf718a73db0d752ee35791eb69.sol(41)

[31mViolation[0m for UnhandledException in contract 'CentraAsiaWhiteList':
    |      //Withdraw money from contract balance to owner
    |      function withdraw() onlyOwner returns (bool result) {
  > |          owner.send(this.balance);
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x70c5e77577772aaf718a73db0d752ee35791eb69.sol(41)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CentraAsiaWhiteList':
    |      //Withdraw money from contract balance to owner
    |      function withdraw() onlyOwner returns (bool result) {
  > |          owner.send(this.balance);
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x70c5e77577772aaf718a73db0d752ee35791eb69.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'CentraAsiaWhiteList':
    |        if(now > 1505865600)throw; // timestamp 2017.09.20 00:00:00
    |        
  > |        operation_address[operation] = msg.sender;
    |        operation_amount[operation] = msg.value;        
    |        operation = operation.add(1);
  at /home/jiaming/mavs_srcs/contract@0x70c5e77577772aaf718a73db0d752ee35791eb69.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'CentraAsiaWhiteList':
    |        
    |        operation_address[operation] = msg.sender;
  > |        operation_amount[operation] = msg.value;        
    |        operation = operation.add(1);
    |      }
  at /home/jiaming/mavs_srcs/contract@0x70c5e77577772aaf718a73db0d752ee35791eb69.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'CentraAsiaWhiteList':
    |        operation_address[operation] = msg.sender;
    |        operation_amount[operation] = msg.value;        
  > |        operation = operation.add(1);
    |      }
    | 
  at /home/jiaming/mavs_srcs/contract@0x70c5e77577772aaf718a73db0d752ee35791eb69.sol(36)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |   * Math operations with safety checks
    |   */
  > |  library SafeMath {
    |    function mul(uint a, uint b) internal returns (uint) {
    |      uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x70c5e77577772aaf718a73db0d752ee35791eb69.sol(50)


