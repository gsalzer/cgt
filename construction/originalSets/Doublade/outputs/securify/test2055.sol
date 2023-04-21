Processing contract: /home/jiaming/mavs_srcs/contract@0x860df4c4a3ec207be16e39f96c8802470db9e799.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x860df4c4a3ec207be16e39f96c8802470db9e799.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x860df4c4a3ec207be16e39f96c8802470db9e799.sol:ERC918Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x860df4c4a3ec207be16e39f96c8802470db9e799.sol:ExtendedMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x860df4c4a3ec207be16e39f96c8802470db9e799.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x860df4c4a3ec207be16e39f96c8802470db9e799.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x860df4c4a3ec207be16e39f96c8802470db9e799.sol:_0xLitecoinToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ExtendedMath':
    |
    |
  > |library ExtendedMath {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x860df4c4a3ec207be16e39f96c8802470db9e799.sol(80)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x860df4c4a3ec207be16e39f96c8802470db9e799.sol(168)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x860df4c4a3ec207be16e39f96c8802470db9e799.sol(194)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x860df4c4a3ec207be16e39f96c8802470db9e799.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    address public owner;
    |
  > |    address public newOwner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x860df4c4a3ec207be16e39f96c8802470db9e799.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() public {
    |
    |        require(msg.sender == newOwner);
  at /home/jiaming/mavs_srcs/contract@0x860df4c4a3ec207be16e39f96c8802470db9e799.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |
  > |        newOwner = _newOwner;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x860df4c4a3ec207be16e39f96c8802470db9e799.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |
  > |        owner = newOwner;
    |
    |        newOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x860df4c4a3ec207be16e39f96c8802470db9e799.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        owner = newOwner;
    |
  > |        newOwner = address(0);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x860df4c4a3ec207be16e39f96c8802470db9e799.sol(208)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |
  > |library SafeMath {
    |
    |    function add(uint a, uint b) internal pure returns (uint c) {
  at /home/jiaming/mavs_srcs/contract@0x860df4c4a3ec207be16e39f96c8802470db9e799.sol(42)


