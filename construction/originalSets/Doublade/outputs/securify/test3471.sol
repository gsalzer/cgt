Processing contract: /home/jiaming/mavs_srcs/contract@0xe3843d4723d1ff350a9fa2cc48b74ea2dfb1dafe.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3843d4723d1ff350a9fa2cc48b74ea2dfb1dafe.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3843d4723d1ff350a9fa2cc48b74ea2dfb1dafe.sol:OMNIS
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3843d4723d1ff350a9fa2cc48b74ea2dfb1dafe.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3843d4723d1ff350a9fa2cc48b74ea2dfb1dafe.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3843d4723d1ff350a9fa2cc48b74ea2dfb1dafe.sol:StakerToken
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe3843d4723d1ff350a9fa2cc48b74ea2dfb1dafe.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xe3843d4723d1ff350a9fa2cc48b74ea2dfb1dafe.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe3843d4723d1ff350a9fa2cc48b74ea2dfb1dafe.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe3843d4723d1ff350a9fa2cc48b74ea2dfb1dafe.sol(74)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns(uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe3843d4723d1ff350a9fa2cc48b74ea2dfb1dafe.sol(18)


