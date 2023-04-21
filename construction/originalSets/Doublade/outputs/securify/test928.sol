Processing contract: /home/jiaming/mavs_srcs/contract@0x3b1bcee51d853d6a2a9bc955b94c005f44892bdb.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b1bcee51d853d6a2a9bc955b94c005f44892bdb.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b1bcee51d853d6a2a9bc955b94c005f44892bdb.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b1bcee51d853d6a2a9bc955b94c005f44892bdb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |    address public owner;
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x3b1bcee51d853d6a2a9bc955b94c005f44892bdb.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    function Ownable() public {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x3b1bcee51d853d6a2a9bc955b94c005f44892bdb.sol(36)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x3b1bcee51d853d6a2a9bc955b94c005f44892bdb.sol(4)


