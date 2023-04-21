Processing contract: /home/jiaming/mavs_srcs/contract@0x99eda543b6a82d2a94d1bc2e044434321352174f.sol:MeetupToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MeetupToken':
    |pragma solidity ^0.4.11;
    |
  > |contract MeetupToken {
    |    
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x99eda543b6a82d2a94d1bc2e044434321352174f.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'MeetupToken':
    |    }
    |    
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x99eda543b6a82d2a94d1bc2e044434321352174f.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'MeetupToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99eda543b6a82d2a94d1bc2e044434321352174f.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'MeetupToken':
    |contract MeetupToken {
    |    
  > |    uint256 public totalSupply;
    |    mapping (address => uint256) balances;
    |    
  at /home/jiaming/mavs_srcs/contract@0x99eda543b6a82d2a94d1bc2e044434321352174f.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'MeetupToken':
    |    mapping (address => uint256) balances;
    |    
  > |    string public name;               
    |    uint8 public decimals;                
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x99eda543b6a82d2a94d1bc2e044434321352174f.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'MeetupToken':
    |    
    |    string public name;               
  > |    uint8 public decimals;                
    |    string public symbol;
    |   
  at /home/jiaming/mavs_srcs/contract@0x99eda543b6a82d2a94d1bc2e044434321352174f.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'MeetupToken':
    |    string public name;               
    |    uint8 public decimals;                
  > |    string public symbol;
    |   
    |    function MeetupToken(
  at /home/jiaming/mavs_srcs/contract@0x99eda543b6a82d2a94d1bc2e044434321352174f.sol(10)

[33mWarning[0m for UnrestrictedWrite in contract 'MeetupToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x99eda543b6a82d2a94d1bc2e044434321352174f.sol(27)


