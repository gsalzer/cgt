Processing contract: /home/jiaming/mavs_srcs/contract@0x63cef38c75d9805a36d92fa291bae781b41861e1.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x63cef38c75d9805a36d92fa291bae781b41861e1.sol:R1Exchange
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x63cef38c75d9805a36d92fa291bae781b41861e1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x63cef38c75d9805a36d92fa291bae781b41861e1.sol:Token
[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x63cef38c75d9805a36d92fa291bae781b41861e1.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x63cef38c75d9805a36d92fa291bae781b41861e1.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x63cef38c75d9805a36d92fa291bae781b41861e1.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x63cef38c75d9805a36d92fa291bae781b41861e1.sol(54)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.20;
    |
  > |contract SafeMath {
    |
    |    function safeAdd(uint256 _x, uint256 _y) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x63cef38c75d9805a36d92fa291bae781b41861e1.sol(4)


