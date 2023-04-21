Processing contract: /home/jiaming/mavs_srcs/contract@0xa77a2938712c2f91f9096d41dae7b4a79c60ebd7.sol:ctf
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'ctf':
    |pragma solidity ^0.4.18;
    |
  > |contract ctf {
    |    address public owner;
    |    // uint public secret;
  at /home/jiaming/mavs_srcs/contract@0xa77a2938712c2f91f9096d41dae7b4a79c60ebd7.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'ctf':
    |    function change_flag(uint newflag) public {
    |      require(msg.sender == owner); //make sure it's me
  > |      flag = newflag;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa77a2938712c2f91f9096d41dae7b4a79c60ebd7.sol(17)


