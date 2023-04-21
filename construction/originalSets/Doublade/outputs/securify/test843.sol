Processing contract: /home/jiaming/mavs_srcs/contract@0x3617081dd9294a785780a4fcde3dcb8f0a2c69e8.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3617081dd9294a785780a4fcde3dcb8f0a2c69e8.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3617081dd9294a785780a4fcde3dcb8f0a2c69e8.sol:MofasAirdrop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3617081dd9294a785780a4fcde3dcb8f0a2c69e8.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MofasAirdrop':
    |}
    |
  > |contract MofasAirdrop is Ownable {
    |
    |    function multisend(address[] to, uint256[] value) onlyOwner returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x3617081dd9294a785780a4fcde3dcb8f0a2c69e8.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'MofasAirdrop':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x3617081dd9294a785780a4fcde3dcb8f0a2c69e8.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'MofasAirdrop':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3617081dd9294a785780a4fcde3dcb8f0a2c69e8.sol(17)

[33mWarning[0m for UnhandledException in contract 'MofasAirdrop':
    |        uint256 i = 0;
    |        while (i < to.length) {
  > |           ERC20(tokenAddr).transfer(to[i], value[i] * ( 10 ** 18 ));
    |           i++;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3617081dd9294a785780a4fcde3dcb8f0a2c69e8.sol(45)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MofasAirdrop':
    |        uint256 i = 0;
    |        while (i < to.length) {
  > |           ERC20(tokenAddr).transfer(to[i], value[i] * ( 10 ** 18 ));
    |           i++;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3617081dd9294a785780a4fcde3dcb8f0a2c69e8.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'MofasAirdrop':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3617081dd9294a785780a4fcde3dcb8f0a2c69e8.sol(19)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.11;
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3617081dd9294a785780a4fcde3dcb8f0a2c69e8.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x3617081dd9294a785780a4fcde3dcb8f0a2c69e8.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3617081dd9294a785780a4fcde3dcb8f0a2c69e8.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3617081dd9294a785780a4fcde3dcb8f0a2c69e8.sol(19)


