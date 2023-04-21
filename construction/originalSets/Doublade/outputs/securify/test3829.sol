Processing contract: /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol:Bassdrops
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol:EtherealFoundationOwned
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Bassdrops':
    |}
    |
  > |contract Bassdrops is EtherealFoundationOwned {
    |    string public constant CONTRACT_NAME = "Bassdrops";
    |    string public constant CONTRACT_VERSION = "A";
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(34)

[33mWarning[0m for TODAmount in contract 'Bassdrops':
    |		if(amtEth >0)
    |		{
  > |			_to.transfer(amtEth);
    |			TransferedEth(_to, amtEth);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(67)

[33mWarning[0m for TODReceiver in contract 'Bassdrops':
    |		if(amtEth >0)
    |		{
  > |			_to.transfer(amtEth);
    |			TransferedEth(_to, amtEth);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(67)

[33mWarning[0m for UnhandledException in contract 'Bassdrops':
    |		if(amtEth >0)
    |		{
  > |			_to.transfer(amtEth);
    |			TransferedEth(_to, amtEth);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(67)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bassdrops':
    |		if(amtEth >0)
    |		{
  > |			_to.transfer(amtEth);
    |			TransferedEth(_to, amtEth);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'Bassdrops':
    |		SoldToken(msg.sender, tokensToBuy, note);
    |		Transfer(this,msg.sender,tokensToBuy);
  > |		currentSupply += tokensToBuy;
    |		balances[msg.sender] += tokensToBuy;
    |        
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Bassdrops':
    |		Transfer(this,msg.sender,tokensToBuy);
    |		currentSupply += tokensToBuy;
  > |		balances[msg.sender] += tokensToBuy;
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'Bassdrops':
    |         if (balances[msg.sender] >= _value && _value > 0 && balances[_to] + _value > balances[_to]) {
    |             Transfer( msg.sender, _to,  _value);
  > |             balances[msg.sender] -= _value;
    |             balances[_to] += _value;
    |             return true;
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'Bassdrops':
    |                
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            balances[_to] += _value;
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'Bassdrops':
    |    function approve(address _spender, uint _value) public returns (bool success) {
    |        Approval(msg.sender,  _spender, _value);
  > |        allowed[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'Bassdrops':
    |	function TransferOwner(address newOwner) public onlyOwner
    |	{
  > |	    Owner = newOwner;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(11)

[33mWarning[0m for UnrestrictedWrite in contract 'Bassdrops':
    |		{
    |			require(balances[_to] + amtToken > balances[_to]);
  > |			balances[this] -= amtToken;
    |			balances[_to] += amtToken;
    |			Transfer(this, _to, amtToken);
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Bassdrops':
    |			require(balances[_to] + amtToken > balances[_to]);
    |			balances[this] -= amtToken;
  > |			balances[_to] += amtToken;
    |			Transfer(this, _to, amtToken);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Bassdrops':
    |    }
    |    function SetTokensPerWei(uint256 tpe) public onlyOwner{
  > |        _tokenPerEth = tpe;
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Bassdrops':
    |    function LockAccount(address toLock) public onlyOwner
    |    {
  > |        lockedAccounts[toLock] = true;
    |    }
    |    function UnlockAccount(address toUnlock) public onlyOwner
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Bassdrops':
    |    function UnlockAccount(address toUnlock) public onlyOwner
    |    {
  > |        delete lockedAccounts[toUnlock];
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Bassdrops':
    |    function SetTradeable(bool t) public onlyOwner
    |    {
  > |        tradeable = t;
    |    }
    |    function IsTradeable() public view returns(bool)
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(141)

[33mWarning[0m for LockedEther in contract 'EtherealFoundationOwned':
  > |contract EtherealFoundationOwned {
    |	address private Owner;
    |    
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherealFoundationOwned':
    |	function TransferOwner(address newOwner) public onlyOwner
    |	{
  > |	    Owner = newOwner;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xfc0d55363651bcb0da1c8c6ec2bc68a5c1a2bcd3.sol(11)


