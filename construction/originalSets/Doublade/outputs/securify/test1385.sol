Processing contract: /home/jiaming/mavs_srcs/contract@0x57c09a8de0b0f471f8567609777addffb5c46a08.sol:BitexGlobalXBXCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x57c09a8de0b0f471f8567609777addffb5c46a08.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'BitexGlobalXBXCoin':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract BitexGlobalXBXCoin  {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x57c09a8de0b0f471f8567609777addffb5c46a08.sol(6)

[33mWarning[0m for UnhandledException in contract 'BitexGlobalXBXCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x57c09a8de0b0f471f8567609777addffb5c46a08.sol(192)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitexGlobalXBXCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x57c09a8de0b0f471f8567609777addffb5c46a08.sol(192)

[31mViolation[0m for UnrestrictedWrite in contract 'BitexGlobalXBXCoin':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        emit eventForAllTxn(_from, _to, _value,"TRANSFER",plaformTxId);
  at /home/jiaming/mavs_srcs/contract@0x57c09a8de0b0f471f8567609777addffb5c46a08.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'BitexGlobalXBXCoin':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x57c09a8de0b0f471f8567609777addffb5c46a08.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'BitexGlobalXBXCoin':
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |		require(balanceOf[_from] - lockAmount[_from] >= _value); 
  > |        allowance[_from][msg.sender] -= _value;
    |      // require(msg.sender==owner);
    |       _transfer(_from, _to, _value, "OTHER");
  at /home/jiaming/mavs_srcs/contract@0x57c09a8de0b0f471f8567609777addffb5c46a08.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'BitexGlobalXBXCoin':
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |		require(balanceOf[_from] - lockAmount[_from] >= _value); 
  > |        allowance[_from][msg.sender] -= _value;
    |      // require(msg.sender==owner);
    |       _transfer(_from, _to, _value, plaformTxId);
  at /home/jiaming/mavs_srcs/contract@0x57c09a8de0b0f471f8567609777addffb5c46a08.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'BitexGlobalXBXCoin':
    |        returns (bool success) {
    |		require(msg.sender==owner);
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x57c09a8de0b0f471f8567609777addffb5c46a08.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'BitexGlobalXBXCoin':
    |        require(msg.sender==owner);
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x57c09a8de0b0f471f8567609777addffb5c46a08.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'BitexGlobalXBXCoin':
    |    	require(msg.sender==owner);
    |		require(balanceOf[msg.sender] + _value <= 300000000);     //if total supply reaches at 300,000,000 then its not mint
  > |        balanceOf[msg.sender] += _value;                          // Subtract from the sender
    |        totalSupply += _value;                                    // Updates totalSupply
    |         emit eventForAllTxn(msg.sender, msg.sender, _value,"MINT", plaformTxId);
  at /home/jiaming/mavs_srcs/contract@0x57c09a8de0b0f471f8567609777addffb5c46a08.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'BitexGlobalXBXCoin':
    |		require(msg.sender==owner);
    |		 require(balanceOf[_spender] >= _value);  
  > |       lockAmount[_spender] += _value;
    |	   emit Lock(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x57c09a8de0b0f471f8567609777addffb5c46a08.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'BitexGlobalXBXCoin':
    |		require(msg.sender==owner);
    |		require(balanceOf[_spender] >= _value);  
  > |       lockAmount[_spender] -= _value;
    |	   emit Lock(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x57c09a8de0b0f471f8567609777addffb5c46a08.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'BitexGlobalXBXCoin':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        emit eventForAllTxn(msg.sender, msg.sender, _value,"BURN", plaformTxId);
  at /home/jiaming/mavs_srcs/contract@0x57c09a8de0b0f471f8567609777addffb5c46a08.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'BitexGlobalXBXCoin':
    |		require(balanceOf[msg.sender] + _value <= 300000000);     //if total supply reaches at 300,000,000 then its not mint
    |        balanceOf[msg.sender] += _value;                          // Subtract from the sender
  > |        totalSupply += _value;                                    // Updates totalSupply
    |         emit eventForAllTxn(msg.sender, msg.sender, _value,"MINT", plaformTxId);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x57c09a8de0b0f471f8567609777addffb5c46a08.sol(220)


