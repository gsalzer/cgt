Processing contract: /home/jiaming/mavs_srcs/contract@0x2f5d196660eaead329194347e513d486d11984fa.sol:Voting
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
  at /home/jiaming/mavs_srcs/contract@0x2f5d196660eaead329194347e513d486d11984fa.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Voting':
    |    }
    |    
  > |    function changeOwner(address _owner) public onlyOwner returns(bool){
    |        owner = _owner;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2f5d196660eaead329194347e513d486d11984fa.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'Voting':
    |    }
    |    
  > |    function likeVoting(uint256 videoNum) public onlyOwner returns(bool){
    |        totalVoting[videoNum] = totalVoting[videoNum] + 1;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2f5d196660eaead329194347e513d486d11984fa.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'Voting':
    |    }
    |
  > |    function starVoting(uint256 videoNum, uint8 star) public onlyOwner returns(bool) {
    |        if(star > 0 && star < 6){
    |            totalVoting[videoNum] = totalVoting[videoNum] + star;
  at /home/jiaming/mavs_srcs/contract@0x2f5d196660eaead329194347e513d486d11984fa.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'Voting':
    |    }
    |
  > |    function voteVoting(uint256 videoNum) onlyOwner public returns(bool){
    |        totalVoting[videoNum] = totalVoting[videoNum] + 3;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2f5d196660eaead329194347e513d486d11984fa.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'Voting':
    |    }
    |    
  > |    function getVotingData(uint256 videoNum) public view returns(uint256){
    |        return totalVoting[videoNum];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f5d196660eaead329194347e513d486d11984fa.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Voting':
    |    
    |    function changeOwner(address _owner) public onlyOwner returns(bool){
  > |        owner = _owner;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f5d196660eaead329194347e513d486d11984fa.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'Voting':
    |    
    |    function likeVoting(uint256 videoNum) public onlyOwner returns(bool){
  > |        totalVoting[videoNum] = totalVoting[videoNum] + 1;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f5d196660eaead329194347e513d486d11984fa.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'Voting':
    |    function starVoting(uint256 videoNum, uint8 star) public onlyOwner returns(bool) {
    |        if(star > 0 && star < 6){
  > |            totalVoting[videoNum] = totalVoting[videoNum] + star;
    |            return true;
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x2f5d196660eaead329194347e513d486d11984fa.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'Voting':
    |
    |    function voteVoting(uint256 videoNum) onlyOwner public returns(bool){
  > |        totalVoting[videoNum] = totalVoting[videoNum] + 3;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f5d196660eaead329194347e513d486d11984fa.sol(36)


