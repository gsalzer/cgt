Processing contract: /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol:CIVC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'CIVC':
    |		uint moneys = amount * sellPrice/1 ether;
    |		require(address(this).balance >= moneys);
  > |		msg.sender.transfer(moneys);
    |		balances[msg.sender] = balances[msg.sender].sub(amount);
    |		balances[this] = balances[this].add(amount);
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(327)

[33mWarning[0m for DAOConstantGas in contract 'CIVC':
    |		require(actived == true);
    |		require(!frozenAccount[_to]);
  > |		_to.transfer(address(this).balance);
    |	}
    |	/*
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(313)

[33mWarning[0m for LockedEther in contract 'CIVC':
    |// 核心类
    |// ----------------------------------------------------------------------------
  > |contract CIVC is ERC20Interface, Owned {
    |	using SafeMath
    |	for uint;
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(91)

[31mViolation[0m for TODAmount in contract 'CIVC':
    |		require(actived == true);
    |		require(!frozenAccount[_to]);
  > |		_to.transfer(address(this).balance);
    |	}
    |	/*
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(313)

[33mWarning[0m for TODAmount in contract 'CIVC':
    |		uint moneys = amount * sellPrice/1 ether;
    |		require(address(this).balance >= moneys);
  > |		msg.sender.transfer(moneys);
    |		balances[msg.sender] = balances[msg.sender].sub(amount);
    |		balances[this] = balances[this].add(amount);
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(327)

[33mWarning[0m for TODReceiver in contract 'CIVC':
    |		require(actived == true);
    |		require(!frozenAccount[_to]);
  > |		_to.transfer(address(this).balance);
    |	}
    |	/*
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(313)

[33mWarning[0m for TODReceiver in contract 'CIVC':
    |		uint moneys = amount * sellPrice/1 ether;
    |		require(address(this).balance >= moneys);
  > |		msg.sender.transfer(moneys);
    |		balances[msg.sender] = balances[msg.sender].sub(amount);
    |		balances[this] = balances[this].add(amount);
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(327)

[33mWarning[0m for UnhandledException in contract 'CIVC':
    |		allowed[msg.sender][spender] = tokens;
    |		emit Approval(msg.sender, spender, tokens);
  > |		ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(216)

[33mWarning[0m for UnhandledException in contract 'CIVC':
    |		require(actived == true);
    |		require(!frozenAccount[_to]);
  > |		_to.transfer(address(this).balance);
    |	}
    |	/*
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(313)

[33mWarning[0m for UnhandledException in contract 'CIVC':
    |		uint moneys = amount * sellPrice/1 ether;
    |		require(address(this).balance >= moneys);
  > |		msg.sender.transfer(moneys);
    |		balances[msg.sender] = balances[msg.sender].sub(amount);
    |		balances[this] = balances[this].add(amount);
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(327)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'CIVC':
    |		uint moneys = amount * sellPrice/1 ether;
    |		require(address(this).balance >= moneys);
  > |		msg.sender.transfer(moneys);
    |		balances[msg.sender] = balances[msg.sender].sub(amount);
    |		balances[this] = balances[this].add(amount);
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(327)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CIVC':
    |		allowed[msg.sender][spender] = tokens;
    |		emit Approval(msg.sender, spender, tokens);
  > |		ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CIVC':
    |		require(actived == true);
    |		require(!frozenAccount[_to]);
  > |		_to.transfer(address(this).balance);
    |	}
    |	/*
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(313)

[31mViolation[0m for UnrestrictedWrite in contract 'CIVC':
    |	function freezeAccount(address target, bool freeze) public {
    |		require(admins[msg.sender] == true);
  > |		frozenAccount[target] = freeze;
    |		emit FrozenFunds(target, freeze);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'CIVC':
    |	function setPrices(uint newBuyPrice, uint newSellPrice) public {
    |		require(admins[msg.sender] == true);
  > |		buyPrice = newBuyPrice;
    |		sellPrice = newSellPrice;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(239)

[31mViolation[0m for UnrestrictedWrite in contract 'CIVC':
    |		require(admins[msg.sender] == true);
    |		buyPrice = newBuyPrice;
  > |		sellPrice = newSellPrice;
    |	}
    |	/*
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |		} 
    |
  > |		balances[msg.sender] = balances[msg.sender].sub(tokens);
    |		balances[to] = balances[to].add(tokens);
    |		emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |
    |		balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |		balances[to] = balances[to].add(tokens);
    |		emit Transfer(msg.sender, to, tokens);
    |		// 断言检测， 不应该为错
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |	function approve(address spender, uint tokens) public returns(bool success) {
    |		require(admins[msg.sender] == true);
  > |		allowed[msg.sender][spender] = tokens;
    |		emit Approval(msg.sender, spender, tokens);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |		require(!frozenAccount[from]);
    |		require(!frozenAccount[to]);
  > |		balances[from] = balances[from].sub(tokens);
    |		allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |		balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |		require(!frozenAccount[to]);
    |		balances[from] = balances[from].sub(tokens);
  > |		allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |		balances[to] = balances[to].add(tokens);
    |		emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |		balances[from] = balances[from].sub(tokens);
    |		allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |		balances[to] = balances[to].add(tokens);
    |		emit Transfer(from, to, tokens);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |	 */
    |	function approveAndCall(address spender, uint tokens, bytes data) public returns(bool success) {
  > |		allowed[msg.sender][spender] = tokens;
    |		emit Approval(msg.sender, spender, tokens);
    |		ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |		require(actived == true);
    |        require(balances[this] >= mintedAmount);
  > |		balances[target] = balances[target].add(mintedAmount);
    |		balances[this] = balances[this].sub(mintedAmount);
    |		emit Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |        require(balances[this] >= mintedAmount);
    |		balances[target] = balances[target].add(mintedAmount);
  > |		balances[this] = balances[this].sub(mintedAmount);
    |		emit Transfer(this, target, mintedAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |		uint amount = msg.value * buyPrice/1 ether;
    |		require(balances[this] >= amount);
  > |		balances[msg.sender] = balances[msg.sender].add(amount);
    |		balances[this] = balances[this].sub(amount);
    |		emit Transfer(owner, msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |		require(balances[this] >= amount);
    |		balances[msg.sender] = balances[msg.sender].add(amount);
  > |		balances[this] = balances[this].sub(amount);
    |		emit Transfer(owner, msg.sender, amount);
    |		return(amount);
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |		require(address(this).balance >= moneys);
    |		msg.sender.transfer(moneys);
  > |		balances[msg.sender] = balances[msg.sender].sub(amount);
    |		balances[this] = balances[this].add(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |		msg.sender.transfer(moneys);
    |		balances[msg.sender] = balances[msg.sender].sub(amount);
  > |		balances[this] = balances[this].add(amount);
    |
    |		emit Transfer(msg.sender, this, amount);
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |		uint256 sum = 0;
    |		for(uint256 i = 0; i < recipients.length; i++) {
  > |			balances[recipients[i]] = balances[recipients[i]].add(moenys[i]);
    |			emit Transfer(this, msg.sender, moenys[i]);
    |			sum = sum.add(moenys[i]);
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |			sum = sum.add(moenys[i]);
    |		}
  > |		balances[this] = balances[this].sub(sum);
    |	}
    |	/*
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |		uint256 sum = 0;
    |		for(uint256 i = 0; i < recipients.length; i++) {
  > |			balances[recipients[i]] = balances[recipients[i]].sub(moenys[i]);
    |			emit Transfer(msg.sender, this, moenys[i]);
    |			sum = sum.add(moenys[i]);
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |			sum = sum.add(moenys[i]);
    |		}
  > |		balances[this] = balances[this].add(sum);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |
    |	function transferOwnership(address _newOwner) public onlyOwner {
  > |		newOwner = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |		require(msg.sender == newOwner);
    |		emit OwnershipTransferred(owner, newOwner);
  > |		owner = newOwner;
    |		newOwner = address(0);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |		emit OwnershipTransferred(owner, newOwner);
    |		owner = newOwner;
  > |		newOwner = address(0);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |		if(fromaddr[to] == address(0)) {
    |			//指定上家地址
  > |			fromaddr[to] = msg.sender;
    |		} 
    |
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |	 */
    |	function admAccount(address target, bool freeze) onlyOwner public {
  > |		admins[target] = freeze;
    |	}
    |	/*
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'CIVC':
    |	 */
    |	function setactive(bool tags) public onlyOwner {
  > |		actived = tags;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(255)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// 管理员
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |	address public owner;
    |	address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |	}
    |
  > |	function transferOwnership(address _newOwner) public onlyOwner {
    |		newOwner = _newOwner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |	address public owner;
    |	address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |	address public owner;
  > |	address public newOwner;
    |
    |	event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |	}
    |
  > |	function acceptOwnership() public {
    |		require(msg.sender == newOwner);
    |		emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |	function transferOwnership(address _newOwner) public onlyOwner {
  > |		newOwner = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |		require(msg.sender == newOwner);
    |		emit OwnershipTransferred(owner, newOwner);
  > |		owner = newOwner;
    |		newOwner = address(0);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |		emit OwnershipTransferred(owner, newOwner);
    |		owner = newOwner;
  > |		newOwner = address(0);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(84)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// 安全的加减乘除
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |	function add(uint a, uint b) internal pure returns(uint c) {
    |		c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x5d8da427250233b942e0da8775cde56b215d65d8.sol(6)


