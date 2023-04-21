Processing contract: /home/jiaming/mavs_srcs/contract@0xd652c2c57bb8397a790e89ebc392a1bf4e26450f.sol:PreICO
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd652c2c57bb8397a790e89ebc392a1bf4e26450f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'PreICO':
    |    assert(tokensIssued + numTokens <= limit);
    |
  > |    ethWallet.transfer(msg.value);
    |    balance[msg.sender] += numTokens;
    |    tokensIssued += numTokens;
  at /home/jiaming/mavs_srcs/contract@0xd652c2c57bb8397a790e89ebc392a1bf4e26450f.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'PreICO':
    |
    |contract PreICO is SafeMath {
  > |  mapping (address => uint) public balance;
    |  uint public tokensIssued;
    |
  at /home/jiaming/mavs_srcs/contract@0xd652c2c57bb8397a790e89ebc392a1bf4e26450f.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'PreICO':
    |contract SafeMath {
  > |  function safeMul(uint a, uint b) internal constant returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xd652c2c57bb8397a790e89ebc392a1bf4e26450f.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'PreICO':
    |  }
    |
  > |  function safeDiv(uint a, uint b) internal constant returns (uint) {
    |    require(b > 0);
    |    uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xd652c2c57bb8397a790e89ebc392a1bf4e26450f.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'PreICO':
    |contract PreICO is SafeMath {
    |  mapping (address => uint) public balance;
  > |  uint public tokensIssued;
    |
    |  address public ethWallet;
  at /home/jiaming/mavs_srcs/contract@0xd652c2c57bb8397a790e89ebc392a1bf4e26450f.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'PreICO':
    |  uint public tokensIssued;
    |
  > |  address public ethWallet;
    |
    |  uint public startPreico; // block
  at /home/jiaming/mavs_srcs/contract@0xd652c2c57bb8397a790e89ebc392a1bf4e26450f.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'PreICO':
    |  address public ethWallet;
    |
  > |  uint public startPreico; // block
    |  uint public endPreico; // timestamp
    |
  at /home/jiaming/mavs_srcs/contract@0xd652c2c57bb8397a790e89ebc392a1bf4e26450f.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'PreICO':
    |
    |  uint public startPreico; // block
  > |  uint public endPreico; // timestamp
    |
    |  // Tokens with decimals
  at /home/jiaming/mavs_srcs/contract@0xd652c2c57bb8397a790e89ebc392a1bf4e26450f.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'PreICO':
    |
    |  // Tokens with decimals
  > |  uint public limit;
    |
    |  event e_Purchase(address who, uint amount);
  at /home/jiaming/mavs_srcs/contract@0xd652c2c57bb8397a790e89ebc392a1bf4e26450f.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'PreICO':
    |  }
    |
  > |  function buy() onTime payable {
    |    uint numTokens = safeDiv(safeMul(msg.value, getRate(msg.value)), 1 ether);
    |    assert(tokensIssued + numTokens <= limit);
  at /home/jiaming/mavs_srcs/contract@0xd652c2c57bb8397a790e89ebc392a1bf4e26450f.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'PreICO':
    |  }
    |
  > |  function getRate(uint value) constant returns (uint rate) {
    |    if(value < 150 ether)
    |      revert();
  at /home/jiaming/mavs_srcs/contract@0xd652c2c57bb8397a790e89ebc392a1bf4e26450f.sol(69)

[33mWarning[0m for UnhandledException in contract 'PreICO':
    |    assert(tokensIssued + numTokens <= limit);
    |
  > |    ethWallet.transfer(msg.value);
    |    balance[msg.sender] += numTokens;
    |    tokensIssued += numTokens;
  at /home/jiaming/mavs_srcs/contract@0xd652c2c57bb8397a790e89ebc392a1bf4e26450f.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'PreICO':
    |    ethWallet.transfer(msg.value);
    |    balance[msg.sender] += numTokens;
  > |    tokensIssued += numTokens;
    |
    |    e_Purchase(msg.sender, numTokens);
  at /home/jiaming/mavs_srcs/contract@0xd652c2c57bb8397a790e89ebc392a1bf4e26450f.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICO':
    |
    |    ethWallet.transfer(msg.value);
  > |    balance[msg.sender] += numTokens;
    |    tokensIssued += numTokens;
    |
  at /home/jiaming/mavs_srcs/contract@0xd652c2c57bb8397a790e89ebc392a1bf4e26450f.sol(63)

[33mWarning[0m for LockedEther in contract 'SafeMath':
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal constant returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xd652c2c57bb8397a790e89ebc392a1bf4e26450f.sol(1)


