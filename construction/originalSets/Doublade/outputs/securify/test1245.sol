Processing contract: /home/jiaming/mavs_srcs/contract@0x4eb88afb7022249572eb6da58f07549a6f4b9d93.sol:SimpleMultiSig
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'SimpleMultiSig':
    |  function executeCall(address to, uint256 value, bytes data) internal returns (bool success) {
    |    assembly {
  > |      success := call(gas, to, value, add(data, 0x20), mload(data), 0, 0)
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4eb88afb7022249572eb6da58f07549a6f4b9d93.sol(47)

[33mWarning[0m for LockedEther in contract 'SimpleMultiSig':
    |pragma solidity ^0.4.18;
    |
  > |contract SimpleMultiSig {
    |
    |  uint public nonce;                 // (only) mutable state
  at /home/jiaming/mavs_srcs/contract@0x4eb88afb7022249572eb6da58f07549a6f4b9d93.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'SimpleMultiSig':
    |
    |  // Note that address recovered from signatures must be strictly increasing
  > |  function execute(uint8[] sigV, bytes32[] sigR, bytes32[] sigS, address destination, uint value, bytes data) public {
    |    require(sigR.length == threshold);
    |    require(sigR.length == sigS.length && sigR.length == sigV.length);
  at /home/jiaming/mavs_srcs/contract@0x4eb88afb7022249572eb6da58f07549a6f4b9d93.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'SimpleMultiSig':
    |contract SimpleMultiSig {
    |
  > |  uint public nonce;                 // (only) mutable state
    |  uint public threshold;             // immutable state
    |  mapping (address => bool) isOwner; // immutable state
  at /home/jiaming/mavs_srcs/contract@0x4eb88afb7022249572eb6da58f07549a6f4b9d93.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'SimpleMultiSig':
    |
    |  uint public nonce;                 // (only) mutable state
  > |  uint public threshold;             // immutable state
    |  mapping (address => bool) isOwner; // immutable state
    |  address[] public ownersArr;        // immutable state
  at /home/jiaming/mavs_srcs/contract@0x4eb88afb7022249572eb6da58f07549a6f4b9d93.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'SimpleMultiSig':
    |  uint public threshold;             // immutable state
    |  mapping (address => bool) isOwner; // immutable state
  > |  address[] public ownersArr;        // immutable state
    |
    |  function SimpleMultiSig(uint threshold_, address[] owners_) public {
  at /home/jiaming/mavs_srcs/contract@0x4eb88afb7022249572eb6da58f07549a6f4b9d93.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'SimpleMultiSig':
    |  // The address.call() syntax is no longer recommended, see:
    |  // https://github.com/ethereum/solidity/issues/2884
  > |  function executeCall(address to, uint256 value, bytes data) internal returns (bool success) {
    |    assembly {
    |      success := call(gas, to, value, add(data, 0x20), mload(data), 0, 0)
  at /home/jiaming/mavs_srcs/contract@0x4eb88afb7022249572eb6da58f07549a6f4b9d93.sol(45)

[33mWarning[0m for TODAmount in contract 'SimpleMultiSig':
    |  function executeCall(address to, uint256 value, bytes data) internal returns (bool success) {
    |    assembly {
  > |      success := call(gas, to, value, add(data, 0x20), mload(data), 0, 0)
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4eb88afb7022249572eb6da58f07549a6f4b9d93.sol(47)

[33mWarning[0m for TODReceiver in contract 'SimpleMultiSig':
    |  function executeCall(address to, uint256 value, bytes data) internal returns (bool success) {
    |    assembly {
  > |      success := call(gas, to, value, add(data, 0x20), mload(data), 0, 0)
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4eb88afb7022249572eb6da58f07549a6f4b9d93.sol(47)

[31mViolation[0m for UnhandledException in contract 'SimpleMultiSig':
    |  function executeCall(address to, uint256 value, bytes data) internal returns (bool success) {
    |    assembly {
  > |      success := call(gas, to, value, add(data, 0x20), mload(data), 0, 0)
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4eb88afb7022249572eb6da58f07549a6f4b9d93.sol(47)

[33mWarning[0m for UnhandledException in contract 'SimpleMultiSig':
    |    address lastAdd = address(0); // cannot have address(0) as an owner
    |    for (uint i = 0; i < threshold; i++) {
  > |      address recovered = ecrecover(txHash, sigV[i], sigR[i], sigS[i]);
    |      require(recovered > lastAdd && isOwner[recovered]);
    |      lastAdd = recovered;
  at /home/jiaming/mavs_srcs/contract@0x4eb88afb7022249572eb6da58f07549a6f4b9d93.sol(33)

[33mWarning[0m for UnhandledException in contract 'SimpleMultiSig':
    |  function executeCall(address to, uint256 value, bytes data) internal returns (bool success) {
    |    assembly {
  > |      success := call(gas, to, value, add(data, 0x20), mload(data), 0, 0)
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4eb88afb7022249572eb6da58f07549a6f4b9d93.sol(47)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'SimpleMultiSig':
    |  function executeCall(address to, uint256 value, bytes data) internal returns (bool success) {
    |    assembly {
  > |      success := call(gas, to, value, add(data, 0x20), mload(data), 0, 0)
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4eb88afb7022249572eb6da58f07549a6f4b9d93.sol(47)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleMultiSig':
    |    address lastAdd = address(0); // cannot have address(0) as an owner
    |    for (uint i = 0; i < threshold; i++) {
  > |      address recovered = ecrecover(txHash, sigV[i], sigR[i], sigS[i]);
    |      require(recovered > lastAdd && isOwner[recovered]);
    |      lastAdd = recovered;
  at /home/jiaming/mavs_srcs/contract@0x4eb88afb7022249572eb6da58f07549a6f4b9d93.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMultiSig':
    |
    |    // If we make it here all signatures are accounted for
  > |    nonce = nonce + 1;
    |    require(executeCall(destination, value, data));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4eb88afb7022249572eb6da58f07549a6f4b9d93.sol(39)


