Processing contract: /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol:UniContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol:owned
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
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transfer(address _to, uint256 _value) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(76)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(92)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint256 _value) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    // if (_value > _allowance) throw;
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(128)

[31mViolation[0m for DAOConstantGas in contract 'UniContract':
    |	 
    |   	 			// Send Funds to MultiSig
  > |        		if (!multisig.send(msg.value)) {
    |          			throw;
    |        			}
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(319)

[33mWarning[0m for DAOConstantGas in contract 'UniContract':
    |     }
    |
  > |     if (!recipient.send(msg.value)) {
    |       throw;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(425)

[33mWarning[0m for TODReceiver in contract 'UniContract':
    |     }
    |
  > |     if (!recipient.send(msg.value)) {
    |       throw;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(425)

[33mWarning[0m for UnhandledException in contract 'UniContract':
    |	 
    |   	 			// Send Funds to MultiSig
  > |        		if (!multisig.send(msg.value)) {
    |          			throw;
    |        			}
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(319)

[33mWarning[0m for UnhandledException in contract 'UniContract':
    |     }
    |
  > |     if (!recipient.send(msg.value)) {
    |       throw;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(425)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UniContract':
    |	 
    |   	 			// Send Funds to MultiSig
  > |        		if (!multisig.send(msg.value)) {
    |          			throw;
    |        			}
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |
    |/**
  > | * Math operations with safety checks
    | */
    |library SafeMath {
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |  */
    |  function transfer(address _to, uint256 _value) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |  function transfer(address _to, uint256 _value) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |    // if (_value > _allowance) throw;
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |
    |
  > |contract UniContract is StandardToken, owned {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		
    | 				   
  > |        		OVERALLSOLD = OVERALLSOLD.add(tokens);	
    |	
    |   		 	    // Send UCN to Recipient	
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |	
    |   		 	    // Send UCN to Recipient	
  > |        		balances[recipient] = balances[recipient].add(tokens);
    |	 
    |   	 			// Send Funds to MultiSig
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |			if(OVERALLSOLD >= RANGESTART_PRESALE && OVERALLSOLD <= RANGEEND_PRESALE) 
    |				{
  > |				PRICE = PRICE_PRESALE - (1 + OVERALLSOLD - RANGESTART_PRESALE).div(FACTOR_PRESALE);
    |				}
    |		}
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_PRESALE && OVERALLSOLD <= RANGEEND_PRESALE) 
    |			{
  > |			PRICE = PRICE_PRESALE - (1 + OVERALLSOLD - RANGESTART_PRESALE).div(FACTOR_PRESALE);
    |			}
    |		
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_1 && OVERALLSOLD <= RANGEEND_1)
    |			{
  > |			PRICE = PRICE_1 - (1 + OVERALLSOLD - RANGESTART_1).div(FACTOR_1);
    |			}
    |
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_2 && OVERALLSOLD <= RANGEEND_2)
    |			{
  > |			PRICE = PRICE_2 - (1 + OVERALLSOLD - RANGESTART_2).div(FACTOR_2);
    |			}
    |
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_3 && OVERALLSOLD <= RANGEEND_3)
    |			{
  > |			PRICE = PRICE_3 - (1 + OVERALLSOLD - RANGESTART_3).div(FACTOR_3);
    |			}
    |			
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_4 && OVERALLSOLD <= RANGEEND_4)
    |			{
  > |			PRICE = PRICE_4 - (1 + OVERALLSOLD - RANGESTART_4).div(FACTOR_4);
    |			}
    |			
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_5 && OVERALLSOLD <= RANGEEND_5)
    |			{
  > |			PRICE = PRICE_5 - (1 + OVERALLSOLD - RANGESTART_5).div(FACTOR_5);
    |			}
    |		
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_6 && OVERALLSOLD <= RANGEEND_6)
    |			{
  > |			PRICE = PRICE_6 - (1 + OVERALLSOLD - RANGESTART_6).div(FACTOR_6);
    |			}	
    |		
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_7 && OVERALLSOLD <= RANGEEND_7)
    |			{
  > |			PRICE = PRICE_7 - (1 + OVERALLSOLD - RANGESTART_7).div(FACTOR_7);
    |			}
    |			
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(388)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_8 && OVERALLSOLD <= RANGEEND_8)
    |			{
  > |			PRICE = PRICE_8 - (1 + OVERALLSOLD - RANGESTART_8).div(FACTOR_8);
    |			}
    |		
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_9 && OVERALLSOLD <= RANGEEND_9)
    |			{
  > |			PRICE = PRICE_9 - (1 + OVERALLSOLD - RANGESTART_9).div(FACTOR_9);
    |			}
    |		
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(400)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_10 && OVERALLSOLD <= RANGEEND_10)
    |			{
  > |			PRICE = PRICE_10 - (1 + OVERALLSOLD - RANGESTART_10).div(FACTOR_10);
    |			}	
    |		
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		if(OVERALLSOLD >= RANGESTART_11 && OVERALLSOLD <= RANGEEND_11)
    |			{
  > |			PRICE = PRICE_11 - (1 + OVERALLSOLD - RANGESTART_11).div(FACTOR_11);
    |			}
    |		}
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(412)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |		   UniCoinSize=UniCoinSize+spendToken;
    |           
  > |           balances[msg.sender] = balances[msg.sender].sub(spendToken);
    |          
    |		  //If first message or last message already expired set newest timestamp
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(459)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |   	 	if(balances[msg.sender]>spendToken)
    |        	{
  > |       	 	UniCoinSize=UniCoinSize.add(spendToken);
    |        	balances[msg.sender] = balances[msg.sender].sub(spendToken);
    |			}
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(494)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |        	{
    |       	 	UniCoinSize=UniCoinSize.add(spendToken);
  > |        	balances[msg.sender] = balances[msg.sender].sub(spendToken);
    |			}
    |		
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(495)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |
    |
  > |contract UniContract is StandardToken, owned {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |   //In emergency cases to stop or change timings 
    |   function aSetStart(uint256 nstart) onlyOwner {
  > |     start=nstart;
    |   }
    |   function aSetEnd(uint256 nend) onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(531)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |   }
    |   function aSetEnd(uint256 nend) onlyOwner {
  > |     end=nend;
    |   }
    |   function aSetLaunch(uint256 nlaunch) onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(534)

[33mWarning[0m for UnrestrictedWrite in contract 'UniContract':
    |   }
    |   function aSetLaunch(uint256 nlaunch) onlyOwner {
  > |     launch=nlaunch;
    |   }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(537)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |
  > |contract owned {
    |     function owned() { owner = msg.sender; }
    |     address owner;
  at /home/jiaming/mavs_srcs/contract@0x6ef5b9ae723fe059cac71ad620495575d19dac42.sol(144)


