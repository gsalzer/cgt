Processing contract: /home/jiaming/mavs_srcs/contract@0xa5b99587151ea5e63c642c474c6ce375812e5627.sol:EthBird
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'EthBird':
    |    function awardHighScore() public onlyOwner {
    |        uint256 ownerCommision = address(this).balance / 10;
  > |        address(owner).transfer(ownerCommision);
    |        address(highScoreUser).transfer(address(this).balance);
    |        contestStartTime = now;
  at /home/jiaming/mavs_srcs/contract@0xa5b99587151ea5e63c642c474c6ce375812e5627.sol(59)

[31mViolation[0m for DAOConstantGas in contract 'EthBird':
    |        uint256 ownerCommision = address(this).balance / 10;
    |        address(owner).transfer(ownerCommision);
  > |        address(highScoreUser).transfer(address(this).balance);
    |        contestStartTime = now;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5b99587151ea5e63c642c474c6ce375812e5627.sol(60)

[33mWarning[0m for LockedEther in contract 'EthBird':
    |pragma solidity ^0.4.0;
    |
  > |contract EthBird {
    |    
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xa5b99587151ea5e63c642c474c6ce375812e5627.sol(3)

[31mViolation[0m for TODAmount in contract 'EthBird':
    |    function awardHighScore() public onlyOwner {
    |        uint256 ownerCommision = address(this).balance / 10;
  > |        address(owner).transfer(ownerCommision);
    |        address(highScoreUser).transfer(address(this).balance);
    |        contestStartTime = now;
  at /home/jiaming/mavs_srcs/contract@0xa5b99587151ea5e63c642c474c6ce375812e5627.sol(59)

[31mViolation[0m for TODAmount in contract 'EthBird':
    |        uint256 ownerCommision = address(this).balance / 10;
    |        address(owner).transfer(ownerCommision);
  > |        address(highScoreUser).transfer(address(this).balance);
    |        contestStartTime = now;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5b99587151ea5e63c642c474c6ce375812e5627.sol(60)

[31mViolation[0m for TODReceiver in contract 'EthBird':
    |        uint256 ownerCommision = address(this).balance / 10;
    |        address(owner).transfer(ownerCommision);
  > |        address(highScoreUser).transfer(address(this).balance);
    |        contestStartTime = now;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5b99587151ea5e63c642c474c6ce375812e5627.sol(60)

[33mWarning[0m for UnhandledException in contract 'EthBird':
    |    function awardHighScore() public onlyOwner {
    |        uint256 ownerCommision = address(this).balance / 10;
  > |        address(owner).transfer(ownerCommision);
    |        address(highScoreUser).transfer(address(this).balance);
    |        contestStartTime = now;
  at /home/jiaming/mavs_srcs/contract@0xa5b99587151ea5e63c642c474c6ce375812e5627.sol(59)

[33mWarning[0m for UnhandledException in contract 'EthBird':
    |        uint256 ownerCommision = address(this).balance / 10;
    |        address(owner).transfer(ownerCommision);
  > |        address(highScoreUser).transfer(address(this).balance);
    |        contestStartTime = now;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5b99587151ea5e63c642c474c6ce375812e5627.sol(60)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthBird':
    |    function awardHighScore() public onlyOwner {
    |        uint256 ownerCommision = address(this).balance / 10;
  > |        address(owner).transfer(ownerCommision);
    |        address(highScoreUser).transfer(address(this).balance);
    |        contestStartTime = now;
  at /home/jiaming/mavs_srcs/contract@0xa5b99587151ea5e63c642c474c6ce375812e5627.sol(59)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthBird':
    |        uint256 ownerCommision = address(this).balance / 10;
    |        address(owner).transfer(ownerCommision);
  > |        address(highScoreUser).transfer(address(this).balance);
    |        contestStartTime = now;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5b99587151ea5e63c642c474c6ce375812e5627.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'EthBird':
    |    function payEntryFee() public payable  {
    |        if (msg.value >= 0.001 ether) {
  > |            paidUsers[msg.sender] = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5b99587151ea5e63c642c474c6ce375812e5627.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'EthBird':
    |        if(paidUsers[userToScore]){
    |            if(score > 0 && score >= currentHighScore){
  > |                highScoreUser = userToScore;
    |                currentHighScore = score;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xa5b99587151ea5e63c642c474c6ce375812e5627.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'EthBird':
    |            if(score > 0 && score >= currentHighScore){
    |                highScoreUser = userToScore;
  > |                currentHighScore = score;
    |            }
    |            if(now >= contestStartTime + 1 days){
  at /home/jiaming/mavs_srcs/contract@0xa5b99587151ea5e63c642c474c6ce375812e5627.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'EthBird':
    |        address(owner).transfer(ownerCommision);
    |        address(highScoreUser).transfer(address(this).balance);
  > |        contestStartTime = now;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa5b99587151ea5e63c642c474c6ce375812e5627.sol(61)


