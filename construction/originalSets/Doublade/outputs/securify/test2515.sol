Processing contract: /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol:STARCrowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'STARCrowdsale':
    |    function withdraw() onlyOwner atStage(Stages.Ended) {
    |
  > |        creator.transfer(this.balance);
    |
    |        stage = Stages.Withdrawn;
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(121)

[33mWarning[0m for LockedEther in contract 'STARCrowdsale':
    |}
    |
  > |contract STARCrowdsale {
    |
    |    address public creator; 
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(8)

[31mViolation[0m for MissingInputValidation in contract 'STARCrowdsale':
    |  
    |
  > |    function balanceOf(address _investor) constant returns (uint256 balance) {
    |        return balances[_investor];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'STARCrowdsale':
    |    }
    |    
  > |    function setOwner(address _newowner) onlyOwner {
    |
    |        creator = _newowner;
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |contract STARCrowdsale {
    |
  > |    address public creator; 
    |    
    |    uint256 public maxSupply = 104400000 * 10**8; 
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |    address public creator; 
    |    
  > |    uint256 public maxSupply = 104400000 * 10**8; 
    |    uint256 public minAcceptedAmount = 1 ether; // 1 ether
    |
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |    
    |    uint256 public maxSupply = 104400000 * 10**8; 
  > |    uint256 public minAcceptedAmount = 1 ether; // 1 ether
    |
    |    uint256 public rateAngel = 1136;
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |    uint256 public minAcceptedAmount = 1 ether; // 1 ether
    |
  > |    uint256 public rateAngel = 1136;
    |    uint256 public rateA = 558;
    |    uint256 public rateB = 277;
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |
    |    uint256 public rateAngel = 1136;
  > |    uint256 public rateA = 558;
    |    uint256 public rateB = 277;
    |    uint256 public rateC = 136;
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |    uint256 public rateAngel = 1136;
    |    uint256 public rateA = 558;
  > |    uint256 public rateB = 277;
    |    uint256 public rateC = 136;
    |    
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |    uint256 public rateA = 558;
    |    uint256 public rateB = 277;
  > |    uint256 public rateC = 136;
    |    
    |    
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |
    |    
  > |    address public address1 = 0x08294159dE662f0Bd810FeaB94237cf3A7bB2A3D;
    |    address public address2 = 0xAed27d4ecCD7C0a0bd548383DEC89031b7bBcf3E;
    |    address public address3 = 0x41ba7eED9be2450961eBFD7C9Fb715cae077f1dC;
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |    
    |    address public address1 = 0x08294159dE662f0Bd810FeaB94237cf3A7bB2A3D;
  > |    address public address2 = 0xAed27d4ecCD7C0a0bd548383DEC89031b7bBcf3E;
    |    address public address3 = 0x41ba7eED9be2450961eBFD7C9Fb715cae077f1dC;
    |    address public address4 = 0xb9cdb4CDC8f9A931063cA30BcDE8b210D3BA80a3;
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |    address public address1 = 0x08294159dE662f0Bd810FeaB94237cf3A7bB2A3D;
    |    address public address2 = 0xAed27d4ecCD7C0a0bd548383DEC89031b7bBcf3E;
  > |    address public address3 = 0x41ba7eED9be2450961eBFD7C9Fb715cae077f1dC;
    |    address public address4 = 0xb9cdb4CDC8f9A931063cA30BcDE8b210D3BA80a3;
    |    address public address5 = 0x5aBF2CA9e7F5F1895c6FBEcF5668f164797eDc5D;
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |    address public address2 = 0xAed27d4ecCD7C0a0bd548383DEC89031b7bBcf3E;
    |    address public address3 = 0x41ba7eED9be2450961eBFD7C9Fb715cae077f1dC;
  > |    address public address4 = 0xb9cdb4CDC8f9A931063cA30BcDE8b210D3BA80a3;
    |    address public address5 = 0x5aBF2CA9e7F5F1895c6FBEcF5668f164797eDc5D;
    |    
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |    address public address3 = 0x41ba7eED9be2450961eBFD7C9Fb715cae077f1dC;
    |    address public address4 = 0xb9cdb4CDC8f9A931063cA30BcDE8b210D3BA80a3;
  > |    address public address5 = 0x5aBF2CA9e7F5F1895c6FBEcF5668f164797eDc5D;
    |    
    |
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |    }
    |
  > |    Stages public stage = Stages.InProgress;
    |    
    |    uint256 public raised;
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |    Stages public stage = Stages.InProgress;
    |    
  > |    uint256 public raised;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |
    |
  > |    Token public starToken;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |        
    |    }
  > |    function toSTAR(uint256 _wei) returns (uint256 amount) {
    |        uint256 rate = 0;
    |        if (stage != Stages.Ended) {
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |    }
    | 
  > |    function endCrowdsale() onlyOwner atStage(Stages.InProgress) {
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |
    |
  > |    function withdraw() onlyOwner atStage(Stages.Ended) {
    |
    |        creator.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'STARCrowdsale':
    |    }
    |    
  > |    function close() onlyOwner{
    |
    |       close = true;
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(126)

[31mViolation[0m for TODAmount in contract 'STARCrowdsale':
    |    function withdraw() onlyOwner atStage(Stages.Ended) {
    |
  > |        creator.transfer(this.balance);
    |
    |        stage = Stages.Withdrawn;
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(121)

[31mViolation[0m for TODReceiver in contract 'STARCrowdsale':
    |    function withdraw() onlyOwner atStage(Stages.Ended) {
    |
  > |        creator.transfer(this.balance);
    |
    |        stage = Stages.Withdrawn;
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(121)

[33mWarning[0m for UnhandledException in contract 'STARCrowdsale':
    |            
    |            
  > |            uint256 supply = starToken.totalSupply();
    |            
    |            if (supply <= 3000000 * 10**8) {
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(79)

[33mWarning[0m for UnhandledException in contract 'STARCrowdsale':
    |    function withdraw() onlyOwner atStage(Stages.Ended) {
    |
  > |        creator.transfer(this.balance);
    |
    |        stage = Stages.Withdrawn;
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(121)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'STARCrowdsale':
    |            
    |            
  > |            uint256 supply = starToken.totalSupply();
    |            
    |            if (supply <= 3000000 * 10**8) {
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(79)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'STARCrowdsale':
    |    function withdraw() onlyOwner atStage(Stages.Ended) {
    |
  > |        creator.transfer(this.balance);
    |
    |        stage = Stages.Withdrawn;
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'STARCrowdsale':
    |
    |    
  > |        stage = Stages.Ended;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'STARCrowdsale':
    |    function setOwner(address _newowner) onlyOwner {
    |
  > |        creator = _newowner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'STARCrowdsale':
    |        creator.transfer(this.balance);
    |
  > |        stage = Stages.Withdrawn;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'STARCrowdsale':
    |    function close() onlyOwner{
    |
  > |       close = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(128)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.16;
  > |contract Token { 
    |    function issue(address _recipient, uint256 _value) returns (bool success) {} 
    |    function totalSupply() constant returns (uint256 supply) {}
  at /home/jiaming/mavs_srcs/contract@0xa49186e5c6ad0474cc5226ed7a2ee38578b0d901.sol(2)


