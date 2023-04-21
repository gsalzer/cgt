Processing contract: /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol:KALIFORCOINICO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol:token
[33mWarning[0m for DAOConstantGas in contract 'KALIFORCOINICO':
    |			uint amounted = _amounty;
    |            
  > |            if (beneficiary.send(amounted)) {
    |                FundTransfer(beneficiary, amounted, false);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(99)

[33mWarning[0m for LockedEther in contract 'KALIFORCOINICO':
    |}
    |
  > |contract KALIFORCOINICO {
    |	// Beneficiary Address
    |	uint128 private decimals = 1000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(7)

[33mWarning[0m for TODAmount in contract 'KALIFORCOINICO':
    |			uint amounted = _amounty;
    |            
  > |            if (beneficiary.send(amounted)) {
    |                FundTransfer(beneficiary, amounted, false);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(99)

[33mWarning[0m for TODReceiver in contract 'KALIFORCOINICO':
    |			uint amounted = _amounty;
    |            
  > |            if (beneficiary.send(amounted)) {
    |                FundTransfer(beneficiary, amounted, false);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(99)

[33mWarning[0m for UnhandledException in contract 'KALIFORCOINICO':
    |			uint amounted = _amounty;
    |            
  > |            if (beneficiary.send(amounted)) {
    |                FundTransfer(beneficiary, amounted, false);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(99)

[33mWarning[0m for UnhandledException in contract 'KALIFORCOINICO':
    |				balanceOf[msg.sender] += amount;
    |				FundTransfer(msg.sender, amount, true);
  > |				tokenReward.transfer(msg.sender, tokentosend);
    |
    |				amountRaised += amount;
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(149)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KALIFORCOINICO':
    |				balanceOf[msg.sender] += amount;
    |				FundTransfer(msg.sender, amount, true);
  > |				tokenReward.transfer(msg.sender, tokentosend);
    |
    |				amountRaised += amount;
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(149)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KALIFORCOINICO':
    |			uint amounted = _amounty;
    |            
  > |            if (beneficiary.send(amounted)) {
    |                FundTransfer(beneficiary, amounted, false);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'KALIFORCOINICO':
    |			// Token price in 1st week Pre Ico
    |			if (now <= deadlinePreIcoOne) {
  > |				price = 0.000359801 * 1 ether;
    |			}
    |			
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'KALIFORCOINICO':
    |			// Token price in 2nd week Pre Ico
    |			else if (now > deadlinePreIcoOne && now <= deadlinePreIcoTwo) {
  > |				price = 0.000415207 * 1 ether;
    |			}
    |			
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'KALIFORCOINICO':
    |			// Token price in 3th week Pre Ico
    |			else if (now > deadlinePreIcoTwo && now <= deadline) {
  > |				price = 0.000505615 * 1 ether;
    |			}
    |			// Token fixed price in any issue happend
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'KALIFORCOINICO':
    |			// Token fixed price in any issue happend
    |			else {
  > |				price = 0.000505615 * 1 ether;
    |			}
    |		// Regular token price
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'KALIFORCOINICO':
    |		// Regular token price
    |		} else if (price_rate_changed == true) {
  > |			price = updatedPrice * 1 ether;
    |		} else {
    |			price = 0.000505615 * 1 ether;
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'KALIFORCOINICO':
    |			price = updatedPrice * 1 ether;
    |		} else {
  > |			price = 0.000505615 * 1 ether;
    |		}
    |		
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(136)

[31mViolation[0m for UnrestrictedWrite in contract 'KALIFORCOINICO':
    |				tokenReward.transfer(msg.sender, tokentosend);
    |
  > |				amountRaised += amount;
    |				sentToken += tokentosend;
    |						
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'KALIFORCOINICO':
    |
    |				amountRaised += amount;
  > |				sentToken += tokentosend;
    |						
    |							
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'KALIFORCOINICO':
    |        if (msg.value >= vminEtherPerPurchase && msg.value <= vmaxEtherPerPurchase) {
    |				
  > |				balanceOf[msg.sender] += amount;
    |				FundTransfer(msg.sender, amount, true);
    |				tokenReward.transfer(msg.sender, tokentosend);
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'KALIFORCOINICO':
    |
    |    function EmergencyPause() isOwner public {
  > |        crowdsaleClosed = true;
    |    }
    |    function EmergencyUnPause() isOwner public {
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'KALIFORCOINICO':
    |    }
    |    function EmergencyUnPause() isOwner public {
  > |        crowdsaleClosed = false;
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'KALIFORCOINICO':
    |	
    |    function UpdatePrice(uint _new_price) isOwner public {
  > |          updatedPrice = _new_price;
    |		  price_rate_changed = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'KALIFORCOINICO':
    |    function UpdatePrice(uint _new_price) isOwner public {
    |          updatedPrice = _new_price;
  > |		  price_rate_changed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x820d413cb4c38d3b328cefc3e661072102d3898e.sol(106)


