Processing contract: /home/jiaming/mavs_srcs/contract@0x6a373436bc657249021da8c329594de2f14dc5f6.sol:ERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x6a373436bc657249021da8c329594de2f14dc5f6.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6a373436bc657249021da8c329594de2f14dc5f6.sol:PTM
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6a373436bc657249021da8c329594de2f14dc5f6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |// Contract must have an owner
  > |contract Owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6a373436bc657249021da8c329594de2f14dc5f6.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function setOwner(address _owner) onlyOwner public {
    |        owner = _owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6a373436bc657249021da8c329594de2f14dc5f6.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// Contract must have an owner
    |contract Owned {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x6a373436bc657249021da8c329594de2f14dc5f6.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function setOwner(address _owner) onlyOwner public {
  > |        owner = _owner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6a373436bc657249021da8c329594de2f14dc5f6.sol(48)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |// SafeMath methods
  > |library SafeMath {
    |    function add(uint256 _a, uint256 _b) internal pure returns (uint256) {
    |        uint256 c = _a + _b;
  at /home/jiaming/mavs_srcs/contract@0x6a373436bc657249021da8c329594de2f14dc5f6.sol(15)


