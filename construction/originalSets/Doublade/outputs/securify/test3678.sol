Processing contract: /home/jiaming/mavs_srcs/contract@0xf10ca6b153562ca089241adc5983a3ba25872580.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xf10ca6b153562ca089241adc5983a3ba25872580.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xf10ca6b153562ca089241adc5983a3ba25872580.sol:ExtendedMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf10ca6b153562ca089241adc5983a3ba25872580.sol:ORAK
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf10ca6b153562ca089241adc5983a3ba25872580.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf10ca6b153562ca089241adc5983a3ba25872580.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0xf10ca6b153562ca089241adc5983a3ba25872580.sol(67)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xf10ca6b153562ca089241adc5983a3ba25872580.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xf10ca6b153562ca089241adc5983a3ba25872580.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xf10ca6b153562ca089241adc5983a3ba25872580.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    address public owner;
    |
  > |    address public newOwner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf10ca6b153562ca089241adc5983a3ba25872580.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() public {
    |
    |        require(msg.sender == newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf10ca6b153562ca089241adc5983a3ba25872580.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |
  > |        newOwner = _newOwner;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf10ca6b153562ca089241adc5983a3ba25872580.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |
  > |        owner = newOwner;
    |
    |        newOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xf10ca6b153562ca089241adc5983a3ba25872580.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        owner = newOwner;
    |
  > |        newOwner = address(0);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf10ca6b153562ca089241adc5983a3ba25872580.sol(173)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |
  > |library SafeMath {
    |
    |    function add(uint a, uint b) internal pure returns (uint c) {
  at /home/jiaming/mavs_srcs/contract@0xf10ca6b153562ca089241adc5983a3ba25872580.sol(29)


