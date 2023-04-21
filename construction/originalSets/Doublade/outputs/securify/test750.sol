Processing contract: /home/jiaming/mavs_srcs/contract@0x2f96ca665bff1171fe921bdecefbad51e2576395.sol:ContractStakeToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f96ca665bff1171fe921bdecefbad51e2576395.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f96ca665bff1171fe921bdecefbad51e2576395.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x2f96ca665bff1171fe921bdecefbad51e2576395.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnerChanged(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2f96ca665bff1171fe921bdecefbad51e2576395.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param _newOwner The address to transfer ownership to.
    |     */
  > |    function changeOwner(address _newOwner) onlyOwner public {
    |        require(_newOwner != address(0));
    |        OwnerChanged(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2f96ca665bff1171fe921bdecefbad51e2576395.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0));
    |        OwnerChanged(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f96ca665bff1171fe921bdecefbad51e2576395.sol(78)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x2f96ca665bff1171fe921bdecefbad51e2576395.sol(3)


