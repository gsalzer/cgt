Processing contract: /home/jiaming/mavs_srcs/contract@0x1a1759d929041ec22a826edc71e60b4b4ec856e0.sol:HelloChicken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'HelloChicken':
    |pragma solidity ^0.4.18;
    |
  > |contract HelloChicken {
    |
    |  event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x1a1759d929041ec22a826edc71e60b4b4ec856e0.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'HelloChicken':
    |  }
    |
  > |  function balanceOf(address _owner) public view returns (uint256 balance) {
    |    return balances_[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1a1759d929041ec22a826edc71e60b4b4ec856e0.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'HelloChicken':
    |  event Transfer(address indexed from, address indexed to, uint256 value);
    |
  > |  string public constant name = "Chicken";
    |  string public constant symbol = "CHK";
    |
  at /home/jiaming/mavs_srcs/contract@0x1a1759d929041ec22a826edc71e60b4b4ec856e0.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'HelloChicken':
    |
    |  string public constant name = "Chicken";
  > |  string public constant symbol = "CHK";
    |
    |  uint256 totalSupply_;
  at /home/jiaming/mavs_srcs/contract@0x1a1759d929041ec22a826edc71e60b4b4ec856e0.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'HelloChicken':
    |  mapping(address => uint256) spentToday_;
    |
  > |  function Chicken() public {
    |    totalSupply_ = 0;
    |    dailyLimit_ = 5;
  at /home/jiaming/mavs_srcs/contract@0x1a1759d929041ec22a826edc71e60b4b4ec856e0.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'HelloChicken':
    |  }
    |
  > |  function underLimit(uint256 _value) internal returns (bool) {
    |    if (today() > lastDay_[msg.sender]) {
    |      spentToday_[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0x1a1759d929041ec22a826edc71e60b4b4ec856e0.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'HelloChicken':
    |  }
    |
  > |  function today() private view returns (uint256) {
    |    return now / 1 days;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1a1759d929041ec22a826edc71e60b4b4ec856e0.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'HelloChicken':
    |  }
    |
  > |  function totalSupply() public view returns (uint256) {
    |    return totalSupply_;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1a1759d929041ec22a826edc71e60b4b4ec856e0.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'HelloChicken':
    |
    |  function Chicken() public {
  > |    totalSupply_ = 0;
    |    dailyLimit_ = 5;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1a1759d929041ec22a826edc71e60b4b4ec856e0.sol(18)

[31mViolation[0m for UnrestrictedWrite in contract 'HelloChicken':
    |  function Chicken() public {
    |    totalSupply_ = 0;
  > |    dailyLimit_ = 5;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a1759d929041ec22a826edc71e60b4b4ec856e0.sol(19)

[31mViolation[0m for UnrestrictedWrite in contract 'HelloChicken':
    |  function underLimit(uint256 _value) internal returns (bool) {
    |    if (today() > lastDay_[msg.sender]) {
  > |      spentToday_[msg.sender] = 0;
    |      lastDay_[msg.sender] = today();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a1759d929041ec22a826edc71e60b4b4ec856e0.sol(24)

[31mViolation[0m for UnrestrictedWrite in contract 'HelloChicken':
    |    if (today() > lastDay_[msg.sender]) {
    |      spentToday_[msg.sender] = 0;
  > |      lastDay_[msg.sender] = today();
    |    }
    |    if (spentToday_[msg.sender] + _value >= spentToday_[msg.sender] && spentToday_[msg.sender] + _value <= dailyLimit_) {
  at /home/jiaming/mavs_srcs/contract@0x1a1759d929041ec22a826edc71e60b4b4ec856e0.sol(25)

[31mViolation[0m for UnrestrictedWrite in contract 'HelloChicken':
    |    }
    |    if (spentToday_[msg.sender] + _value >= spentToday_[msg.sender] && spentToday_[msg.sender] + _value <= dailyLimit_) {
  > |      spentToday_[msg.sender] += _value;
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a1759d929041ec22a826edc71e60b4b4ec856e0.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'HelloChicken':
    |    require(_to != msg.sender);
    |
  > |    totalSupply_ += _value;
    |    balances_[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1a1759d929041ec22a826edc71e60b4b4ec856e0.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'HelloChicken':
    |
    |    totalSupply_ += _value;
  > |    balances_[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1a1759d929041ec22a826edc71e60b4b4ec856e0.sol(52)


