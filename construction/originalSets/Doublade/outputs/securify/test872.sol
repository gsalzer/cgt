Processing contract: /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol:UniContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol:owned
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |      
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        }
    |      
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(82)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |      
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        }
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(117)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        }
    |      
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function approve(address _spender, uint256 _value) {
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(130)

[31mViolation[0m for DAOConstantGas in contract 'UniContract':
    |	 
    |   	 			// Send Funds to MultiSig
  > |        		if (!multisig.send(msg.value)) {
    |          			throw;
    |        			}
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(324)

[33mWarning[0m for DAOConstantGas in contract 'UniContract':
    |     }
    |
  > |     if (!recipient.send(msg.value)) {
    |       throw;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(431)

[33mWarning[0m for TODReceiver in contract 'UniContract':
    |     }
    |
  > |     if (!recipient.send(msg.value)) {
    |       throw;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(431)

[33mWarning[0m for UnhandledException in contract 'UniContract':
    |	 
    |   	 			// Send Funds to MultiSig
  > |        		if (!multisig.send(msg.value)) {
    |          			throw;
    |        			}
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(324)

[33mWarning[0m for UnhandledException in contract 'UniContract':
    |     }
    |
  > |     if (!recipient.send(msg.value)) {
    |       throw;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(431)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UniContract':
    |	 
    |   	 			// Send Funds to MultiSig
  > |        		if (!multisig.send(msg.value)) {
    |          			throw;
    |        			}
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |
    |/**
  > | * Math operations with safety checks
    | */
    |library SafeMath {
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |        }
    |      
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |      
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |        }
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |  function approve(address _spender, uint256 _value) {
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |
    |
  > |contract UniContract is StandardToken, owned {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		
    | 				   
  > |        		OVERALLSOLD = OVERALLSOLD.add(tokens);	
    |	
    |   		 	    // Send UCN to Recipient	
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |	
    |   		 	    // Send UCN to Recipient	
  > |        		balances[recipient] = balances[recipient].add(tokens);
    |	 
    |   	 			// Send Funds to MultiSig
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |			if(OVERALLSOLD >= RANGESTART_PRESALE && OVERALLSOLD <= RANGEEND_PRESALE) 
    |				{
  > |				PRICE = PRICE_PRESALE - (1 + OVERALLSOLD - RANGESTART_PRESALE).div(FACTOR_PRESALE);
    |				}
    |		}
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_PRESALE && OVERALLSOLD <= RANGEEND_PRESALE) 
    |			{
  > |			PRICE = PRICE_PRESALE - (1 + OVERALLSOLD - RANGESTART_PRESALE).div(FACTOR_PRESALE);
    |			}
    |		
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_1 && OVERALLSOLD <= RANGEEND_1)
    |			{
  > |			PRICE = PRICE_1 - (1 + OVERALLSOLD - RANGESTART_1).div(FACTOR_1);
    |			}
    |
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_2 && OVERALLSOLD <= RANGEEND_2)
    |			{
  > |			PRICE = PRICE_2 - (1 + OVERALLSOLD - RANGESTART_2).div(FACTOR_2);
    |			}
    |
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_3 && OVERALLSOLD <= RANGEEND_3)
    |			{
  > |			PRICE = PRICE_3 - (1 + OVERALLSOLD - RANGESTART_3).div(FACTOR_3);
    |			}
    |			
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_4 && OVERALLSOLD <= RANGEEND_4)
    |			{
  > |			PRICE = PRICE_4 - (1 + OVERALLSOLD - RANGESTART_4).div(FACTOR_4);
    |			}
    |			
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_5 && OVERALLSOLD <= RANGEEND_5)
    |			{
  > |			PRICE = PRICE_5 - (1 + OVERALLSOLD - RANGESTART_5).div(FACTOR_5);
    |			}
    |		
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_6 && OVERALLSOLD <= RANGEEND_6)
    |			{
  > |			PRICE = PRICE_6 - (1 + OVERALLSOLD - RANGESTART_6).div(FACTOR_6);
    |			}	
    |		
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(388)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_7 && OVERALLSOLD <= RANGEEND_7)
    |			{
  > |			PRICE = PRICE_7 - (1 + OVERALLSOLD - RANGESTART_7).div(FACTOR_7);
    |			}
    |			
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_8 && OVERALLSOLD <= RANGEEND_8)
    |			{
  > |			PRICE = PRICE_8 - (1 + OVERALLSOLD - RANGESTART_8).div(FACTOR_8);
    |			}
    |		
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(400)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_9 && OVERALLSOLD <= RANGEEND_9)
    |			{
  > |			PRICE = PRICE_9 - (1 + OVERALLSOLD - RANGESTART_9).div(FACTOR_9);
    |			}
    |		
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_10 && OVERALLSOLD <= RANGEEND_10)
    |			{
  > |			PRICE = PRICE_10 - (1 + OVERALLSOLD - RANGESTART_10).div(FACTOR_10);
    |			}	
    |		
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(412)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_11 && OVERALLSOLD <= RANGEEND_11)
    |			{
  > |			PRICE = PRICE_11 - (1 + OVERALLSOLD - RANGESTART_11).div(FACTOR_11);
    |			}
    |		}
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		   UniCoinSize=UniCoinSize+spendToken;
    |           
  > |           balances[msg.sender] = balances[msg.sender].sub(spendToken);
    |          
    |		  //If first message or last message already expired set newest timestamp
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(465)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |   	 	if(balances[msg.sender] < spendToken)
    |        	{ throw; }
  > |       	 	UniCoinSize=UniCoinSize.add(spendToken);
    |        	balances[msg.sender] = balances[msg.sender].sub(spendToken);
    |			
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(500)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |        	{ throw; }
    |       	 	UniCoinSize=UniCoinSize.add(spendToken);
  > |        	balances[msg.sender] = balances[msg.sender].sub(spendToken);
    |			
    |		
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(501)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |
    |
  > |contract UniContract is StandardToken, owned {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |   //In emergency cases to stop or change timings 
    |   function aSetStart(uint256 nstart) onlyOwner {
  > |     start=nstart;
    |   }
    |   function aSetEnd(uint256 nend) onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(537)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |   }
    |   function aSetEnd(uint256 nend) onlyOwner {
  > |     end=nend;
    |   }
    |   function aSetLaunch(uint256 nlaunch) onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(540)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |   }
    |   function aSetLaunch(uint256 nlaunch) onlyOwner {
  > |     launch=nlaunch;
    |   }
    |    
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(543)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |
  > |contract owned {
    |     function owned() { owner = msg.sender; }
    |     address owner;
  at /home/jiaming/mavs_srcs/contract@0x37aa63c4cbd06a57f1ea35bceee4e46f0a7ce924.sol(146)


