Processing contract: /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol:AirDrop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol:Token
[33mWarning[0m for DAO in contract 'AirDrop':
    |
    |    if(tokensAvailable() >= tokensToSend) {
  > |      token.transfer(recipient, tokensToSend);
    |      TransferredToken(recipient, valueToPresent);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol(74)

[33mWarning[0m for DAO in contract 'AirDrop':
    |
    |  function tokensAvailable() constant returns (uint256) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol(83)

[33mWarning[0m for LockedEther in contract 'AirDrop':
    |}
    |
  > |contract AirDrop is Ownable {
    |
    |  Token token;
  at /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'AirDrop':
    |contract Ownable {
    |
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'AirDrop':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'AirDrop':
    |  }
    |
  > |  function isActive() constant returns (bool) {
    |    return (
    |        tokensAvailable() > 0 // Tokens must be available to send
  at /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'AirDrop':
    |  }  
    |
  > |  function sendInternally(address recipient, uint256 tokensToSend, uint256 valueToPresent) internal {
    |    if(recipient == address(0)) return;
    |
  at /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'AirDrop':
    |
    |
  > |  function tokensAvailable() constant returns (uint256) {
    |    return token.balanceOf(this);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol(82)

[33mWarning[0m for UnhandledException in contract 'AirDrop':
    |
    |    if(tokensAvailable() >= tokensToSend) {
  > |      token.transfer(recipient, tokensToSend);
    |      TransferredToken(recipient, valueToPresent);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol(74)

[33mWarning[0m for UnhandledException in contract 'AirDrop':
    |
    |  function tokensAvailable() constant returns (uint256) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol(83)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AirDrop':
    |
    |  function tokensAvailable() constant returns (uint256) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'AirDrop':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol(18)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.16;
    |
  > |contract Ownable {
    |
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9ceb936c8146a58d2c18a62f363824547604ce5a.sol(18)


