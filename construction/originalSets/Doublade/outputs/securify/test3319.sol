Processing contract: /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol:BdpBase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol:BdpBaseData
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol:BdpContracts
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol:BdpImageStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'BdpBase':
    |}
    |
  > |contract BdpBase is BdpBaseData {
    |
    |	modifier onlyOwner() {
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'BdpBase':
    |}
    |
  > |contract BdpBase is BdpBaseData {
    |
    |	modifier onlyOwner() {
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |	function setOwner(address _newOwner) external onlyOwner {
    |		require(_newOwner != address(0));
  > |		ownerAddress = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |	function setManager(address _newManager) external onlyOwner {
    |		require(_newManager != address(0));
  > |		managerAddress = _newManager;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |
    |	function pause() external onlyAuthorized {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |
    |	function unpause() external onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |
    |	function setSetupComplete() external onlyOwner {
  > |		setupComplete = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(98)

[33mWarning[0m for LockedEther in contract 'BdpBaseData':
    |pragma solidity ^0.4.19;
    |
  > |contract BdpBaseData {
    |
    |	address public ownerAddress;
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |contract BdpBaseData {
    |
  > |	address public ownerAddress;
    |
    |	address public managerAddress;
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address public ownerAddress;
    |
  > |	address public managerAddress;
    |
    |	address[16] public contracts;
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address public managerAddress;
    |
  > |	address[16] public contracts;
    |
    |	bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address[16] public contracts;
    |
  > |	bool public paused = false;
    |
    |	bool public setupComplete = false;
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	bool public paused = false;
    |
  > |	bool public setupComplete = false;
    |
    |	bytes8 public version;
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	bool public setupComplete = false;
    |
  > |	bytes8 public version;
    |
    |}
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(15)

[33mWarning[0m for LockedEther in contract 'BdpContracts':
    |
    |}
  > |library BdpContracts {
    |
    |	function getBdpEntryPoint(address[16] _contracts) pure internal returns (address) {
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(18)

[31mViolation[0m for LockedEther in contract 'BdpImageStorage':
    |}
    |
  > |contract BdpImageStorage is BdpBase {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpImageStorage':
    |	function setOwner(address _newOwner) external onlyOwner {
    |		require(_newOwner != address(0));
  > |		ownerAddress = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpImageStorage':
    |	function setManager(address _newManager) external onlyOwner {
    |		require(_newManager != address(0));
  > |		managerAddress = _newManager;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpImageStorage':
    |
    |	function pause() external onlyAuthorized {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpImageStorage':
    |
    |	function unpause() external onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpImageStorage':
    |
    |	function setSetupComplete() external onlyOwner {
  > |		setupComplete = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(98)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xda3cc6344f39061e49a6988a25def0bff1b632f2.sol(107)


