Processing contract: /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol:EPCToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'EPCToken':
    |    
    |    function withdraw() public ownerOnly {
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(66)

[33mWarning[0m for LockedEther in contract 'EPCToken':
    |/// Code for ERC20+alpha token
    |/// @author A. Vidovic
  > |contract EPCToken {
    |    string public name = 'Earth Power Coin';    //fancy name
    |    uint8 public decimals = 18;                 //How many decimals to show. It's like comparing 1 wei to 1 ether.
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(6)

[31mViolation[0m for TODAmount in contract 'EPCToken':
    |    
    |    function withdraw() public ownerOnly {
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(66)

[33mWarning[0m for TODReceiver in contract 'EPCToken':
    |    
    |    function withdraw() public ownerOnly {
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(66)

[33mWarning[0m for UnhandledException in contract 'EPCToken':
    |    
    |    function withdraw() public ownerOnly {
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(66)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EPCToken':
    |    
    |    function withdraw() public ownerOnly {
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'EPCToken':
    |                    frozenTokens[msg.sender] += tokens * percentFrozenWhenBought / 100;
    |                    balances[msg.sender] += tokens * ( 100 - percentFrozenWhenBought) / 100;
  > |                    saleCap -= tokens;
    |                    emit Transfer(0, msg.sender, tokens);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |            if (tokens<=saleCap) {
    |                if (tokens > 0) { 
  > |                    lastUnfrozenTimestamps[msg.sender] = block.timestamp;
    |                    boughtTokens[msg.sender] += tokens;
    |                    frozenTokens[msg.sender] += tokens * percentFrozenWhenBought / 100;
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |                if (tokens > 0) { 
    |                    lastUnfrozenTimestamps[msg.sender] = block.timestamp;
  > |                    boughtTokens[msg.sender] += tokens;
    |                    frozenTokens[msg.sender] += tokens * percentFrozenWhenBought / 100;
    |                    balances[msg.sender] += tokens * ( 100 - percentFrozenWhenBought) / 100;
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |                    lastUnfrozenTimestamps[msg.sender] = block.timestamp;
    |                    boughtTokens[msg.sender] += tokens;
  > |                    frozenTokens[msg.sender] += tokens * percentFrozenWhenBought / 100;
    |                    balances[msg.sender] += tokens * ( 100 - percentFrozenWhenBought) / 100;
    |                    saleCap -= tokens;
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |                    boughtTokens[msg.sender] += tokens;
    |                    frozenTokens[msg.sender] += tokens * percentFrozenWhenBought / 100;
  > |                    balances[msg.sender] += tokens * ( 100 - percentFrozenWhenBought) / 100;
    |                    saleCap -= tokens;
    |                    emit Transfer(0, msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |                    tokensToUnfreeze = frozenTokens[_owner];
    |                }
  > |                balances[_owner] += tokensToUnfreeze;
    |                frozenTokens[_owner] -= tokensToUnfreeze;
    |                lastUnfrozenTimestamps[_owner] = block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |                }
    |                balances[_owner] += tokensToUnfreeze;
  > |                frozenTokens[_owner] -= tokensToUnfreeze;
    |                lastUnfrozenTimestamps[_owner] = block.timestamp;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |                balances[_owner] += tokensToUnfreeze;
    |                frozenTokens[_owner] -= tokensToUnfreeze;
  > |                lastUnfrozenTimestamps[_owner] = block.timestamp;
    |            }
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |                    tokensToUnfreeze = frozenAwardedTokens[_owner];
    |                }
  > |                balances[_owner] += tokensToUnfreeze;
    |                frozenAwardedTokens[_owner] -= tokensToUnfreeze;
    |                lastUnfrozenAwardedTimestamps[_owner] = block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |                }
    |                balances[_owner] += tokensToUnfreeze;
  > |                frozenAwardedTokens[_owner] -= tokensToUnfreeze;
    |                lastUnfrozenAwardedTimestamps[_owner] = block.timestamp;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |                balances[_owner] += tokensToUnfreeze;
    |                frozenAwardedTokens[_owner] -= tokensToUnfreeze;
  > |                lastUnfrozenAwardedTimestamps[_owner] = block.timestamp;
    |            }
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |                balances[_to] += _value;
    |            }
  > |            balances[msg.sender] -= _value;
    |            emit Transfer(msg.sender, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |            }
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            emit Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    /// @return Whether the approval was successful or not
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(385)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |        if (owner0 == 0) {
    |            if (owner == 0) {
  > |                owner0 = _newOwner;
    |            } else {
    |                owner0 = owner;
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |                owner0 = _newOwner;
    |            } else {
  > |                owner0 = owner;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |            }
    |        }
  > |        owner = _newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    
    |    function addToTotalSupply(uint256 _delta) public ownerOnly returns (uint256 availableAmount) {
  > |        totalSupply += _delta * weisPerEth;
    |        notAttributed += _delta * weisPerEth;
    |        return notAttributed;
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    function addToTotalSupply(uint256 _delta) public ownerOnly returns (uint256 availableAmount) {
    |        totalSupply += _delta * weisPerEth;
  > |        notAttributed += _delta * weisPerEth;
    |        return notAttributed;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    
    |    function setSaleCap(uint256 _saleCap) public ownerOnly returns (uint256 toBeSold) {
  > |        notAttributed += saleCap;           // restore remaining previous saleCap to notAttributed pool
    |        saleCap = _saleCap * weisPerEth;
    |        if (saleCap > notAttributed) {      // not oversold amount 
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    function setSaleCap(uint256 _saleCap) public ownerOnly returns (uint256 toBeSold) {
    |        notAttributed += saleCap;           // restore remaining previous saleCap to notAttributed pool
  > |        saleCap = _saleCap * weisPerEth;
    |        if (saleCap > notAttributed) {      // not oversold amount 
    |            saleCap = notAttributed;
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |        saleCap = _saleCap * weisPerEth;
    |        if (saleCap > notAttributed) {      // not oversold amount 
  > |            saleCap = notAttributed;
    |        }
    |        notAttributed -= saleCap;           // attribute this new cap
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |            saleCap = notAttributed;
    |        }
  > |        notAttributed -= saleCap;           // attribute this new cap
    |        return saleCap;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    
    |    function setSaleFlag(bool _saleFlag) public ownerOnly {
  > |        onSaleFlag = _saleFlag;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    
    |    function setUseWhitelistFlag(bool _useWhitelistFlag) public ownerOnly {
  > |        useWhitelistFlag = _useWhitelistFlag;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    
    |    function setPercentFrozenWhenBought(uint256 _percentFrozenWhenBought) public ownerOnly {
  > |        percentFrozenWhenBought = _percentFrozenWhenBought;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    
    |    function setPercentUnfrozenAfterBuyPerPeriod(uint256 _percentUnfrozenAfterBuyPerPeriod) public ownerOnly {
  > |        percentUnfrozenAfterBuyPerPeriod = _percentUnfrozenAfterBuyPerPeriod;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    
    |    function setBuyUnfreezePeriodSeconds(uint _buyUnfreezePeriodSeconds) public ownerOnly {
  > |        buyUnfreezePeriodSeconds = _buyUnfreezePeriodSeconds;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    
    |    function setPercentFrozenWhenAwarded(uint256 _percentFrozenWhenAwarded) public ownerOnly {
  > |        percentFrozenWhenAwarded = _percentFrozenWhenAwarded;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    
    |    function setPercentUnfrozenAfterAwardedPerPeriod(uint256 _percentUnfrozenAfterAwardedPerPeriod) public ownerOnly {
  > |        percentUnfrozenAfterAwardedPerPeriod = _percentUnfrozenAfterAwardedPerPeriod;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    
    |    function setAwardedInitialWaitSeconds(uint _awardedInitialWaitSeconds) public ownerOnly {
  > |        awardedInitialWaitSeconds = _awardedInitialWaitSeconds;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    
    |    function setAwardedUnfreezePeriodSeconds(uint _awardedUnfreezePeriodSeconds) public ownerOnly {
  > |        awardedUnfreezePeriodSeconds = _awardedUnfreezePeriodSeconds;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |            if (tokens<=notAttributed) {
    |                if (tokens > 0) {
  > |                    awardedTimestamps[_to] = block.timestamp;
    |                    awardedTokens[_to] += tokens;
    |                    frozenAwardedTokens[_to] += tokens * percentFrozenWhenAwarded / 100;
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |                if (tokens > 0) {
    |                    awardedTimestamps[_to] = block.timestamp;
  > |                    awardedTokens[_to] += tokens;
    |                    frozenAwardedTokens[_to] += tokens * percentFrozenWhenAwarded / 100;
    |                    balances[_to] += tokens * ( 100 - percentFrozenWhenAwarded) / 100;
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |                    awardedTimestamps[_to] = block.timestamp;
    |                    awardedTokens[_to] += tokens;
  > |                    frozenAwardedTokens[_to] += tokens * percentFrozenWhenAwarded / 100;
    |                    balances[_to] += tokens * ( 100 - percentFrozenWhenAwarded) / 100;
    |                    notAttributed -= tokens;
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |                    awardedTokens[_to] += tokens;
    |                    frozenAwardedTokens[_to] += tokens * percentFrozenWhenAwarded / 100;
  > |                    balances[_to] += tokens * ( 100 - percentFrozenWhenAwarded) / 100;
    |                    notAttributed -= tokens;
    |                    emit Transfer(0, _to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |                    frozenAwardedTokens[_to] += tokens * percentFrozenWhenAwarded / 100;
    |                    balances[_to] += tokens * ( 100 - percentFrozenWhenAwarded) / 100;
  > |                    notAttributed -= tokens;
    |                    emit Transfer(0, _to, tokens);
    |                }
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |            if (tokens<=notAttributed) {
    |                if (tokens > 0) {
  > |                    balances[_to] += tokens;
    |                    notAttributed -= tokens;
    |                    emit Transfer(0, _to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |                if (tokens > 0) {
    |                    balances[_to] += tokens;
  > |                    notAttributed -= tokens;
    |                    emit Transfer(0, _to, tokens);
    |                }
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    
    |    function setWhitelist(address _addr, bool _wlStatus) public ownerOnly {
  > |        whitelist[_addr] = _wlStatus;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    
    |    function setSaleAddr(address _addr, bool _saleStatus) public ownerOnly {
  > |        saleAddrs[_addr] = _saleStatus;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    
    |    function setManualSaleFlag(bool _manualSaleFlag) public ownerOnly {
  > |        manualSaleFlag = _manualSaleFlag;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |
    |    function setBlockedAccount(address _addr, bool _blockedStatus) public ownerOnly {
  > |        blockedAccounts[_addr] = _blockedStatus;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |    function moveTokens(address _from, address _to, uint256 _amount) public ownerOnly  returns (bool success) {
    |        if (_amount>0 && balances[_from] >= _amount) {
  > |            balances[_from] -= _amount;
    |            balances[_to] += _amount;
    |            emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'EPCToken':
    |        if (_amount>0 && balances[_from] >= _amount) {
    |            balances[_from] -= _amount;
  > |            balances[_to] += _amount;
    |            emit Transfer(_from, _to, _amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x25543db4ff6a57affb219cca074a1e983c024c18.sol(262)


