Processing contract: /home/jiaming/mavs_srcs/contract@0x4032a725b81cfd0cdb519933cc6084d9b22175c0.sol:ERC20Cutted
Processing contract: /home/jiaming/mavs_srcs/contract@0x4032a725b81cfd0cdb519933cc6084d9b22175c0.sol:SimpleDistributor
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SimpleDistributor':
    |
    |
  > |contract SimpleDistributor {
    |    
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x4032a725b81cfd0cdb519933cc6084d9b22175c0.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'SimpleDistributor':
    |contract SimpleDistributor {
    |    
  > |  address public owner;
    |    
    |  ERC20Cutted public token = ERC20Cutted(0xE2FB6529EF566a080e6d23dE0bd351311087D567);
  at /home/jiaming/mavs_srcs/contract@0x4032a725b81cfd0cdb519933cc6084d9b22175c0.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'SimpleDistributor':
    |  address public owner;
    |    
  > |  ERC20Cutted public token = ERC20Cutted(0xE2FB6529EF566a080e6d23dE0bd351311087D567);
    |    
    |  function SimpleDistributor() public {
  at /home/jiaming/mavs_srcs/contract@0x4032a725b81cfd0cdb519933cc6084d9b22175c0.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'SimpleDistributor':
    |  } 
    |  
  > |  function retrieveCurrentTokensToOwner() public {
    |    retrieveTokens(owner, address(token));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4032a725b81cfd0cdb519933cc6084d9b22175c0.sol(29)

[33mWarning[0m for UnhandledException in contract 'SimpleDistributor':
    |    require(msg.sender == owner);
    |    for(uint i = 0; i < receivers.length; i++) {
  > |      token.transfer(receivers[i], balances[i]);
    |    }
    |  } 
  at /home/jiaming/mavs_srcs/contract@0x4032a725b81cfd0cdb519933cc6084d9b22175c0.sol(25)

[33mWarning[0m for UnhandledException in contract 'SimpleDistributor':
    |    require(msg.sender == owner);
    |    ERC20Cutted alienToken = ERC20Cutted(anotherToken);
  > |    alienToken.transfer(to, alienToken.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4032a725b81cfd0cdb519933cc6084d9b22175c0.sol(36)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleDistributor':
    |    require(msg.sender == owner);
    |    for(uint i = 0; i < receivers.length; i++) {
  > |      token.transfer(receivers[i], balances[i]);
    |    }
    |  } 
  at /home/jiaming/mavs_srcs/contract@0x4032a725b81cfd0cdb519933cc6084d9b22175c0.sol(25)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleDistributor':
    |    require(msg.sender == owner);
    |    ERC20Cutted alienToken = ERC20Cutted(anotherToken);
  > |    alienToken.transfer(to, alienToken.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4032a725b81cfd0cdb519933cc6084d9b22175c0.sol(36)


