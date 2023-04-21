Processing contract: /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol:UBOCOIN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(90)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(126)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(167)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(19)

[33mWarning[0m for DAOConstantGas in contract 'UBOCOIN':
    |        require(crowdsaleTargetReached());
    |        
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(508)

[33mWarning[0m for LockedEther in contract 'UBOCOIN':
    |}
    |
  > |contract UBOCOIN is BurnableToken, Ownable
    |{
    |    // ERC20 token parameters
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(172)

[31mViolation[0m for TODAmount in contract 'UBOCOIN':
    |        require(crowdsaleTargetReached());
    |        
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(508)

[31mViolation[0m for TODReceiver in contract 'UBOCOIN':
    |        require(crowdsaleTargetReached());
    |        
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(508)

[33mWarning[0m for TODReceiver in contract 'UBOCOIN':
    |            uint256 refundETH = participantToEtherSpent[_participant];
    |            participantToEtherSpent[_participant] = 0;
  > |            _participant.transfer(refundETH);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(457)

[33mWarning[0m for UnhandledException in contract 'UBOCOIN':
    |        uint256 amountToBurn = crowdsaleAmountLeft;
    |        crowdsaleAmountLeft = 0;
  > |        this.burn(amountToBurn);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(321)

[33mWarning[0m for UnhandledException in contract 'UBOCOIN':
    |            uint256 refundETH = participantToEtherSpent[_participant];
    |            participantToEtherSpent[_participant] = 0;
  > |            _participant.transfer(refundETH);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(457)

[33mWarning[0m for UnhandledException in contract 'UBOCOIN':
    |        require(_amount <= foundersAmountLeft);
    |        foundersAmountLeft -= _amount;
  > |        this.transfer(_founderAddress, _amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(465)

[33mWarning[0m for UnhandledException in contract 'UBOCOIN':
    |        require(_amount <= earlyBackersAmountLeft);
    |        earlyBackersAmountLeft -= _amount;
  > |        this.transfer(_earlyBackerAddress, _amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(472)

[33mWarning[0m for UnhandledException in contract 'UBOCOIN':
    |        require(_amount <= teamAmountLeft);
    |        teamAmountLeft -= _amount;
  > |        this.transfer(_teamMemberAddress, _amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(479)

[33mWarning[0m for UnhandledException in contract 'UBOCOIN':
    |        require(_amount <= bountyAmountLeft);
    |        bountyAmountLeft -= _amount;
  > |        this.transfer(_bountyReceiverAddress, _amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(486)

[33mWarning[0m for UnhandledException in contract 'UBOCOIN':
    |        require(_amount <= reservedFundLeft);
    |        reservedFundLeft -= _amount;
  > |        this.transfer(_to, _amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(493)

[33mWarning[0m for UnhandledException in contract 'UBOCOIN':
    |        require(_amount <= crowdsaleAmountLeft);
    |        crowdsaleAmountLeft -= _amount;
  > |        this.transfer(_to, _amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(500)

[33mWarning[0m for UnhandledException in contract 'UBOCOIN':
    |        require(crowdsaleTargetReached());
    |        
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(508)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UBOCOIN':
    |        uint256 amountToBurn = crowdsaleAmountLeft;
    |        crowdsaleAmountLeft = 0;
  > |        this.burn(amountToBurn);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(321)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UBOCOIN':
    |            uint256 refundETH = participantToEtherSpent[_participant];
    |            participantToEtherSpent[_participant] = 0;
  > |            _participant.transfer(refundETH);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(457)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UBOCOIN':
    |        require(_amount <= foundersAmountLeft);
    |        foundersAmountLeft -= _amount;
  > |        this.transfer(_founderAddress, _amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(465)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UBOCOIN':
    |        require(_amount <= earlyBackersAmountLeft);
    |        earlyBackersAmountLeft -= _amount;
  > |        this.transfer(_earlyBackerAddress, _amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(472)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UBOCOIN':
    |        require(_amount <= teamAmountLeft);
    |        teamAmountLeft -= _amount;
  > |        this.transfer(_teamMemberAddress, _amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(479)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UBOCOIN':
    |        require(_amount <= bountyAmountLeft);
    |        bountyAmountLeft -= _amount;
  > |        this.transfer(_bountyReceiverAddress, _amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(486)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UBOCOIN':
    |        require(_amount <= reservedFundLeft);
    |        reservedFundLeft -= _amount;
  > |        this.transfer(_to, _amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(493)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UBOCOIN':
    |        require(_amount <= crowdsaleAmountLeft);
    |        crowdsaleAmountLeft -= _amount;
  > |        this.transfer(_to, _amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(500)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UBOCOIN':
    |        require(crowdsaleTargetReached());
    |        
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(508)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |
    |/**
  > | * @title ERC20Basic
    | * @dev Simpler version of ERC20 interface
    | * @dev see https://github.com/ethereum/EIPs/issues/179
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |        // Remove the tokens from this contract and the crowdsale tokens,
    |        // add them to the buyer
  > |        crowdsaleAmountLeft -= amountOfUBOpurchased;
    |        balances[this] -= amountOfUBOpurchased;
    |        balances[msg.sender] += amountOfUBOpurchased;
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |        // add them to the buyer
    |        crowdsaleAmountLeft -= amountOfUBOpurchased;
  > |        balances[this] -= amountOfUBOpurchased;
    |        balances[msg.sender] += amountOfUBOpurchased;
    |        Transfer(this, msg.sender, amountOfUBOpurchased);
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |        crowdsaleAmountLeft -= amountOfUBOpurchased;
    |        balances[this] -= amountOfUBOpurchased;
  > |        balances[msg.sender] += amountOfUBOpurchased;
    |        Transfer(this, msg.sender, amountOfUBOpurchased);
    |        
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |        if (participantToEtherSpent[msg.sender] == 0)
    |        {
  > |            allParticipants.push(msg.sender);
    |        }
    |        participantToUBObought[msg.sender] += amountOfUBOpurchased;
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(405)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |            allParticipants.push(msg.sender);
    |        }
  > |        participantToUBObought[msg.sender] += amountOfUBOpurchased;
    |        participantToEtherSpent[msg.sender] += msg.value;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |        }
    |        participantToUBObought[msg.sender] += amountOfUBOpurchased;
  > |        participantToEtherSpent[msg.sender] += msg.value;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(408)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |            // Return the UBO they bought into the crowdsale funds
    |            uint256 refundUBO = participantToUBObought[_participant];
  > |            participantToUBObought[_participant] = 0;
    |            balances[_participant] -= refundUBO;
    |            balances[this] += refundUBO;
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |            uint256 refundUBO = participantToUBObought[_participant];
    |            participantToUBObought[_participant] = 0;
  > |            balances[_participant] -= refundUBO;
    |            balances[this] += refundUBO;
    |            crowdsaleAmountLeft += refundUBO;
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(449)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |            participantToUBObought[_participant] = 0;
    |            balances[_participant] -= refundUBO;
  > |            balances[this] += refundUBO;
    |            crowdsaleAmountLeft += refundUBO;
    |            Transfer(_participant, this, refundUBO);
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |            balances[_participant] -= refundUBO;
    |            balances[this] += refundUBO;
  > |            crowdsaleAmountLeft += refundUBO;
    |            Transfer(_participant, this, refundUBO);
    |            
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |            // Return the ETH they spent to buy them
    |            uint256 refundETH = participantToEtherSpent[_participant];
  > |            participantToEtherSpent[_participant] = 0;
    |            _participant.transfer(refundETH);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(456)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |        require(!crowdsaleStarted());
    |        
  > |        pre_ICO_start_timestamp = _timestamp;
    |        first_bonus_sale_start_timestamp = pre_ICO_start_timestamp + pre_ICO_duration;
    |        second_bonus_sale_start_timestamp = first_bonus_sale_start_timestamp + first_bonus_sale_duration;
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |        
    |        pre_ICO_start_timestamp = _timestamp;
  > |        first_bonus_sale_start_timestamp = pre_ICO_start_timestamp + pre_ICO_duration;
    |        second_bonus_sale_start_timestamp = first_bonus_sale_start_timestamp + first_bonus_sale_duration;
    |        third_bonus_sale_start_timestamp = second_bonus_sale_start_timestamp + second_bonus_sale_duration;
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |        pre_ICO_start_timestamp = _timestamp;
    |        first_bonus_sale_start_timestamp = pre_ICO_start_timestamp + pre_ICO_duration;
  > |        second_bonus_sale_start_timestamp = first_bonus_sale_start_timestamp + first_bonus_sale_duration;
    |        third_bonus_sale_start_timestamp = second_bonus_sale_start_timestamp + second_bonus_sale_duration;
    |        fourth_bonus_sale_start_timestamp = third_bonus_sale_start_timestamp + third_bonus_sale_duration;
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |        first_bonus_sale_start_timestamp = pre_ICO_start_timestamp + pre_ICO_duration;
    |        second_bonus_sale_start_timestamp = first_bonus_sale_start_timestamp + first_bonus_sale_duration;
  > |        third_bonus_sale_start_timestamp = second_bonus_sale_start_timestamp + second_bonus_sale_duration;
    |        fourth_bonus_sale_start_timestamp = third_bonus_sale_start_timestamp + third_bonus_sale_duration;
    |        final_sale_start_timestamp = fourth_bonus_sale_start_timestamp + fourth_bonus_sale_duration;
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |        second_bonus_sale_start_timestamp = first_bonus_sale_start_timestamp + first_bonus_sale_duration;
    |        third_bonus_sale_start_timestamp = second_bonus_sale_start_timestamp + second_bonus_sale_duration;
  > |        fourth_bonus_sale_start_timestamp = third_bonus_sale_start_timestamp + third_bonus_sale_duration;
    |        final_sale_start_timestamp = fourth_bonus_sale_start_timestamp + fourth_bonus_sale_duration;
    |        crowdsale_end_timestamp = final_sale_start_timestamp + final_sale_duration;
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |        third_bonus_sale_start_timestamp = second_bonus_sale_start_timestamp + second_bonus_sale_duration;
    |        fourth_bonus_sale_start_timestamp = third_bonus_sale_start_timestamp + third_bonus_sale_duration;
  > |        final_sale_start_timestamp = fourth_bonus_sale_start_timestamp + fourth_bonus_sale_duration;
    |        crowdsale_end_timestamp = final_sale_start_timestamp + final_sale_duration;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |        fourth_bonus_sale_start_timestamp = third_bonus_sale_start_timestamp + third_bonus_sale_duration;
    |        final_sale_start_timestamp = fourth_bonus_sale_start_timestamp + fourth_bonus_sale_duration;
  > |        crowdsale_end_timestamp = final_sale_start_timestamp + final_sale_duration;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |        
    |        uint256 amountToBurn = crowdsaleAmountLeft;
  > |        crowdsaleAmountLeft = 0;
    |        this.burn(amountToBurn);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |    {
    |        require(_amount <= foundersAmountLeft);
  > |        foundersAmountLeft -= _amount;
    |        this.transfer(_founderAddress, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(464)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |    {
    |        require(_amount <= earlyBackersAmountLeft);
  > |        earlyBackersAmountLeft -= _amount;
    |        this.transfer(_earlyBackerAddress, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(471)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |    {
    |        require(_amount <= teamAmountLeft);
  > |        teamAmountLeft -= _amount;
    |        this.transfer(_teamMemberAddress, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(478)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |    {
    |        require(_amount <= bountyAmountLeft);
  > |        bountyAmountLeft -= _amount;
    |        this.transfer(_bountyReceiverAddress, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(485)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |    {
    |        require(_amount <= reservedFundLeft);
  > |        reservedFundLeft -= _amount;
    |        this.transfer(_to, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(492)

[33mWarning[0m for UnrestrictedWrite in contract 'UBOCOIN':
    |    {
    |        require(_amount <= crowdsaleAmountLeft);
  > |        crowdsaleAmountLeft -= _amount;
    |        this.transfer(_to, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51b3e8bc61e9c21e979468379d3147d6b955b79f.sol(499)


