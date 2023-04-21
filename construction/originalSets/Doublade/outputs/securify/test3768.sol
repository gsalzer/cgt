Processing contract: /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol:EMPRG
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol:Owned
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EMPRG':
    |}
    |
  > |contract EMPRG is Owned {
    |    using SafeMath for uint256;
    |    string public constant name = "empowr green";
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(80)

[33mWarning[0m for TODAmount in contract 'EMPRG':
    |		if(amtEth >0)
    |		{
  > |			_to.transfer(amtEth);
    |			emit TransferredEth(_to, amtEth);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(107)

[33mWarning[0m for TODReceiver in contract 'EMPRG':
    |		if(amtEth >0)
    |		{
  > |			_to.transfer(amtEth);
    |			emit TransferredEth(_to, amtEth);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(107)

[33mWarning[0m for UnhandledException in contract 'EMPRG':
    |		if(amtEth >0)
    |		{
  > |			_to.transfer(amtEth);
    |			emit TransferredEth(_to, amtEth);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(107)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EMPRG':
    |		if(amtEth >0)
    |		{
  > |			_to.transfer(amtEth);
    |			emit TransferredEth(_to, amtEth);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'EMPRG':
    |		
    |        emit SoldToken( _buyer,  _value,  note);
  > |        balances[this] -= _value;
    |        balances[_buyer] += _value;
    |        emit Transfer(this, _buyer, _value);
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(159)

[31mViolation[0m for UnrestrictedWrite in contract 'EMPRG':
    |        emit SoldToken( _buyer,  _value,  note);
    |        balances[this] -= _value;
  > |        balances[_buyer] += _value;
    |        emit Transfer(this, _buyer, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'EMPRG':
    |         if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |             emit Transfer( msg.sender, _to,  _value);
  > |             balances[msg.sender] -= _value;
    |             balances[_to] += _value;
    |             return true;
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'EMPRG':
    |                
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            balances[_to] += _value;
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'EMPRG':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'EMPRG':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'EMPRG':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'EMPRG':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'EMPRG':
    |	function TransferOwner(address newOwner) public onlyOwner
    |	{
  > |	    Owner = newOwner;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'EMPRG':
    |		{
    |			require(balances[_to] + amtToken > balances[_to]);
  > |			balances[this] -= amtToken;
    |			balances[_to] += amtToken;
    |			emit Transfer(this, _to, amtToken);
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'EMPRG':
    |			require(balances[_to] + amtToken > balances[_to]);
    |			balances[this] -= amtToken;
  > |			balances[_to] += amtToken;
    |			emit Transfer(this, _to, amtToken);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'EMPRG':
    |	function MintToken(uint256 amt) public onlyOwner {
    |	    require(balances[this] + amt >= balances[this]);
  > |	    currentSupply += amt;
    |	    balances[this] += amt;
    |	    emit Transfer(address(0), this, amt);
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'EMPRG':
    |	    require(balances[this] + amt >= balances[this]);
    |	    currentSupply += amt;
  > |	    balances[this] += amt;
    |	    emit Transfer(address(0), this, amt);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'EMPRG':
    |	function DestroyToken(uint256 amt) public onlyOwner {
    |	    require ( balances[this] >= amt);
  > |	    currentSupply -= amt;
    |	    balances[this] -= amt;
    |	    emit Transfer(this,address(0), amt);
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'EMPRG':
    |	    require ( balances[this] >= amt);
    |	    currentSupply -= amt;
  > |	    balances[this] -= amt;
    |	    emit Transfer(this,address(0), amt);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'EMPRG':
    |    function LockAccount(address toLock) public onlyOwner
    |    {
  > |        lockedAccounts[toLock] = true;
    |    }
    |    function UnlockAccount(address toUnlock) public onlyOwner
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'EMPRG':
    |    function UnlockAccount(address toUnlock) public onlyOwner
    |    {
  > |        delete lockedAccounts[toUnlock];
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'EMPRG':
    |    function SetTradeable(bool t) public onlyOwner
    |    {
  > |        tradeable = t;
    |    }
    |    function IsTradeable() public view returns(bool)
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(175)

[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned {
    |	address private Owner;
    |	
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |	function TransferOwner(address newOwner) public onlyOwner
    |	{
  > |	    Owner = newOwner;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(66)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xf7a6868ad958b724bc486e10bd3ddc8d63aa16c7.sol(8)


