Processing contract: /home/jiaming/mavs_srcs/contract@0x269f1b8e3b874a813bdb6facb5f9e097f528b68b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x269f1b8e3b874a813bdb6facb5f9e097f528b68b.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x269f1b8e3b874a813bdb6facb5f9e097f528b68b.sol:EthereumUnlimited
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x269f1b8e3b874a813bdb6facb5f9e097f528b68b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x269f1b8e3b874a813bdb6facb5f9e097f528b68b.sol:PoSTokenStandard
Processing contract: /home/jiaming/mavs_srcs/contract@0x269f1b8e3b874a813bdb6facb5f9e097f528b68b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x269f1b8e3b874a813bdb6facb5f9e097f528b68b.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x269f1b8e3b874a813bdb6facb5f9e097f528b68b.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        require(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x269f1b8e3b874a813bdb6facb5f9e097f528b68b.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x269f1b8e3b874a813bdb6facb5f9e097f528b68b.sol(68)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x269f1b8e3b874a813bdb6facb5f9e097f528b68b.sol(8)


