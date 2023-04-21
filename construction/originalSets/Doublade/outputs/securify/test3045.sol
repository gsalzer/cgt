Processing contract: /home/jiaming/mavs_srcs/contract@0xc72684c0495da31a24f83197245cd7aa78f816d2.sol:SlavenSS
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'SlavenSS':
    |    function withdraw() onlySlaven external {
    |        require (slavenAdress != address(0));
  > |        require(slavenAdress.send(this.balance));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc72684c0495da31a24f83197245cd7aa78f816d2.sol(38)

[33mWarning[0m for LockedEther in contract 'SlavenSS':
    |pragma solidity ^0.4.19;
  > |contract SlavenSS {
    |    
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xc72684c0495da31a24f83197245cd7aa78f816d2.sol(2)

[31mViolation[0m for MissingInputValidation in contract 'SlavenSS':
    |    }
    |    
  > |    function changeHash(bytes32 newTargetHash) public onlyOwner {
    |        targetHash = newTargetHash;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc72684c0495da31a24f83197245cd7aa78f816d2.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'SlavenSS':
    |contract SlavenSS {
    |    
  > |    address public owner;
    |    address public slavenAdress;
    |    
  at /home/jiaming/mavs_srcs/contract@0xc72684c0495da31a24f83197245cd7aa78f816d2.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'SlavenSS':
    |    
    |    address public owner;
  > |    address public slavenAdress;
    |    
    |    bytes32 private targetHash = 0xa8e19a7b59881fcc24f7eb078a8e730ef446b05a404d078341862359ba05ade6; 
  at /home/jiaming/mavs_srcs/contract@0xc72684c0495da31a24f83197245cd7aa78f816d2.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'SlavenSS':
    |    }
    |    
  > |    function registerAsSlaven(string passphrase) public {
    |        require (keccak256(passphrase) == targetHash);
    |        slavenAdress = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xc72684c0495da31a24f83197245cd7aa78f816d2.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'SlavenSS':
    |    }
    |    
  > |    function deposit() payable external {
    |        //deposits money to Slaven SS fund
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc72684c0495da31a24f83197245cd7aa78f816d2.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'SlavenSS':
    |    }
    |    
  > |    function withdraw() onlySlaven external {
    |        require (slavenAdress != address(0));
    |        require(slavenAdress.send(this.balance));
  at /home/jiaming/mavs_srcs/contract@0xc72684c0495da31a24f83197245cd7aa78f816d2.sol(36)

[31mViolation[0m for TODAmount in contract 'SlavenSS':
    |    function withdraw() onlySlaven external {
    |        require (slavenAdress != address(0));
  > |        require(slavenAdress.send(this.balance));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc72684c0495da31a24f83197245cd7aa78f816d2.sol(38)

[31mViolation[0m for TODReceiver in contract 'SlavenSS':
    |    function withdraw() onlySlaven external {
    |        require (slavenAdress != address(0));
  > |        require(slavenAdress.send(this.balance));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc72684c0495da31a24f83197245cd7aa78f816d2.sol(38)

[33mWarning[0m for UnhandledException in contract 'SlavenSS':
    |    function withdraw() onlySlaven external {
    |        require (slavenAdress != address(0));
  > |        require(slavenAdress.send(this.balance));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc72684c0495da31a24f83197245cd7aa78f816d2.sol(38)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SlavenSS':
    |    function withdraw() onlySlaven external {
    |        require (slavenAdress != address(0));
  > |        require(slavenAdress.send(this.balance));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc72684c0495da31a24f83197245cd7aa78f816d2.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'SlavenSS':
    |    function registerAsSlaven(string passphrase) public {
    |        require (keccak256(passphrase) == targetHash);
  > |        slavenAdress = msg.sender;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc72684c0495da31a24f83197245cd7aa78f816d2.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'SlavenSS':
    |    
    |    function changeHash(bytes32 newTargetHash) public onlyOwner {
  > |        targetHash = newTargetHash;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc72684c0495da31a24f83197245cd7aa78f816d2.sol(24)


