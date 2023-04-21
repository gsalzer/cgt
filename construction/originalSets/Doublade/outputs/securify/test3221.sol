Processing contract: /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol:WeduToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'WeduToken':
    |}
    |
  > |contract WeduToken is ERC20Interface {
    |    /**
    |     * @dev Constant parameters
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |        uint previousBalances = balanceValue[_from].unlocked + balanceValue[_to].unlocked;
    |
  > |        balanceValue[_from].unlocked -= _value;
    |        balanceValue[_to].unlocked += _value;
    |
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |        require(_value <= allowed[_from][msg.sender], "Unsufficient balance");
    |
  > |        allowed[_from][msg.sender] -= _value;
    |        return _transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |        require(allowed[msg.sender][_spender] == 0, "Already allowed token exists");
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |        require(_addedValue + oldValue <= balanceValue[msg.sender].unlocked, "Unsufficient balance");
    |
  > |        allowed[msg.sender][_spender] = _addedValue + oldValue;
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_substractedValue > oldValue){
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue - _substractedValue;
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue - _substractedValue;
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |        uint totalBalanceValue = balanceValue[_who].locked + balanceValue[_who].unlocked;
    |
  > |        balanceValue[_who].unlocked -= _value;
    |        balanceValue[_who].locked += _value;
    |
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |
    |        balanceValue[_who].unlocked -= _value;
  > |        balanceValue[_who].locked += _value;
    |
    |        assert(totalBalanceValue == balanceValue[_who].locked + balanceValue[_who].unlocked);
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |        uint totalBalanceValue = balanceValue[_who].locked + balanceValue[_who].unlocked;
    |
  > |        balanceValue[_who].locked -= _value;
    |        balanceValue[_who].unlocked += _value;
    |
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |
    |        balanceValue[_who].locked -= _value;
  > |        balanceValue[_who].unlocked += _value;
    |
    |        assert(totalBalanceValue == balanceValue[_who].locked + balanceValue[_who].unlocked);
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |
    |        balanceValue[_from].unlocked -= _value;
  > |        balanceValue[_to].unlocked += _value;
    |
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |        uint previousBalances = balanceValue[owner].unlocked + balanceValue[_to].locked;
    |
  > |        balanceValue[owner].unlocked -= _value;
    |        balanceValue[_to].locked += _value;
    |
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |
    |        balanceValue[owner].unlocked -= _value;
  > |        balanceValue[_to].locked += _value;
    |
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |        require(_nums*_submitBalance <= balanceValue[owner].unlocked, "Unsufficient balance");
    |
  > |        balanceValue[owner].unlocked -= (_nums*_submitBalance);
    |        uint8 numIndex;
    |        for(numIndex=0; numIndex < _nums; numIndex++){
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |    function addBlackList(address _who) public onlyOwner {
    |        require(!blackList[_who], "Already, sender in blacklist");
  > |        blackList[_who] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |    function removalBlackList(address _who) public onlyOwner {
    |        require(blackList[_who], "Sender does not included in blacklist");
  > |        blackList[_who] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |        uint oldTokenNum = totalSupplyValue;
    |
  > |        totalSupplyValue += _value;
    |        balanceValue[owner].unlocked += _value;
    |
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |
    |        totalSupplyValue += _value;
  > |        balanceValue[owner].unlocked += _value;
    |
    |        emit ChangeNumberofToken(oldTokenNum, totalSupplyValue);
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |        uint oldTokenNum = totalSupplyValue;
    |
  > |        totalSupplyValue -= _value;
    |        balanceValue[owner].unlocked -= _value;
    |
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |
    |        totalSupplyValue -= _value;
  > |        balanceValue[owner].unlocked -= _value;
    |
    |        emit ChangeNumberofToken(oldTokenNum, totalSupplyValue);
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'WeduToken':
    |     */
    |    function ownerMigration (address _owner) public onlyOwner returns (address) {
  > |        owner = _owner;
    |        return owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd339b7d955199253c7973fe9fdb2946a523e15a7.sol(364)


