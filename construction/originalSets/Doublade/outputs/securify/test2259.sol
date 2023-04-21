Processing contract: /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol:NameFilter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol:PlayerBook
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol:PlayerBookReceiverInterface
[33mWarning[0m for LockedEther in contract 'NameFilter':
    |// File: contracts\utils\NameFilter.sol
    |
  > |library NameFilter {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(5)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(119)

[33mWarning[0m for DAOConstantGas in contract 'PlayerBook':
    |    function withdrawBalance() public onlyCOO {
    |      uint _amount = address(this).balance;
  > |      CFO.transfer(_amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(226)

[33mWarning[0m for LockedEther in contract 'PlayerBook':
    |}
    |
  > |contract PlayerBook is Ownable {
    |    using NameFilter for string;
    |    
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(130)

[31mViolation[0m for TODAmount in contract 'PlayerBook':
    |    function withdrawBalance() public onlyCOO {
    |      uint _amount = address(this).balance;
  > |      CFO.transfer(_amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(226)

[31mViolation[0m for TODReceiver in contract 'PlayerBook':
    |    function withdrawBalance() public onlyCOO {
    |      uint _amount = address(this).balance;
  > |      CFO.transfer(_amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(226)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |      addrToNames[_addr].push(_nameString);
    |      // update current game user info 
  > |      currentGame.receivePlayerInfo(_addr, _nameString); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(207)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |      addrToNames[_addr].push(_nameString);
    |      // update current game user info 
  > |      currentGame.receivePlayerInfo(_addr, _nameString);       
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(216)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |    function withdrawBalance() public onlyCOO {
    |      uint _amount = address(this).balance;
  > |      CFO.transfer(_amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |      addrToNames[_addr].push(_nameString);
    |      // update current game user info 
  > |      currentGame.receivePlayerInfo(_addr, _nameString); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |      addrToNames[_addr].push(_nameString);
    |      // update current game user info 
  > |      currentGame.receivePlayerInfo(_addr, _nameString);       
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |    function withdrawBalance() public onlyCOO {
    |      uint _amount = address(this).balance;
  > |      CFO.transfer(_amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerBook':
    |pragma solidity ^0.4.24;
    |
  > |// File: contracts\utils\NameFilter.sol
    |
    |library NameFilter {
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerBook':
    |}
    |
  > |contract PlayerBook is Ownable {
    |    using NameFilter for string;
    |    
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerBook':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerBook':
    |    
    |    function setCFO(address _CFO) onlyOwner public {
  > |        CFO = _CFO; 
    |    }  
    |  
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerBook':
    |  
    |    function setCOO(address _COO) onlyOwner public {
  > |        COO = _COO; 
    |    }  
    |
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerBook':
    |    
    |    function setCurrentGame(address _addr) public onlyCOO {
  > |        currentGame = PlayerBookReceiverInterface(_addr); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x92891c0a2fc4fa037b7b4fd348bb46649bac6567.sol(221)


