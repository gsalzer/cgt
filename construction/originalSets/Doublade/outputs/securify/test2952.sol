Processing contract: /home/jiaming/mavs_srcs/contract@0xc20f00395c347c15806c4d26ce74dcb8d9fa8f9f.sol:Likedapp
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Likedapp':
    |    function withdraw() external{
    |        require(msg.sender == iown);
  > |        iown.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc20f00395c347c15806c4d26ce74dcb8d9fa8f9f.sol(109)

[33mWarning[0m for DAOConstantGas in contract 'Likedapp':
    |    function withdrawAmount(uint amount) external{
    |        require(msg.sender == iown);
  > |        iown.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc20f00395c347c15806c4d26ce74dcb8d9fa8f9f.sol(114)

[33mWarning[0m for LockedEther in contract 'Likedapp':
    |pragma solidity ^0.4.2;
    |
  > |contract Likedapp{
    |
    |    //state variables
  at /home/jiaming/mavs_srcs/contract@0xc20f00395c347c15806c4d26ce74dcb8d9fa8f9f.sol(3)

[31mViolation[0m for TODAmount in contract 'Likedapp':
    |    function withdraw() external{
    |        require(msg.sender == iown);
  > |        iown.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc20f00395c347c15806c4d26ce74dcb8d9fa8f9f.sol(109)

[33mWarning[0m for TODAmount in contract 'Likedapp':
    |    function withdrawAmount(uint amount) external{
    |        require(msg.sender == iown);
  > |        iown.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc20f00395c347c15806c4d26ce74dcb8d9fa8f9f.sol(114)

[33mWarning[0m for UnhandledException in contract 'Likedapp':
    |    function withdraw() external{
    |        require(msg.sender == iown);
  > |        iown.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc20f00395c347c15806c4d26ce74dcb8d9fa8f9f.sol(109)

[33mWarning[0m for UnhandledException in contract 'Likedapp':
    |    function withdrawAmount(uint amount) external{
    |        require(msg.sender == iown);
  > |        iown.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc20f00395c347c15806c4d26ce74dcb8d9fa8f9f.sol(114)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Likedapp':
    |    function withdraw() external{
    |        require(msg.sender == iown);
  > |        iown.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc20f00395c347c15806c4d26ce74dcb8d9fa8f9f.sol(109)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Likedapp':
    |    function withdrawAmount(uint amount) external{
    |        require(msg.sender == iown);
  > |        iown.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc20f00395c347c15806c4d26ce74dcb8d9fa8f9f.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'Likedapp':
    |pragma solidity ^0.4.2;
    |
  > |contract Likedapp{
    |
    |    //state variables
  at /home/jiaming/mavs_srcs/contract@0xc20f00395c347c15806c4d26ce74dcb8d9fa8f9f.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Likedapp':
    |        u.username = _username;
    |        u.userReactionCount++;
  > |        users[msg.sender] = u;
    |
    |        //UserCreated(userCount);
  at /home/jiaming/mavs_srcs/contract@0xc20f00395c347c15806c4d26ce74dcb8d9fa8f9f.sol(65)


