Processing contract: /home/jiaming/mavs_srcs/contract@0x51c5ca1bad35e5435ee65aa0170af5b6b662a416.sol:Voting
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Voting':
    |pragma solidity ^0.4.25;
    |
  > |contract Voting{
    |    address owner;
    |    mapping (uint256=>uint256) totalVoting;
  at /home/jiaming/mavs_srcs/contract@0x51c5ca1bad35e5435ee65aa0170af5b6b662a416.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Voting':
    |    }
    |    
  > |    function changeOwner(address _owner) public onlyOwner returns(bool){
    |        owner = _owner;
    |        emit ChangeOwner(owner);
  at /home/jiaming/mavs_srcs/contract@0x51c5ca1bad35e5435ee65aa0170af5b6b662a416.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'Voting':
    |    }
    |    
  > |    function likeVoting(uint256 videoNum) public onlyOwner returns(bool){
    |        totalVoting[videoNum] = totalVoting[videoNum] + 1;
    |        Voting(videoNum, totalVoting[videoNum]);
  at /home/jiaming/mavs_srcs/contract@0x51c5ca1bad35e5435ee65aa0170af5b6b662a416.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'Voting':
    |    }
    |
  > |    function starVoting(uint256 videoNum, uint8 star) public onlyOwner returns(bool) {
    |        if(star > 0 && star < 6){
    |            totalVoting[videoNum] = totalVoting[videoNum] + star;
  at /home/jiaming/mavs_srcs/contract@0x51c5ca1bad35e5435ee65aa0170af5b6b662a416.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'Voting':
    |    }
    |
  > |    function voteVoting(uint256 videoNum) onlyOwner public returns(bool){
    |        totalVoting[videoNum] = totalVoting[videoNum] + 3;
    |        Voting(videoNum, totalVoting[videoNum]);
  at /home/jiaming/mavs_srcs/contract@0x51c5ca1bad35e5435ee65aa0170af5b6b662a416.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'Voting':
    |    }
    |    
  > |    function getVotingData(uint256 videoNum) public view returns(uint256){
    |        return totalVoting[videoNum];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51c5ca1bad35e5435ee65aa0170af5b6b662a416.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'Voting':
    |    
    |    function changeOwner(address _owner) public onlyOwner returns(bool){
  > |        owner = _owner;
    |        emit ChangeOwner(owner);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x51c5ca1bad35e5435ee65aa0170af5b6b662a416.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'Voting':
    |    
    |    function likeVoting(uint256 videoNum) public onlyOwner returns(bool){
  > |        totalVoting[videoNum] = totalVoting[videoNum] + 1;
    |        Voting(videoNum, totalVoting[videoNum]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x51c5ca1bad35e5435ee65aa0170af5b6b662a416.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'Voting':
    |    function starVoting(uint256 videoNum, uint8 star) public onlyOwner returns(bool) {
    |        if(star > 0 && star < 6){
  > |            totalVoting[videoNum] = totalVoting[videoNum] + star;
    |            Voting(videoNum, totalVoting[videoNum]);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x51c5ca1bad35e5435ee65aa0170af5b6b662a416.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'Voting':
    |
    |    function voteVoting(uint256 videoNum) onlyOwner public returns(bool){
  > |        totalVoting[videoNum] = totalVoting[videoNum] + 3;
    |        Voting(videoNum, totalVoting[videoNum]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x51c5ca1bad35e5435ee65aa0170af5b6b662a416.sol(42)


