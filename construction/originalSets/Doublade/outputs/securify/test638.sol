Processing contract: /home/jiaming/mavs_srcs/contract@0x28c6507299b50da6fced9a60532798bd371fedd2.sol:BlockableContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x28c6507299b50da6fced9a60532798bd371fedd2.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x28c6507299b50da6fced9a60532798bd371fedd2.sol:OwnableContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x28c6507299b50da6fced9a60532798bd371fedd2.sol:ldoh
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BlockableContract':
    |
    |// Contract 02
  > |contract BlockableContract is OwnableContract {    
    |    event onBlockHODLs(bool status);
    |    bool public blockedContract;
  at /home/jiaming/mavs_srcs/contract@0x28c6507299b50da6fced9a60532798bd371fedd2.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockableContract':
    |    function changeOwner(address newOwner) onlyOwner public {
    |        require(newOwner != superOwner);       
  > |        superOwner = newOwner;     
    |        emit onTransferOwnership(superOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28c6507299b50da6fced9a60532798bd371fedd2.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockableContract':
    |    
    |    function doBlockContract() onlyOwner public {
  > |        blockedContract = true;        
    |        emit onBlockHODLs(blockedContract);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28c6507299b50da6fced9a60532798bd371fedd2.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockableContract':
    |    
    |    function unBlockContract() onlyOwner public {
  > |        blockedContract = false;        
    |        emit onBlockHODLs(blockedContract);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28c6507299b50da6fced9a60532798bd371fedd2.sol(50)

[33mWarning[0m for LockedEther in contract 'OwnableContract':
    |
    |// Contract 01
  > |contract OwnableContract {    
    |    event onTransferOwnership(address newOwner);
    |	address superOwner; 
  at /home/jiaming/mavs_srcs/contract@0x28c6507299b50da6fced9a60532798bd371fedd2.sol(7)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnableContract':
    |    function changeOwner(address newOwner) onlyOwner public {
    |        require(newOwner != superOwner);       
  > |        superOwner = newOwner;     
    |        emit onTransferOwnership(superOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28c6507299b50da6fced9a60532798bd371fedd2.sol(25)


