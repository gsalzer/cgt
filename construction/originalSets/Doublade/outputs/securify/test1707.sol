Processing contract: /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol:IToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol:TokenEscrow
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'TokenEscrow':
    |		if (amountTransfered <= 0) {
    |		      	Error('no eth was transfered');
  > |              		msg.sender.transfer(msg.value);
    |		  	return;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(161)

[33mWarning[0m for DAOConstantGas in contract 'TokenEscrow':
    |		if(balanceFor[owner] <= 0) {
    |		      	Error('all tokens sold');
  > |              		msg.sender.transfer(msg.value);
    |		      	return;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(167)

[33mWarning[0m for DAOConstantGas in contract 'TokenEscrow':
    |		if (tokenAmount == 0) {
    |		    	Error('no token to buy');
  > |            		msg.sender.transfer(msg.value);
    |			return;
    |        	}
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(202)

[33mWarning[0m for DAOConstantGas in contract 'TokenEscrow':
    |
    |		// Transfer money to seller
  > |		owner.transfer(amountToBePaid);
    |		
    |		// Refund buyer if overpaid / no tokens to sell
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(210)

[33mWarning[0m for DAOConstantGas in contract 'TokenEscrow':
    |		
    |		// Refund buyer if overpaid / no tokens to sell
  > |		msg.sender.transfer(msg.value - amountToBePaid);
    |		
    |	}
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(213)

[33mWarning[0m for LockedEther in contract 'TokenEscrow':
    | * @title Presale token contract
    | */
  > |contract TokenEscrow {
    |	// Token-related properties/description to display in Wallet client / UI
    |	string public standard = 'FractalPreRelease 1.0';
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(17)

[31mViolation[0m for TODReceiver in contract 'TokenEscrow':
    |
    |		// Transfer money to seller
  > |		owner.transfer(amountToBePaid);
    |		
    |		// Refund buyer if overpaid / no tokens to sell
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(210)

[33mWarning[0m for TODReceiver in contract 'TokenEscrow':
    |		if (amountTransfered <= 0) {
    |		      	Error('no eth was transfered');
  > |              		msg.sender.transfer(msg.value);
    |		  	return;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(161)

[33mWarning[0m for TODReceiver in contract 'TokenEscrow':
    |		if(balanceFor[owner] <= 0) {
    |		      	Error('all tokens sold');
  > |              		msg.sender.transfer(msg.value);
    |		      	return;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(167)

[33mWarning[0m for TODReceiver in contract 'TokenEscrow':
    |		if (tokenAmount == 0) {
    |		    	Error('no token to buy');
  > |            		msg.sender.transfer(msg.value);
    |			return;
    |        	}
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(202)

[33mWarning[0m for TODReceiver in contract 'TokenEscrow':
    |		
    |		// Refund buyer if overpaid / no tokens to sell
  > |		msg.sender.transfer(msg.value - amountToBePaid);
    |		
    |	}
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(213)

[33mWarning[0m for UnhandledException in contract 'TokenEscrow':
    |	function exchangeToIco(address owner) private returns (bool) {
    |	    if(icoToken != address(0)) {
  > |		    return icoToken.transferFromOwner(owner, balanceFor[owner] * exchangeRate);
    |	    }
    |	    return false;
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(130)

[33mWarning[0m for UnhandledException in contract 'TokenEscrow':
    |		if (amountTransfered <= 0) {
    |		      	Error('no eth was transfered');
  > |              		msg.sender.transfer(msg.value);
    |		  	return;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(161)

[33mWarning[0m for UnhandledException in contract 'TokenEscrow':
    |		if(balanceFor[owner] <= 0) {
    |		      	Error('all tokens sold');
  > |              		msg.sender.transfer(msg.value);
    |		      	return;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(167)

[33mWarning[0m for UnhandledException in contract 'TokenEscrow':
    |		if (tokenAmount == 0) {
    |		    	Error('no token to buy');
  > |            		msg.sender.transfer(msg.value);
    |			return;
    |        	}
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(202)

[33mWarning[0m for UnhandledException in contract 'TokenEscrow':
    |
    |		// Transfer money to seller
  > |		owner.transfer(amountToBePaid);
    |		
    |		// Refund buyer if overpaid / no tokens to sell
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(210)

[33mWarning[0m for UnhandledException in contract 'TokenEscrow':
    |		
    |		// Refund buyer if overpaid / no tokens to sell
  > |		msg.sender.transfer(msg.value - amountToBePaid);
    |		
    |	}
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(213)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenEscrow':
    |	function exchangeToIco(address owner) private returns (bool) {
    |	    if(icoToken != address(0)) {
  > |		    return icoToken.transferFromOwner(owner, balanceFor[owner] * exchangeRate);
    |	    }
    |	    return false;
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenEscrow':
    |				}
    |
  > |				tokenSupply.totalSupply += tokensPossibleToBuy;
    |				tokenAmount += tokensPossibleToBuy;
    |
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenEscrow':
    |	 */
    |	function setOwner(address _owner) owneronly {
  > |		owner = _owner;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenEscrow':
    |	
    |	function setRate(uint _exchangeRate) owneronly {
  > |		exchangeRate = _exchangeRate;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenEscrow':
    |	
    |	function setToken(address _icoToken) owneronly {
  > |		icoToken = IToken(_icoToken);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenEscrow':
    |				transferByOwner(_value);
    |			}
  > |			balanceFor[msg.sender] -= _value;                     // Subtract from the sender
    |			balanceFor[_to] += _value;                            // Add the same to the recipient
    |			Transfer(owner,_to,_value);
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenEscrow':
    |			}
    |			balanceFor[msg.sender] -= _value;                     // Subtract from the sender
  > |			balanceFor[_to] += _value;                            // Add the same to the recipient
    |			Transfer(owner,_to,_value);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenEscrow':
    |		if (!exchangeToIco(msg.sender)) return false; // Try to exchange preICO tokens to ICO tokens
    |		Converted(msg.sender, balanceFor[msg.sender]);
  > |		balanceFor[msg.sender] = 0;                      // Subtract from the sender
    |		return true;
    |	} 
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenEscrow':
    |		if (balanceFor[_to] + _value < balanceFor[_to]) return false;  // Check for overflows
    |		balanceFor[owner] -= _value;                          // Subtract from the owner
  > |		balanceFor[_to] += _value;                            // Add the same to the recipient
    |        	Transfer(owner,_to,_value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x6cb2b8dc6a508c9a21db9683d1a729715969a6ee.sol(235)


