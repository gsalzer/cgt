Processing contract: /home/jiaming/mavs_srcs/contract@0x99a3a5333b4eb80192149f9edd42d1d57ac591ee.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x99a3a5333b4eb80192149f9edd42d1d57ac591ee.sol:CELT
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99a3a5333b4eb80192149f9edd42d1d57ac591ee.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x99a3a5333b4eb80192149f9edd42d1d57ac591ee.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99a3a5333b4eb80192149f9edd42d1d57ac591ee.sol:PlincInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x99a3a5333b4eb80192149f9edd42d1d57ac591ee.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x99a3a5333b4eb80192149f9edd42d1d57ac591ee.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99a3a5333b4eb80192149f9edd42d1d57ac591ee.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x99a3a5333b4eb80192149f9edd42d1d57ac591ee.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x99a3a5333b4eb80192149f9edd42d1d57ac591ee.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x99a3a5333b4eb80192149f9edd42d1d57ac591ee.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x99a3a5333b4eb80192149f9edd42d1d57ac591ee.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99a3a5333b4eb80192149f9edd42d1d57ac591ee.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x99a3a5333b4eb80192149f9edd42d1d57ac591ee.sol(52)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x99a3a5333b4eb80192149f9edd42d1d57ac591ee.sol(8)


