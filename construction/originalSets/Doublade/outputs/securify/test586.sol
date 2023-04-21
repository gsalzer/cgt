Processing contract: /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol:SpecialTransferContract
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'SpecialTransferContract':
    |
    |        // Send any remaining Eth from contract to the owner.
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(73)

[33mWarning[0m for LockedEther in contract 'SpecialTransferContract':
    |}
    |
  > |contract SpecialTransferContract {
    |    IERC20Token public tokenContract;  // the address of the token
    |    address public owner;               // address of this contracts owner
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'SpecialTransferContract':
    |
    |    
  > |    function ConfigurableParameters(uint256 _tokensPerContributor, uint256 _acceptableEthAmountInWei) public {
    |        require(msg.sender == owner); //only owner can change these
    |        tokensPerContributor = _tokensPerContributor;
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'SpecialTransferContract':
    |
    |contract SpecialTransferContract {
  > |    IERC20Token public tokenContract;  // the address of the token
    |    address public owner;               // address of this contracts owner
    |    uint256 public tokensDistributed;          // tally of the number of tokens distributed
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'SpecialTransferContract':
    |contract SpecialTransferContract {
    |    IERC20Token public tokenContract;  // the address of the token
  > |    address public owner;               // address of this contracts owner
    |    uint256 public tokensDistributed;          // tally of the number of tokens distributed
    |    uint256 public acceptableEthAmountInWei; //exact eth amount in wei this contract will accept
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'SpecialTransferContract':
    |    IERC20Token public tokenContract;  // the address of the token
    |    address public owner;               // address of this contracts owner
  > |    uint256 public tokensDistributed;          // tally of the number of tokens distributed
    |    uint256 public acceptableEthAmountInWei; //exact eth amount in wei this contract will accept
    |    uint256 public tokensPerContributor;    // number of tokens to distribute to each contributor
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'SpecialTransferContract':
    |    address public owner;               // address of this contracts owner
    |    uint256 public tokensDistributed;          // tally of the number of tokens distributed
  > |    uint256 public acceptableEthAmountInWei; //exact eth amount in wei this contract will accept
    |    uint256 public tokensPerContributor;    // number of tokens to distribute to each contributor
    |    uint256 public contributionsMade; // tally of all contributions 
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'SpecialTransferContract':
    |    uint256 public tokensDistributed;          // tally of the number of tokens distributed
    |    uint256 public acceptableEthAmountInWei; //exact eth amount in wei this contract will accept
  > |    uint256 public tokensPerContributor;    // number of tokens to distribute to each contributor
    |    uint256 public contributionsMade; // tally of all contributions 
    |    bytes32 contractOwner; // contract owner address, used during deploy
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SpecialTransferContract':
    |    uint256 public acceptableEthAmountInWei; //exact eth amount in wei this contract will accept
    |    uint256 public tokensPerContributor;    // number of tokens to distribute to each contributor
  > |    uint256 public contributionsMade; // tally of all contributions 
    |    bytes32 contractOwner; // contract owner address, used during deploy
    |
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'SpecialTransferContract':
    |    
    |    
  > |    function acceptContribution() public payable {
    |        // ensure contract holds enough tokens to send
    |        require(tokenContract.balanceOf(this) >= tokensPerContributor);
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'SpecialTransferContract':
    |    }
    |
  > |    function endSale() public {
    |        require(msg.sender == owner);
    |
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(66)

[31mViolation[0m for TODAmount in contract 'SpecialTransferContract':
    |
    |        // Send any remaining Eth from contract to the owner.
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(73)

[33mWarning[0m for TODReceiver in contract 'SpecialTransferContract':
    |
    |        // Send any remaining Eth from contract to the owner.
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(73)

[33mWarning[0m for UnhandledException in contract 'SpecialTransferContract':
    |    function acceptContribution() public payable {
    |        // ensure contract holds enough tokens to send
  > |        require(tokenContract.balanceOf(this) >= tokensPerContributor);
    |        
    |        // verify purchase amount is correct (eg.0.1ETH (100000000000000000)
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(54)

[33mWarning[0m for UnhandledException in contract 'SpecialTransferContract':
    |        contributionsMade += 1;
    |
  > |        require(tokenContract.transfer(msg.sender, tokensPerContributor));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(63)

[33mWarning[0m for UnhandledException in contract 'SpecialTransferContract':
    |
    |        // Send unsold tokens back to the owner.
  > |        require(tokenContract.transfer(owner, tokenContract.balanceOf(this)));
    |
    |        // Send any remaining Eth from contract to the owner.
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(70)

[33mWarning[0m for UnhandledException in contract 'SpecialTransferContract':
    |
    |        // Send any remaining Eth from contract to the owner.
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(73)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SpecialTransferContract':
    |    function acceptContribution() public payable {
    |        // ensure contract holds enough tokens to send
  > |        require(tokenContract.balanceOf(this) >= tokensPerContributor);
    |        
    |        // verify purchase amount is correct (eg.0.1ETH (100000000000000000)
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(54)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SpecialTransferContract':
    |        contributionsMade += 1;
    |
  > |        require(tokenContract.transfer(msg.sender, tokensPerContributor));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(63)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SpecialTransferContract':
    |
    |        // Send unsold tokens back to the owner.
  > |        require(tokenContract.transfer(owner, tokenContract.balanceOf(this)));
    |
    |        // Send any remaining Eth from contract to the owner.
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(70)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SpecialTransferContract':
    |
    |        // Send any remaining Eth from contract to the owner.
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'SpecialTransferContract':
    |
    |        // keep a tally of distributions and tokens
  > |        tokensDistributed += tokensPerContributor;
    |        contributionsMade += 1;
    |
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'SpecialTransferContract':
    |        // keep a tally of distributions and tokens
    |        tokensDistributed += tokensPerContributor;
  > |        contributionsMade += 1;
    |
    |        require(tokenContract.transfer(msg.sender, tokensPerContributor));
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'SpecialTransferContract':
    |    function ConfigurableParameters(uint256 _tokensPerContributor, uint256 _acceptableEthAmountInWei) public {
    |        require(msg.sender == owner); //only owner can change these
  > |        tokensPerContributor = _tokensPerContributor;
    |        acceptableEthAmountInWei = _acceptableEthAmountInWei;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'SpecialTransferContract':
    |        require(msg.sender == owner); //only owner can change these
    |        tokensPerContributor = _tokensPerContributor;
  > |        acceptableEthAmountInWei = _acceptableEthAmountInWei;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x2585c836d0fbf41112861988bfc0b836ee064012.sol(37)


