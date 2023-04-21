Processing contract: /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol:ELACoinSender
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol:Token
[33mWarning[0m for DAO in contract 'ELACoinSender':
    |
    |    if(tokensAvailable() >= tokensToSend) {
  > |      token.transfer(recipient, tokensToSend);
    |      emit TransferredToken(recipient, valueToPresent);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(77)

[33mWarning[0m for DAO in contract 'ELACoinSender':
    |
    |  function tokensAvailable() constant public returns (uint256) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(86)

[33mWarning[0m for LockedEther in contract 'ELACoinSender':
    |}
    |
  > |contract ELACoinSender is Ownable {
    |
    |  Token token;
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'ELACoinSender':
    |contract Ownable {
    |
  > |  address public owner;
    |
    |  function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'ELACoinSender':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner public{
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'ELACoinSender':
    |  }
    |
  > |  function Multisend () public {
    |      address _tokenAddr = 0xFaF378DD7C26EBcFAe80f4675faDB3F9d9DFC152; //here pass address of your token
    |      token = Token(_tokenAddr);
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'ELACoinSender':
    |  }
    |
  > |  function isActive() constant public returns (bool) {
    |    return (
    |        tokensAvailable() > 0 // Tokens must be available to send
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'ELACoinSender':
    |  }  
    |
  > |  function sendInternally(address recipient, uint256 tokensToSend, uint256 valueToPresent) internal {
    |    if(recipient == address(0)) return;
    |
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'ELACoinSender':
    |
    |
  > |  function tokensAvailable() constant public returns (uint256) {
    |    return token.balanceOf(this);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(85)

[33mWarning[0m for UnhandledException in contract 'ELACoinSender':
    |
    |    if(tokensAvailable() >= tokensToSend) {
  > |      token.transfer(recipient, tokensToSend);
    |      emit TransferredToken(recipient, valueToPresent);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(77)

[33mWarning[0m for UnhandledException in contract 'ELACoinSender':
    |
    |  function tokensAvailable() constant public returns (uint256) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(86)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ELACoinSender':
    |
    |  function tokensAvailable() constant public returns (uint256) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'ELACoinSender':
    |  function Multisend () public {
    |      address _tokenAddr = 0xFaF378DD7C26EBcFAe80f4675faDB3F9d9DFC152; //here pass address of your token
  > |      token = Token(_tokenAddr);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'ELACoinSender':
    |  function transferOwnership(address newOwner) onlyOwner public{
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(18)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.21;
    |
  > |contract Ownable {
    |
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |  address public owner;
    |
    |  function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner public{
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner public{
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a624fd7c679e9bc9c69bf4ad792c3f625961006.sol(18)


