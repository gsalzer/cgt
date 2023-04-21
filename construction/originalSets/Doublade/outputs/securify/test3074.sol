Processing contract: /home/jiaming/mavs_srcs/contract@0xc979fb48ab1116abf439fbcb36c666a18ee5b97b.sol:BlockableContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc979fb48ab1116abf439fbcb36c666a18ee5b97b.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xc979fb48ab1116abf439fbcb36c666a18ee5b97b.sol:OwnableContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc979fb48ab1116abf439fbcb36c666a18ee5b97b.sol:ldoh
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
  at /home/jiaming/mavs_srcs/contract@0xc979fb48ab1116abf439fbcb36c666a18ee5b97b.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockableContract':
    |    function changeOwner(address newOwner) onlyOwner public {
    |        require(newOwner != superOwner);       
  > |        superOwner = newOwner;     
    |        emit onTransferOwnership(superOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc979fb48ab1116abf439fbcb36c666a18ee5b97b.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockableContract':
    |    
    |    function doBlockContract() onlyOwner public {
  > |        blockedContract = true;        
    |        emit onBlockHODLs(blockedContract);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc979fb48ab1116abf439fbcb36c666a18ee5b97b.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockableContract':
    |    
    |    function unBlockContract() onlyOwner public {
  > |        blockedContract = false;        
    |        emit onBlockHODLs(blockedContract);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc979fb48ab1116abf439fbcb36c666a18ee5b97b.sol(50)

[33mWarning[0m for LockedEther in contract 'OwnableContract':
    |
    |// Contract 01
  > |contract OwnableContract {    
    |    event onTransferOwnership(address newOwner);
    |	address superOwner; 
  at /home/jiaming/mavs_srcs/contract@0xc979fb48ab1116abf439fbcb36c666a18ee5b97b.sol(7)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnableContract':
    |    function changeOwner(address newOwner) onlyOwner public {
    |        require(newOwner != superOwner);       
  > |        superOwner = newOwner;     
    |        emit onTransferOwnership(superOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc979fb48ab1116abf439fbcb36c666a18ee5b97b.sol(25)


