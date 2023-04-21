Processing contract: /home/jiaming/mavs_srcs/contract@0x221e25cf96fd38679e47d8ea98a6649380870764.sol:Calculator
Processing contract: /home/jiaming/mavs_srcs/contract@0x221e25cf96fd38679e47d8ea98a6649380870764.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x221e25cf96fd38679e47d8ea98a6649380870764.sol:PriceCalculator
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x221e25cf96fd38679e47d8ea98a6649380870764.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x221e25cf96fd38679e47d8ea98a6649380870764.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x221e25cf96fd38679e47d8ea98a6649380870764.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x221e25cf96fd38679e47d8ea98a6649380870764.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x221e25cf96fd38679e47d8ea98a6649380870764.sol(61)

[33mWarning[0m for LockedEther in contract 'PriceCalculator':
    |}
    |
  > |contract PriceCalculator is Calculator, Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x221e25cf96fd38679e47d8ea98a6649380870764.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'PriceCalculator':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x221e25cf96fd38679e47d8ea98a6649380870764.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'PriceCalculator':
    |
    |    function setPrice(uint256 _price) onlyOwner {
  > |        price = _price;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x221e25cf96fd38679e47d8ea98a6649380870764.sol(80)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x221e25cf96fd38679e47d8ea98a6649380870764.sol(7)


