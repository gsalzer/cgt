Processing contract: /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol:TTC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20Basic {
    |  
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transfer(address _to, uint _value) public{
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |  function transfer(address _to, uint _value) public{
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(62)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |        }
    |        delete preReadyToSendAddress;
  > |        require(preMultisigEther.send(this.balance)) ; 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(371)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |        }
    |        delete mainReadyToSendAddress;
  > |        require(mainMultisigEther.send(this.balance)) ; 
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(388)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |        require(phase == Phases.AfterIco);
    |        require(this.balance > 0);
  > |        require(mainMultisigEther.send(this.balance)) ; 
    |        uint remains = coin.balanceOf(this);
    |        if (remains > 0) { 
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(408)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale is Ownable{
    |    
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(140)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |        }
    |        delete preReadyToSendAddress;
  > |        require(preMultisigEther.send(this.balance)) ; 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(371)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |        }
    |        delete mainReadyToSendAddress;
  > |        require(mainMultisigEther.send(this.balance)) ; 
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(388)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |        require(phase == Phases.AfterIco);
    |        require(this.balance > 0);
  > |        require(mainMultisigEther.send(this.balance)) ; 
    |        uint remains = coin.balanceOf(this);
    |        if (remains > 0) { 
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(408)

[31mViolation[0m for TODReceiver in contract 'Crowdsale':
    |        }
    |        delete preReadyToSendAddress;
  > |        require(preMultisigEther.send(this.balance)) ; 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(371)

[31mViolation[0m for TODReceiver in contract 'Crowdsale':
    |        }
    |        delete mainReadyToSendAddress;
  > |        require(mainMultisigEther.send(this.balance)) ; 
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(388)

[31mViolation[0m for TODReceiver in contract 'Crowdsale':
    |        require(phase == Phases.AfterIco);
    |        require(this.balance > 0);
  > |        require(mainMultisigEther.send(this.balance)) ; 
    |        uint remains = coin.balanceOf(this);
    |        if (remains > 0) { 
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(408)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |        }
    |        if (valueToSend > 0){
  > |            require(_beneficiary.send(valueToSend));
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(483)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |            if ( coinReadyToSend > 0) {
    |                preBackers[backerAddress].coinReadyToSend = 0;
  > |                coin.transfer(backerAddress, coinReadyToSend);
    |                LogCoinsEmited(backerAddress, coinReadyToSend);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(366)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        }
    |        delete preReadyToSendAddress;
  > |        require(preMultisigEther.send(this.balance)) ; 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(371)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |            if ( coinReadyToSend > 0) {
    |                mainBackers[backerAddress].coinReadyToSend = 0;
  > |                coin.transfer(backerAddress, coinReadyToSend);
    |                LogCoinsEmited(backerAddress, coinReadyToSend);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(383)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        }
    |        delete mainReadyToSendAddress;
  > |        require(mainMultisigEther.send(this.balance)) ; 
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(388)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        require(phase == Phases.AfterIco);
    |        require(this.balance > 0);
  > |        require(mainMultisigEther.send(this.balance)) ; 
    |        uint remains = coin.balanceOf(this);
    |        if (remains > 0) { 
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(408)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        require(this.balance > 0);
    |        require(mainMultisigEther.send(this.balance)) ; 
  > |        uint remains = coin.balanceOf(this);
    |        if (remains > 0) { 
    |            coin.transfer(owner,remains);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(409)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        uint remains = coin.balanceOf(this);
    |        if (remains > 0) { 
  > |            coin.transfer(owner,remains);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(411)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |     */
    |    function backTTCOwner() onlyOwner public {
  > |        coin.transferOwnership(owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(420)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        uint preRemains = PRE_MAX_CAP - preCoinSentToEther;
    |        Backer storage backer = preBackers[owner];
  > |        coin.transfer(owner, preRemains); 
    |        backer.coinSent = backer.coinSent.add(preRemains);
    |        preCoinSentToEther = preCoinSentToEther.add(preRemains);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(430)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        uint mainRemains = MAIN_MAX_CAP - mainCoinSentToEther;
    |        Backer storage backer = mainBackers[owner];
  > |        coin.transfer(owner, mainRemains); 
    |        backer.coinSent = backer.coinSent.add(mainRemains);
    |        mainCoinSentToEther = mainCoinSentToEther.add(mainRemains);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(445)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        }
    |        if (valueToSend > 0){
  > |            require(_beneficiary.send(valueToSend));
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(483)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |            if ( coinReadyToSend > 0) {
    |                preBackers[backerAddress].coinReadyToSend = 0;
  > |                coin.transfer(backerAddress, coinReadyToSend);
    |                LogCoinsEmited(backerAddress, coinReadyToSend);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(366)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |            if ( coinReadyToSend > 0) {
    |                mainBackers[backerAddress].coinReadyToSend = 0;
  > |                coin.transfer(backerAddress, coinReadyToSend);
    |                LogCoinsEmited(backerAddress, coinReadyToSend);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(383)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        require(phase == Phases.AfterIco);
    |        require(this.balance > 0);
  > |        require(mainMultisigEther.send(this.balance)) ; 
    |        uint remains = coin.balanceOf(this);
    |        if (remains > 0) { 
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(408)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        require(this.balance > 0);
    |        require(mainMultisigEther.send(this.balance)) ; 
  > |        uint remains = coin.balanceOf(this);
    |        if (remains > 0) { 
    |            coin.transfer(owner,remains);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(409)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        uint remains = coin.balanceOf(this);
    |        if (remains > 0) { 
  > |            coin.transfer(owner,remains);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(411)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |     */
    |    function backTTCOwner() onlyOwner public {
  > |        coin.transferOwnership(owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(420)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        uint preRemains = PRE_MAX_CAP - preCoinSentToEther;
    |        Backer storage backer = preBackers[owner];
  > |        coin.transfer(owner, preRemains); 
    |        backer.coinSent = backer.coinSent.add(preRemains);
    |        preCoinSentToEther = preCoinSentToEther.add(preRemains);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(430)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        uint mainRemains = MAIN_MAX_CAP - mainCoinSentToEther;
    |        Backer storage backer = mainBackers[owner];
  > |        coin.transfer(owner, mainRemains); 
    |        backer.coinSent = backer.coinSent.add(mainRemains);
    |        mainCoinSentToEther = mainCoinSentToEther.add(mainRemains);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(445)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        }
    |        if (valueToSend > 0){
  > |            require(_beneficiary.send(valueToSend));
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(483)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            uint coinReadyToSend = preBackers[backerAddress].coinReadyToSend;
    |            if ( coinReadyToSend > 0) {
  > |                preBackers[backerAddress].coinReadyToSend = 0;
    |                coin.transfer(backerAddress, coinReadyToSend);
    |                LogCoinsEmited(backerAddress, coinReadyToSend);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(365)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            uint coinReadyToSend = mainBackers[backerAddress].coinReadyToSend;
    |            if ( coinReadyToSend > 0) {
  > |                mainBackers[backerAddress].coinReadyToSend = 0;
    |                coin.transfer(backerAddress, coinReadyToSend);
    |                LogCoinsEmited(backerAddress, coinReadyToSend);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(382)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function addWhiteList(address[] _whiteList) onlyOwner public{
    |        for (uint i =0;i<_whiteList.length;i++){
  > |            whiteList[_whiteList[i]] = true;
    |        }   
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal pure  returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale is Ownable{
    |    
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            require(coinToSend.add(preCoinSentToEther) <= PRE_MAX_CAP) ;
    |
  > |            preBacker.coinSent = preBacker.coinSent.add(coinToSend);
    |            preBacker.weiReceived = preBacker.weiReceived.add(msg.value);   
    |            preBacker.coinReadyToSend = preBacker.coinReadyToSend.add(coinToSend);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |            preBacker.coinSent = preBacker.coinSent.add(coinToSend);
  > |            preBacker.weiReceived = preBacker.weiReceived.add(msg.value);   
    |            preBacker.coinReadyToSend = preBacker.coinReadyToSend.add(coinToSend);
    |            preReadyToSendAddress.push(_beneficiary);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            preBacker.coinSent = preBacker.coinSent.add(coinToSend);
    |            preBacker.weiReceived = preBacker.weiReceived.add(msg.value);   
  > |            preBacker.coinReadyToSend = preBacker.coinReadyToSend.add(coinToSend);
    |            preReadyToSendAddress.push(_beneficiary);
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            preBacker.weiReceived = preBacker.weiReceived.add(msg.value);   
    |            preBacker.coinReadyToSend = preBacker.coinReadyToSend.add(coinToSend);
  > |            preReadyToSendAddress.push(_beneficiary);
    |
    |            // Update the total wei collected during the crowdfunding
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |            // Update the total wei collected during the crowdfunding
  > |            preEtherReceived = preEtherReceived.add(msg.value); 
    |            preCoinSentToEther = preCoinSentToEther.add(coinToSend);
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            // Update the total wei collected during the crowdfunding
    |            preEtherReceived = preEtherReceived.add(msg.value); 
  > |            preCoinSentToEther = preCoinSentToEther.add(coinToSend);
    |
    |            // Send events
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            require(coinToSend.add(mainCoinSentToEther) <= MAIN_MAX_CAP) ;
    |
  > |            mainBacker.coinSent = mainBacker.coinSent.add(coinToSend);
    |            mainBacker.weiReceived = mainBacker.weiReceived.add(msg.value);   
    |            mainBacker.coinReadyToSend = mainBacker.coinReadyToSend.add(coinToSend);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |            mainBacker.coinSent = mainBacker.coinSent.add(coinToSend);
  > |            mainBacker.weiReceived = mainBacker.weiReceived.add(msg.value);   
    |            mainBacker.coinReadyToSend = mainBacker.coinReadyToSend.add(coinToSend);
    |            mainReadyToSendAddress.push(_beneficiary);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            mainBacker.coinSent = mainBacker.coinSent.add(coinToSend);
    |            mainBacker.weiReceived = mainBacker.weiReceived.add(msg.value);   
  > |            mainBacker.coinReadyToSend = mainBacker.coinReadyToSend.add(coinToSend);
    |            mainReadyToSendAddress.push(_beneficiary);
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            mainBacker.weiReceived = mainBacker.weiReceived.add(msg.value);   
    |            mainBacker.coinReadyToSend = mainBacker.coinReadyToSend.add(coinToSend);
  > |            mainReadyToSendAddress.push(_beneficiary);
    |
    |            // Update the total wei collected during the crowdfunding
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |            // Update the total wei collected during the crowdfunding
  > |            mainEtherReceived = mainEtherReceived.add(msg.value); 
    |            mainCoinSentToEther = mainCoinSentToEther.add(coinToSend);
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            // Update the total wei collected during the crowdfunding
    |            mainEtherReceived = mainEtherReceived.add(msg.value); 
  > |            mainCoinSentToEther = mainCoinSentToEther.add(coinToSend);
    |
    |            // Send events
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        Backer storage backer = preBackers[owner];
    |        coin.transfer(owner, preRemains); 
  > |        backer.coinSent = backer.coinSent.add(preRemains);
    |        preCoinSentToEther = preCoinSentToEther.add(preRemains);
    |        
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(431)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        coin.transfer(owner, preRemains); 
    |        backer.coinSent = backer.coinSent.add(preRemains);
  > |        preCoinSentToEther = preCoinSentToEther.add(preRemains);
    |        
    |        LogCoinsEmited(this ,preRemains);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        Backer storage backer = mainBackers[owner];
    |        coin.transfer(owner, mainRemains); 
  > |        backer.coinSent = backer.coinSent.add(mainRemains);
    |        mainCoinSentToEther = mainCoinSentToEther.add(mainRemains);
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(446)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        coin.transfer(owner, mainRemains); 
    |        backer.coinSent = backer.coinSent.add(mainRemains);
  > |        mainCoinSentToEther = mainCoinSentToEther.add(mainRemains);
    |
    |        LogCoinsEmited(this ,mainRemains);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(447)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        if (preBacker.coinReadyToSend > 0){ 
    |            uint preValueToSend = preBacker.coinReadyToSend.mul(1 ether).div(PRE_COIN_PER_ETHER_ICO);
  > |            preBacker.coinSent = preBacker.coinSent.sub(preBacker.coinReadyToSend);
    |            preBacker.weiReceived = preBacker.weiReceived.sub(preValueToSend);   
    |            preEtherReceived = preEtherReceived.sub(preValueToSend); 
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(462)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            uint preValueToSend = preBacker.coinReadyToSend.mul(1 ether).div(PRE_COIN_PER_ETHER_ICO);
    |            preBacker.coinSent = preBacker.coinSent.sub(preBacker.coinReadyToSend);
  > |            preBacker.weiReceived = preBacker.weiReceived.sub(preValueToSend);   
    |            preEtherReceived = preEtherReceived.sub(preValueToSend); 
    |            preCoinSentToEther = preCoinSentToEther.sub(preBacker.coinReadyToSend);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            preBacker.coinSent = preBacker.coinSent.sub(preBacker.coinReadyToSend);
    |            preBacker.weiReceived = preBacker.weiReceived.sub(preValueToSend);   
  > |            preEtherReceived = preEtherReceived.sub(preValueToSend); 
    |            preCoinSentToEther = preCoinSentToEther.sub(preBacker.coinReadyToSend);
    |            preBacker.coinReadyToSend = 0;
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(464)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            preBacker.weiReceived = preBacker.weiReceived.sub(preValueToSend);   
    |            preEtherReceived = preEtherReceived.sub(preValueToSend); 
  > |            preCoinSentToEther = preCoinSentToEther.sub(preBacker.coinReadyToSend);
    |            preBacker.coinReadyToSend = 0;
    |            valueToSend = valueToSend + preValueToSend;
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(465)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            preEtherReceived = preEtherReceived.sub(preValueToSend); 
    |            preCoinSentToEther = preCoinSentToEther.sub(preBacker.coinReadyToSend);
  > |            preBacker.coinReadyToSend = 0;
    |            valueToSend = valueToSend + preValueToSend;
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        if (mainBacker.coinReadyToSend > 0){ 
    |            uint mainValueToSend = mainBacker.coinReadyToSend.mul(1 ether).div(MAIN_COIN_PER_ETHER_ICO);
  > |            mainBacker.coinSent = mainBacker.coinSent.sub(mainBacker.coinReadyToSend);
    |            mainBacker.weiReceived = mainBacker.weiReceived.sub(mainValueToSend);   
    |            mainEtherReceived = mainEtherReceived.sub(mainValueToSend); 
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            uint mainValueToSend = mainBacker.coinReadyToSend.mul(1 ether).div(MAIN_COIN_PER_ETHER_ICO);
    |            mainBacker.coinSent = mainBacker.coinSent.sub(mainBacker.coinReadyToSend);
  > |            mainBacker.weiReceived = mainBacker.weiReceived.sub(mainValueToSend);   
    |            mainEtherReceived = mainEtherReceived.sub(mainValueToSend); 
    |            mainCoinSentToEther = mainCoinSentToEther.sub(mainBacker.coinReadyToSend);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(475)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            mainBacker.coinSent = mainBacker.coinSent.sub(mainBacker.coinReadyToSend);
    |            mainBacker.weiReceived = mainBacker.weiReceived.sub(mainValueToSend);   
  > |            mainEtherReceived = mainEtherReceived.sub(mainValueToSend); 
    |            mainCoinSentToEther = mainCoinSentToEther.sub(mainBacker.coinReadyToSend);
    |            mainBacker.coinReadyToSend = 0;
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(476)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            mainBacker.weiReceived = mainBacker.weiReceived.sub(mainValueToSend);   
    |            mainEtherReceived = mainEtherReceived.sub(mainValueToSend); 
  > |            mainCoinSentToEther = mainCoinSentToEther.sub(mainBacker.coinReadyToSend);
    |            mainBacker.coinReadyToSend = 0;
    |            valueToSend = valueToSend + mainValueToSend;
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(477)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            mainEtherReceived = mainEtherReceived.sub(mainValueToSend); 
    |            mainCoinSentToEther = mainCoinSentToEther.sub(mainBacker.coinReadyToSend);
  > |            mainBacker.coinReadyToSend = 0;
    |            valueToSend = valueToSend + mainValueToSend;
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(478)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function transferOwnership(address newOwner) onlyOwner public{
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function setTTCAddress(address _addr) onlyOwner public {
    |        require(_addr != address(0));
  > |        coin = TTC(_addr);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function setMultisigPre(address _addr) onlyOwner public {
    |        require(_addr != address(0));
  > |        preMultisigEther = _addr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function setMultisigMain(address _addr) onlyOwner public {
    |        require(_addr != address(0));
  > |        mainMultisigEther = _addr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    */
    |    function setMaximumCoinsPerAddress(uint _cnt) onlyOwner public{
  > |        maximumCoinsPerAddress = _cnt;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        if (now < PRE_START_TIME) {
    |            if (phase != Phases.PreStart) {
  > |                phase = Phases.PreStart;
    |            }
    |        } else if (now >= PRE_START_TIME && now < PRE_END_TIME) {
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        } else if (now >= PRE_START_TIME && now < PRE_END_TIME) {
    |            if (phase != Phases.PreIco) {
  > |                phase = Phases.PreIco;
    |            }
    |        } else if (now >= PRE_END_TIME && now < MAIN_START_TIME) {
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        } else if (now >= PRE_END_TIME && now < MAIN_START_TIME) {
    |            if (phase != Phases.PauseIco) {
  > |                phase = Phases.PauseIco;
    |            }
    |        }else if (now >= MAIN_START_TIME && now < MAIN_END_TIME) {
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        }else if (now >= MAIN_START_TIME && now < MAIN_END_TIME) {
    |            if (phase != Phases.MainIco) {
  > |                phase = Phases.MainIco;
    |            }
    |        }else {
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        }else {
    |            if (phase != Phases.AfterIco){
  > |                phase = Phases.AfterIco;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(351)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() public{
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) onlyOwner public{
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner public{
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(107)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal pure  returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(4)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is BasicToken, ERC20 {
    |  mapping (address => mapping (address => uint)) allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint _value) public{
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transferFrom(address _from, address _to, uint _value) public {
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transferFrom(address _from, address _to, uint _value) public {
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) public{
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function approve(address _spender, uint _value) public{
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0)) ;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(85)

[33mWarning[0m for LockedEther in contract 'TTC':
    | *  TTC token contract. Implements
    | */
  > |contract TTC is StandardToken, Ownable {
    |  string public constant name = "TTC";
    |  string public constant symbol = "TTC";
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |
    |  function transfer(address _to, uint _value) public{
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |  function approve(address _spender, uint _value) public{
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0)) ;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |   */
    |  function burn(uint _value) onlyOwner public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Transfer(msg.sender, 0x0, _value);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |  function transfer(address _to, uint _value) public{
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |
    |  function transferFrom(address _from, address _to, uint _value) public {
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |  function transferFrom(address _from, address _to, uint _value) public {
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |    function transferOwnership(address newOwner) onlyOwner public{
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'TTC':
    |  function burn(uint _value) onlyOwner public returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    totalSupply = totalSupply.sub(_value);
    |    Transfer(msg.sender, 0x0, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc00daa94bb04d9c8bb55c115135e5b60584b884d.sol(133)


