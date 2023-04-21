Processing contract: /home/jiaming/mavs_srcs/contract@0x7af66d707d8477ed9f246d29021112f9b588fcf6.sol:BdpBaseData
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7af66d707d8477ed9f246d29021112f9b588fcf6.sol:BdpContracts
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7af66d707d8477ed9f246d29021112f9b588fcf6.sol:BdpEntryPoint
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BdpBaseData':
    |pragma solidity ^0.4.19;
    |
  > |contract BdpBaseData {
    |
    |	address public ownerAddress;
  at /home/jiaming/mavs_srcs/contract@0x7af66d707d8477ed9f246d29021112f9b588fcf6.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |contract BdpBaseData {
    |
  > |	address public ownerAddress;
    |
    |	address public managerAddress;
  at /home/jiaming/mavs_srcs/contract@0x7af66d707d8477ed9f246d29021112f9b588fcf6.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address public ownerAddress;
    |
  > |	address public managerAddress;
    |
    |	address[16] public contracts;
  at /home/jiaming/mavs_srcs/contract@0x7af66d707d8477ed9f246d29021112f9b588fcf6.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address public managerAddress;
    |
  > |	address[16] public contracts;
    |
    |	bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0x7af66d707d8477ed9f246d29021112f9b588fcf6.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address[16] public contracts;
    |
  > |	bool public paused = false;
    |
    |	bool public setupComplete = false;
  at /home/jiaming/mavs_srcs/contract@0x7af66d707d8477ed9f246d29021112f9b588fcf6.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	bool public paused = false;
    |
  > |	bool public setupComplete = false;
    |
    |	bytes8 public version;
  at /home/jiaming/mavs_srcs/contract@0x7af66d707d8477ed9f246d29021112f9b588fcf6.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	bool public setupComplete = false;
    |
  > |	bytes8 public version;
    |
    |}
  at /home/jiaming/mavs_srcs/contract@0x7af66d707d8477ed9f246d29021112f9b588fcf6.sol(15)

[33mWarning[0m for LockedEther in contract 'BdpContracts':
    |}
    |
  > |library BdpContracts {
    |
    |	function getBdpEntryPoint(address[16] _contracts) pure internal returns (address) {
  at /home/jiaming/mavs_srcs/contract@0x7af66d707d8477ed9f246d29021112f9b588fcf6.sol(19)

[33mWarning[0m for LockedEther in contract 'BdpEntryPoint':
    |}
    |
  > |contract BdpEntryPoint is BdpBaseData {
    |
    |	function () payable public {
  at /home/jiaming/mavs_srcs/contract@0x7af66d707d8477ed9f246d29021112f9b588fcf6.sol(51)


