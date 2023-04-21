Processing contract: /home/jiaming/mavs_srcs/contract@0x98947880abe5ba3d7fba603db9c58da03eb9af9b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x98947880abe5ba3d7fba603db9c58da03eb9af9b.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x98947880abe5ba3d7fba603db9c58da03eb9af9b.sol:EtherStake
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x98947880abe5ba3d7fba603db9c58da03eb9af9b.sol:EtherStakeToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x98947880abe5ba3d7fba603db9c58da03eb9af9b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x98947880abe5ba3d7fba603db9c58da03eb9af9b.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x98947880abe5ba3d7fba603db9c58da03eb9af9b.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x98947880abe5ba3d7fba603db9c58da03eb9af9b.sol(41)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x98947880abe5ba3d7fba603db9c58da03eb9af9b.sol(8)


