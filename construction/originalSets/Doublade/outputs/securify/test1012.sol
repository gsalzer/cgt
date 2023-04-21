Processing contract: /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol:BTMC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BTMC':
    |
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(198)

[33mWarning[0m for LockedEther in contract 'BTMC':
    |
    |
  > |contract BTMC is ERC20,Ownable{
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(84)

[31mViolation[0m for TODAmount in contract 'BTMC':
    |
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(198)

[33mWarning[0m for TODReceiver in contract 'BTMC':
    |
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(198)

[33mWarning[0m for UnhandledException in contract 'BTMC':
    |
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(198)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BTMC':
    |
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |	{
    |		uint256 amount=_value.mul(_rate);
  > |		totalSupply=totalSupply.add(amount);
    |		balances[receiver] +=amount;
    |		CreateBTMC(receiver,amount);
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |		uint256 amount=_value.mul(_rate);
    |		totalSupply=totalSupply.add(amount);
  > |		balances[receiver] +=amount;
    |		CreateBTMC(receiver,amount);
    |		Transfer(0x0, receiver, amount);
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |		processFunding(receiver,_value,_rate);
    |		uint256 amount=_value.mul(_rate);
  > |		totalFundingSupply = totalFundingSupply.add(amount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |		processFunding(msg.sender,_value,1);
    |		//增加已经普通提现份额
  > |		totalCommonWithdrawSupply=totalCommonWithdrawSupply.add(_value);
    |	}
    |	//20180907可提
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |		processFunding(msg.sender,TEAM_UNFREEZE,1);
    |		//标记团队已提现
  > |		hasOneStepWithdraw = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |		processFunding(msg.sender,TEAM_UNFREEZE,1);
    |		//标记团队已提现
  > |		hasTwoStepWithdraw = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |		processFunding(msg.sender,TEAM_UNFREEZE,1);
    |		//标记团队已提现
  > |		hasThreeStepWithdraw = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |		processFunding(msg.sender,TEAM_UNFREEZE,1);
    |		//标记团队已提现
  > |		hasFourStepWithdraw = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |		processFunding(msg.sender,TEAM_UNFREEZE,1);
    |		//标记团队已提现
  > |		hasFiveStepWithdraw = true;
    |	}			
    |
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |		require(_to != address(0));
    |		// SafeMath.sub will throw if there is not enough balance.
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |		// SafeMath.sub will throw if there is not enough balance.
    |		balances[msg.sender] = balances[msg.sender].sub(_value);
  > |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |		require(_to != address(0));
    |		uint256 _allowance = allowed[_from][msg.sender];
  > |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |		uint256 _allowance = allowed[_from][msg.sender];
    |		balances[_from] = balances[_from].sub(_value);
  > |		balances[_to] = balances[_to].add(_value);
    |		allowed[_from][msg.sender] = _allowance.sub(_value);
    |		Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		allowed[_from][msg.sender] = _allowance.sub(_value);
    |		Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |  	function approve(address _spender, uint256 _value) public returns (bool) 
    |  	{
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |		onlyOwner
    |	{
  > |		oneStepRate=_oneStepRate;
    |		twoStepRate=_twoStepRate;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |	{
    |		oneStepRate=_oneStepRate;
  > |		twoStepRate=_twoStepRate;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |        onlyOwner
    |    {
  > |		stepOneStartTime=_stepOneStartTime;
    |		stepTwoStartTime=_stepTwoStartTime;
    |		endTime=_endTime;
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |    {
    |		stepOneStartTime=_stepOneStartTime;
  > |		stepTwoStartTime=_stepTwoStartTime;
    |		endTime=_endTime;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'BTMC':
    |		stepOneStartTime=_stepOneStartTime;
    |		stepTwoStartTime=_stepTwoStartTime;
  > |		endTime=_endTime;
    |    }
    |	  
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(354)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |  event Approval(address indexed owner, address indexed spender, uint256 value);
    |}
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |}
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(49)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x3f47f64c2c50db26f71878cf123d9bb791fc5819.sol(54)


