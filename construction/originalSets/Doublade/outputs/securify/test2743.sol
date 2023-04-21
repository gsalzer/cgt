Processing contract: /home/jiaming/mavs_srcs/contract@0xb3dc3c839a02134f9932cbd60f3566c231cc90cc.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xb3dc3c839a02134f9932cbd60f3566c231cc90cc.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xb3dc3c839a02134f9932cbd60f3566c231cc90cc.sol:ExtendedMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb3dc3c839a02134f9932cbd60f3566c231cc90cc.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb3dc3c839a02134f9932cbd60f3566c231cc90cc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb3dc3c839a02134f9932cbd60f3566c231cc90cc.sol:Skorch
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ExtendedMath':
    |//209899900000000
    |
  > |library ExtendedMath {
    |    //return the smaller of the two inputs (a or b)
    |    function limitLessThan(uint a, uint b) internal pure returns (uint c) {
  at /home/jiaming/mavs_srcs/contract@0xb3dc3c839a02134f9932cbd60f3566c231cc90cc.sol(67)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xb3dc3c839a02134f9932cbd60f3566c231cc90cc.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb3dc3c839a02134f9932cbd60f3566c231cc90cc.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xb3dc3c839a02134f9932cbd60f3566c231cc90cc.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    address public owner;
    |
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xb3dc3c839a02134f9932cbd60f3566c231cc90cc.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb3dc3c839a02134f9932cbd60f3566c231cc90cc.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb3dc3c839a02134f9932cbd60f3566c231cc90cc.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb3dc3c839a02134f9932cbd60f3566c231cc90cc.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb3dc3c839a02134f9932cbd60f3566c231cc90cc.sol(117)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |    function add(uint a, uint b) internal pure returns (uint c) {
  at /home/jiaming/mavs_srcs/contract@0xb3dc3c839a02134f9932cbd60f3566c231cc90cc.sol(42)


