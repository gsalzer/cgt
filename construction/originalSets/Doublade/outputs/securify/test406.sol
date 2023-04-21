Processing contract: /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol:TheImmortals
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol:TheImmortalsPhoto
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'TheImmortals':
    |	function withdraw() onlyOwner {
    |	    address myAddress = this;
  > |	    owner.transfer(myAddress.balance);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(68)

[33mWarning[0m for LockedEther in contract 'TheImmortals':
    |}
    |
  > |contract TheImmortals {
    |    address public owner;
    |    mapping (address => address[]) public immortals;
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'TheImmortals':
    |contract TheImmortals {
    |    address public owner;
  > |    mapping (address => address[]) public immortals;
    |    address[] public accounts;
    |    uint8 public numberImmortals;
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'TheImmortals':
    |}
    |
  > |contract TheImmortals {
    |    address public owner;
    |    mapping (address => address[]) public immortals;
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TheImmortals':
    |
    |contract TheImmortals {
  > |    address public owner;
    |    mapping (address => address[]) public immortals;
    |    address[] public accounts;
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'TheImmortals':
    |    address public owner;
    |    mapping (address => address[]) public immortals;
  > |    address[] public accounts;
    |    uint8 public numberImmortals;
    |    uint constant public maxImmortals = 5;
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'TheImmortals':
    |    mapping (address => address[]) public immortals;
    |    address[] public accounts;
  > |    uint8 public numberImmortals;
    |    uint constant public maxImmortals = 5;
    |    
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'TheImmortals':
    |    address[] public accounts;
    |    uint8 public numberImmortals;
  > |    uint constant public maxImmortals = 5;
    |    
    |     modifier onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'TheImmortals':
    |	}
    |	
  > |	function withdraw() onlyOwner {
    |	    address myAddress = this;
    |	    owner.transfer(myAddress.balance);
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(66)

[31mViolation[0m for TODAmount in contract 'TheImmortals':
    |	function withdraw() onlyOwner {
    |	    address myAddress = this;
  > |	    owner.transfer(myAddress.balance);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(68)

[33mWarning[0m for TODReceiver in contract 'TheImmortals':
    |	function withdraw() onlyOwner {
    |	    address myAddress = this;
  > |	    owner.transfer(myAddress.balance);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(68)

[33mWarning[0m for UnhandledException in contract 'TheImmortals':
    |	    for (uint8 i=0;i<immortals[userAddress].length;i++){
    |	        TheImmortalsPhoto faceContract = TheImmortalsPhoto(immortals[userAddress][i]);
  > |	        faceContract.removeFace();
    |            immortals[userAddress][i] = 0x0;
    |	    }
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(61)

[33mWarning[0m for UnhandledException in contract 'TheImmortals':
    |	function withdraw() onlyOwner {
    |	    address myAddress = this;
  > |	    owner.transfer(myAddress.balance);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(68)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TheImmortals':
    |	    for (uint8 i=0;i<immortals[userAddress].length;i++){
    |	        TheImmortalsPhoto faceContract = TheImmortalsPhoto(immortals[userAddress][i]);
  > |	        faceContract.removeFace();
    |            immortals[userAddress][i] = 0x0;
    |	    }
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(61)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TheImmortals':
    |	function withdraw() onlyOwner {
    |	    address myAddress = this;
  > |	    owner.transfer(myAddress.balance);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'TheImmortals':
    |          accounts.push(msg.sender);
    |        }
  > |        numberImmortals++;
    |
    |        PhotoAdded(msg.sender, newFace);
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'TheImmortals':
    |	        TheImmortalsPhoto faceContract = TheImmortalsPhoto(immortals[userAddress][i]);
    |	        faceContract.removeFace();
  > |            immortals[userAddress][i] = 0x0;
    |	    }
    |	}
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'TheImmortals':
    |pragma solidity ^0.4.14;
    |
  > |contract TheImmortalsPhoto {
    |	string public photoData;
    |	string public photoText;
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'TheImmortals':
    |
    |        address newFace = new TheImmortalsPhoto(_photoData, _photoText, msg.sender, address(this));
  > |        immortals[msg.sender].push(newFace);
    |        if (immortals[msg.sender].length == 1){
    |          accounts.push(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(49)

[31mViolation[0m for LockedEther in contract 'TheImmortalsPhoto':
    |pragma solidity ^0.4.14;
    |
  > |contract TheImmortalsPhoto {
    |	string public photoData;
    |	string public photoText;
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'TheImmortalsPhoto':
    |pragma solidity ^0.4.14;
    |
  > |contract TheImmortalsPhoto {
    |	string public photoData;
    |	string public photoText;
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'TheImmortalsPhoto':
    |	    photoData = "";
    |	    photoText = "";
  > |        deleted = true;
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'TheImmortalsPhoto':
    |pragma solidity ^0.4.14;
    |
  > |contract TheImmortalsPhoto {
    |	string public photoData;
    |	string public photoText;
  at /home/jiaming/mavs_srcs/contract@0x1a4ccc393320c882fc3074de21455a054d59ccfa.sol(3)


