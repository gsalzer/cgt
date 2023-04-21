Processing contract: /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol:BdpBase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol:BdpBaseData
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol:BdpContracts
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol:BdpOwnershipStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'BdpBase':
    |}
    |
  > |contract BdpBase is BdpBaseData {
    |
    |	modifier onlyOwner() {
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |	function setOwner(address _newOwner) external onlyOwner {
    |		require(_newOwner != address(0));
  > |		ownerAddress = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |	function setManager(address _newManager) external onlyOwner {
    |		require(_newManager != address(0));
  > |		managerAddress = _newManager;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |
    |	function pause() external onlyAuthorized {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |
    |	function unpause() external onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpBase':
    |
    |	function setSetupComplete() external onlyOwner {
  > |		setupComplete = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(98)

[33mWarning[0m for LockedEther in contract 'BdpBaseData':
    |pragma solidity ^0.4.19;
    |
  > |contract BdpBaseData {
    |
    |	address public ownerAddress;
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |contract BdpBaseData {
    |
  > |	address public ownerAddress;
    |
    |	address public managerAddress;
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address public ownerAddress;
    |
  > |	address public managerAddress;
    |
    |	address[16] public contracts;
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address public managerAddress;
    |
  > |	address[16] public contracts;
    |
    |	bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	address[16] public contracts;
    |
  > |	bool public paused = false;
    |
    |	bool public setupComplete = false;
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	bool public paused = false;
    |
  > |	bool public setupComplete = false;
    |
    |	bytes8 public version;
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'BdpBaseData':
    |	bool public setupComplete = false;
    |
  > |	bytes8 public version;
    |
    |}
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(15)

[33mWarning[0m for LockedEther in contract 'BdpContracts':
    |
    |}
  > |library BdpContracts {
    |
    |	function getBdpEntryPoint(address[16] _contracts) pure internal returns (address) {
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(18)

[31mViolation[0m for LockedEther in contract 'BdpOwnershipStorage':
    |
    |
  > |contract BdpOwnershipStorage is BdpBase {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |
    |
  > |contract BdpOwnershipStorage is BdpBase {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |	function setOwner(address _newOwner) external onlyOwner {
    |		require(_newOwner != address(0));
  > |		ownerAddress = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |	function setManager(address _newManager) external onlyOwner {
    |		require(_newManager != address(0));
  > |		managerAddress = _newManager;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |
    |	function pause() external onlyAuthorized {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |
    |	function unpause() external onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BdpOwnershipStorage':
    |
    |	function setSetupComplete() external onlyOwner {
  > |		setupComplete = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(98)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x3aa343d578050e333676b560f6465fa181c02edf.sol(107)


