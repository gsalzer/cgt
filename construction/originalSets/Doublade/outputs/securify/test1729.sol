Processing contract: /home/jiaming/mavs_srcs/contract@0x6e77e5a78dbb526387bca6d52c46545ad5b17c5b.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e77e5a78dbb526387bca6d52c46545ad5b17c5b.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e77e5a78dbb526387bca6d52c46545ad5b17c5b.sol:MyToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e77e5a78dbb526387bca6d52c46545ad5b17c5b.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e77e5a78dbb526387bca6d52c46545ad5b17c5b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x6e77e5a78dbb526387bca6d52c46545ad5b17c5b.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x6e77e5a78dbb526387bca6d52c46545ad5b17c5b.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |    
  at /home/jiaming/mavs_srcs/contract@0x6e77e5a78dbb526387bca6d52c46545ad5b17c5b.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |    
    |
  at /home/jiaming/mavs_srcs/contract@0x6e77e5a78dbb526387bca6d52c46545ad5b17c5b.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6e77e5a78dbb526387bca6d52c46545ad5b17c5b.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
  > |        owner = newOwner;
    |    }
    |    // function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x6e77e5a78dbb526387bca6d52c46545ad5b17c5b.sol(75)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x6e77e5a78dbb526387bca6d52c46545ad5b17c5b.sol(6)


