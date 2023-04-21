Processing contract: /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol:BonusCalculator
Processing contract: /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol:GoldeaBonusCalculator
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'GoldeaBonusCalculator':
    |}
    |
  > |contract GoldeaBonusCalculator is BonusCalculator, Ownable {
    |    uint public start;
    |    uint public end;
  at /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'GoldeaBonusCalculator':
    |    }
    |
  > |    function setStart(uint256 _start) onlyOwner() {
    |        start = _start;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'GoldeaBonusCalculator':
    |    }
    |
  > |    function setEnd(uint256 _end) onlyOwner() {
    |        end = _end;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'GoldeaBonusCalculator':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'GoldeaBonusCalculator':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'GoldeaBonusCalculator':
    |
    |contract GoldeaBonusCalculator is BonusCalculator, Ownable {
  > |    uint public start;
    |    uint public end;
    |    uint constant period = 86400 * 7;
  at /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'GoldeaBonusCalculator':
    |contract GoldeaBonusCalculator is BonusCalculator, Ownable {
    |    uint public start;
  > |    uint public end;
    |    uint constant period = 86400 * 7;
    |    mapping (uint => uint8) bonuses;
  at /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'GoldeaBonusCalculator':
    |    }
    |
  > |    function getBonus() constant returns (uint) {
    |        assert(now > start);
    |        assert(now < end);
  at /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldeaBonusCalculator':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldeaBonusCalculator':
    |
    |    function setStart(uint256 _start) onlyOwner() {
  > |        start = _start;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldeaBonusCalculator':
    |
    |    function setEnd(uint256 _end) onlyOwner() {
  > |        end = _end;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol(72)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.13;
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4dfbee2a48e07fa5d4a2b0a3a9db823bc73be8da.sol(31)


