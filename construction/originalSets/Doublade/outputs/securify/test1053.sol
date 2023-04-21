Processing contract: /home/jiaming/mavs_srcs/contract@0x42fdf1a3ae9f83e80690490ebc0a3b04c5b68de5.sol:CCBank
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x42fdf1a3ae9f83e80690490ebc0a3b04c5b68de5.sol:Objects
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x42fdf1a3ae9f83e80690490ebc0a3b04c5b68de5.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x42fdf1a3ae9f83e80690490ebc0a3b04c5b68de5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Objects':
    |}
    |
  > |library Objects {
    |    struct Investment {
    |        uint256 planId;
  at /home/jiaming/mavs_srcs/contract@0x42fdf1a3ae9f83e80690490ebc0a3b04c5b68de5.sol(32)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x42fdf1a3ae9f83e80690490ebc0a3b04c5b68de5.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    event onOwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x42fdf1a3ae9f83e80690490ebc0a3b04c5b68de5.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param _newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        emit onOwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x42fdf1a3ae9f83e80690490ebc0a3b04c5b68de5.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0));
    |        emit onOwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x42fdf1a3ae9f83e80690490ebc0a3b04c5b68de5.sol(93)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.25;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x42fdf1a3ae9f83e80690490ebc0a3b04c5b68de5.sol(3)


