Processing contract: /home/jiaming/mavs_srcs/contract@0xd8d48e52f39ab2d169c8b562c53589e6c71ac4d3.sol:ETHERCExchange
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd8d48e52f39ab2d169c8b562c53589e6c71ac4d3.sol:FeeModifiersInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xd8d48e52f39ab2d169c8b562c53589e6c71ac4d3.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd8d48e52f39ab2d169c8b562c53589e6c71ac4d3.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd8d48e52f39ab2d169c8b562c53589e6c71ac4d3.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xd8d48e52f39ab2d169c8b562c53589e6c71ac4d3.sol:TradeTrackerInterface
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd8d48e52f39ab2d169c8b562c53589e6c71ac4d3.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd8d48e52f39ab2d169c8b562c53589e6c71ac4d3.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd8d48e52f39ab2d169c8b562c53589e6c71ac4d3.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd8d48e52f39ab2d169c8b562c53589e6c71ac4d3.sol(86)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xd8d48e52f39ab2d169c8b562c53589e6c71ac4d3.sol(8)


