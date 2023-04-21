Processing contract: /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol:RK40Z
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'RK40Z':
    |
    |/// RK35Z token ERC20 with Extensions ERC223
  > |contract RK40Z {
    |    uint256 constant public MAX_UINT256 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    |
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'RK40Z':
    |		for (uint i = 0; i < addresses.length; i++) {
    |			//Block / Unlock address handling tokens
  > |			frozenAccount[addresses[i]] = freeze;
    |			emit FrozenFunds(addresses[i], freeze);
    |			
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |    function transferToAddress(address _to, uint256 _value, bytes _data) private returns (bool success) {
    |        if (balanceOf(msg.sender) < _value) revert();
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        emit Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |		
    |		if (balanceOf(msg.sender) < _value) revert();
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        emit Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |        balances[_from] = safeSub(balanceOf(_from), _value);
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
    |        }
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |		require(!frozenAccount[_spender]);
    |		
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |    function OWN_burn(uint256 _value) onlyOwner public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |        require(_value <= allowed[_from][owner]);
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |        if (balanceOf(msg.sender) < _value) revert();
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |		if (balanceOf(msg.sender) < _value) revert();
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |        uint256 allowance = allowed[_from][owner];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        balances[_from] = safeSub(balanceOf(_from), _value);
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
  > |        balances[_from] = safeSub(balanceOf(_from), _value);
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |	// Creator/Owner can Locked/Unlock smart contract
    |    function OWN_ChangeState_locked(bool _locked) onlyOwner public {
  > |        SC_locked = _locked;
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |        require(balances[_from] >= _value);
    |        require(_value <= allowed[_from][owner]);
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;             
  > |        totalSupply -= _value;
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |    function OWN_mintToken(uint256 mintedAmount) onlyOwner public {
    |        //aggiungo i decimali al valore che imposto
  > |        balances[owner] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |        //aggiungo i decimali al valore che imposto
    |        balances[owner] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
    |        emit Transfer(this, owner, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |	/// Block / Unlock address handling tokens
    |    function OWN_freezeAddress(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |        // function allowed only if the address is not smart contract
    |        if (!isContract(newOwner)) {	
  > |			owner = newOwner;
    |		}
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'RK40Z':
    |		// function allowed only for smart contract
    |        if (isContract(target)) {
  > |			SmartContract_Allowed[target] = _allowed;
    |		}
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb074736e2aa30e9fd416190bd3b08206be1fccc0.sol(284)


