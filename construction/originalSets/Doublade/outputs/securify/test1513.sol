Processing contract: /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol:Caller
Processing contract: /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol:EthernityFinancialOracle
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'EthernityFinancialOracle':
    |        users[msg.sender].balance -= gp;
    |
  > |        require(oracleAddress.send(gp - feePrice));
    |        return(_gasPrice,_gasLimit);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(165)

[33mWarning[0m for DAOConstantGas in contract 'EthernityFinancialOracle':
    |            uint a = collectedFee;
    |            collectedFee = 0; 
  > |            require(owner.send(a));
    |        } else {
    |	        uint b = users[msg.sender].balance;
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(101)

[33mWarning[0m for DAOConstantGas in contract 'EthernityFinancialOracle':
    |	        uint b = users[msg.sender].balance;
    |	        users[msg.sender].balance = 0;
  > |	        require(msg.sender.send(b));
    |	    	}
    |    }
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(105)

[33mWarning[0m for DAOConstantGas in contract 'EthernityFinancialOracle':
    |
    |    function emergencyFlush() onlyOwner {
  > |        require(owner.send(this.balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(193)

[33mWarning[0m for LockedEther in contract 'EthernityFinancialOracle':
    |
    |
  > |contract EthernityFinancialOracle{
    |    
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(13)

[31mViolation[0m for TODAmount in contract 'EthernityFinancialOracle':
    |            uint a = collectedFee;
    |            collectedFee = 0; 
  > |            require(owner.send(a));
    |        } else {
    |	        uint b = users[msg.sender].balance;
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(101)

[31mViolation[0m for TODAmount in contract 'EthernityFinancialOracle':
    |
    |    function emergencyFlush() onlyOwner {
  > |        require(owner.send(this.balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(193)

[33mWarning[0m for TODAmount in contract 'EthernityFinancialOracle':
    |        users[msg.sender].balance -= gp;
    |
  > |        require(oracleAddress.send(gp - feePrice));
    |        return(_gasPrice,_gasLimit);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(165)

[31mViolation[0m for TODReceiver in contract 'EthernityFinancialOracle':
    |            uint a = collectedFee;
    |            collectedFee = 0; 
  > |            require(owner.send(a));
    |        } else {
    |	        uint b = users[msg.sender].balance;
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(101)

[31mViolation[0m for TODReceiver in contract 'EthernityFinancialOracle':
    |        users[msg.sender].balance -= gp;
    |
  > |        require(oracleAddress.send(gp - feePrice));
    |        return(_gasPrice,_gasLimit);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(165)

[31mViolation[0m for TODReceiver in contract 'EthernityFinancialOracle':
    |
    |    function emergencyFlush() onlyOwner {
  > |        require(owner.send(this.balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(193)

[33mWarning[0m for TODReceiver in contract 'EthernityFinancialOracle':
    |	        uint b = users[msg.sender].balance;
    |	        users[msg.sender].balance = 0;
  > |	        require(msg.sender.send(b));
    |	    	}
    |    }
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(105)

[33mWarning[0m for UnhandledException in contract 'EthernityFinancialOracle':
    |            uint a = collectedFee;
    |            collectedFee = 0; 
  > |            require(owner.send(a));
    |        } else {
    |	        uint b = users[msg.sender].balance;
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(101)

[33mWarning[0m for UnhandledException in contract 'EthernityFinancialOracle':
    |	        uint b = users[msg.sender].balance;
    |	        users[msg.sender].balance = 0;
  > |	        require(msg.sender.send(b));
    |	    	}
    |    }
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(105)

[33mWarning[0m for UnhandledException in contract 'EthernityFinancialOracle':
    |    		// Callback function: passive, expensive, somewhat private
    |        	Caller _caller = Caller(_user);
  > |        	_caller.EFOcallBack(_result);
    |    		} else {
    |    	// Mapping: active, cheap, public
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(142)

[33mWarning[0m for UnhandledException in contract 'EthernityFinancialOracle':
    |        users[msg.sender].balance -= gp;
    |
  > |        require(oracleAddress.send(gp - feePrice));
    |        return(_gasPrice,_gasLimit);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(165)

[33mWarning[0m for UnhandledException in contract 'EthernityFinancialOracle':
    |
    |    function emergencyFlush() onlyOwner {
  > |        require(owner.send(this.balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(193)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'EthernityFinancialOracle':
    |        users[msg.sender].balance -= gp;
    |
  > |        require(oracleAddress.send(gp - feePrice));
    |        return(_gasPrice,_gasLimit);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernityFinancialOracle':
    |            uint a = collectedFee;
    |            collectedFee = 0; 
  > |            require(owner.send(a));
    |        } else {
    |	        uint b = users[msg.sender].balance;
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(101)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernityFinancialOracle':
    |	        uint b = users[msg.sender].balance;
    |	        users[msg.sender].balance = 0;
  > |	        require(msg.sender.send(b));
    |	    	}
    |    }
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(105)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernityFinancialOracle':
    |    		// Callback function: passive, expensive, somewhat private
    |        	Caller _caller = Caller(_user);
  > |        	_caller.EFOcallBack(_result);
    |    		} else {
    |    	// Mapping: active, cheap, public
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(142)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernityFinancialOracle':
    |
    |    function emergencyFlush() onlyOwner {
  > |        require(owner.send(this.balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(193)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |
    |
  > |contract EthernityFinancialOracle{
    |    
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(13)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |        require (users[msg.sender].balance >= gp );
    |
  > |        collectedFee += feePrice;
    |        users[msg.sender].balance -= gp;
    |
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |
    |    modifier receivePayment {
  > |        users[msg.sender].balance = users[msg.sender].balance + msg.value;
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |    function requestEtherToUSD(bool _callBack , uint _gasPrice , uint _gasLimit) payable receivePayment notBanned {
    |        (_gasPrice , _gasLimit) = payToOracle (_gasPrice , _gasLimit);
  > |        users[msg.sender].callBack = _callBack;
    |        users[msg.sender].asked = true;
    |        Request ('ETH', 'USD', msg.sender , _gasPrice , _gasLimit );
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |        (_gasPrice , _gasLimit) = payToOracle (_gasPrice , _gasLimit);
    |        users[msg.sender].callBack = _callBack;
  > |        users[msg.sender].asked = true;
    |        Request ('ETH', 'USD', msg.sender , _gasPrice , _gasLimit );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |    function requestCoinToUSD(string _coin , bool _callBack , uint _gasPrice , uint _gasLimit) payable receivePayment notBanned {
    |    	(_gasPrice , _gasLimit) = payToOracle (_gasPrice , _gasLimit);
  > |        users[msg.sender].callBack = _callBack;
    |        users[msg.sender].asked = true;
    |        Request (_coin, 'USD', msg.sender , _gasPrice , _gasLimit );
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |    	(_gasPrice , _gasLimit) = payToOracle (_gasPrice , _gasLimit);
    |        users[msg.sender].callBack = _callBack;
  > |        users[msg.sender].asked = true;
    |        Request (_coin, 'USD', msg.sender , _gasPrice , _gasLimit );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |    function requestRate(string _coin, string _againstCoin , bool _callBack , uint _gasPrice , uint _gasLimit) payable receivePayment notBanned {
    |    	(_gasPrice , _gasLimit) = payToOracle (_gasPrice , _gasLimit);
  > |        users[msg.sender].callBack = _callBack;
    |        users[msg.sender].asked = true;
    |        Request (_coin, _againstCoin, msg.sender , _gasPrice , _gasLimit );
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |    	(_gasPrice , _gasLimit) = payToOracle (_gasPrice , _gasLimit);
    |        users[msg.sender].callBack = _callBack;
  > |        users[msg.sender].asked = true;
    |        Request (_coin, _againstCoin, msg.sender , _gasPrice , _gasLimit );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |        if (msg.sender == owner) {
    |            uint a = collectedFee;
  > |            collectedFee = 0; 
    |            require(owner.send(a));
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |        } else {
    |	        uint b = users[msg.sender].balance;
  > |	        users[msg.sender].balance = 0;
    |	        require(msg.sender.send(b));
    |	    	}
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |
    |        collectedFee += feePrice;
  > |        users[msg.sender].balance -= gp;
    |
    |        require(oracleAddress.send(gp - feePrice));
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |
    |
  > |contract EthernityFinancialOracle{
    |    
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(13)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |
    |		require( users[_user].asked );
  > |		users[_user].asked = false;
    |
    |    	if ( users[_user].callBack ) {
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |    
    |    function changeOwner(address _newOwner) onlyOwner {
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |
    |    function changeOracleAdd(address _newOracleAdd) onlyOwner {
  > |        oracleAddress = _newOracleAdd;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |
    |    function setFeePrice(uint _feePrice) onlyOwner {
  > |        feePrice = _feePrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |
    |    function setGasPrice(uint _gasPrice) onlyOwnerOrOracle {
  > |    	gasPrice = _gasPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |
    |    function setGasLimit(uint _gasLimit) onlyOwnerOrOracle {
  > |    	gasLimit = _gasLimit;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |
    |    function ban(address _user) onlyOwner{
  > |        users[_user].banned = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernityFinancialOracle':
    |    
    |    function desBan(address _user) onlyOwner{
  > |        users[_user].banned = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x604e244d5157c3ae734642364ace6c633fb1f278.sol(201)


