Processing contract: /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol:BazistaICO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol:BazistaToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BazistaICO':
    |		uint256 val = deposits[_to];
    |		deposits[_to] = 0;
  > |		require(_to.send(val));
    |	}
    |	function refund() public {
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(298)

[33mWarning[0m for DAOConstantGas in contract 'BazistaICO':
    |			status == Status.FINISH;
    |		}
  > |		require((this.balance >= amount) && receiver.send(amount));
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(359)

[33mWarning[0m for LockedEther in contract 'BazistaICO':
    |}
    |
  > |contract BazistaICO is owned {
    |	enum Status {WAIT_PRESALE, PRESALE, WAIT_SALE, SALE, STOP, FINISH, REFUND}
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(156)

[33mWarning[0m for TODAmount in contract 'BazistaICO':
    |			status == Status.FINISH;
    |		}
  > |		require((this.balance >= amount) && receiver.send(amount));
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(359)

[33mWarning[0m for TODReceiver in contract 'BazistaICO':
    |		uint256 val = deposits[_to];
    |		deposits[_to] = 0;
  > |		require(_to.send(val));
    |	}
    |	function refund() public {
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(298)

[33mWarning[0m for TODReceiver in contract 'BazistaICO':
    |			status == Status.FINISH;
    |		}
  > |		require((this.balance >= amount) && receiver.send(amount));
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(359)

[33mWarning[0m for UnhandledException in contract 'BazistaICO':
    |		uint256 val = deposits[_to];
    |		deposits[_to] = 0;
  > |		require(_to.send(val));
    |	}
    |	function refund() public {
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(298)

[33mWarning[0m for UnhandledException in contract 'BazistaICO':
    |		tokens = tokens.add(getBonus(tokens));
    |
  > |		require(token.transfer(msg.sender, tokens));
    |
    |		if(status == Status.PRESALE) {
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(314)

[33mWarning[0m for UnhandledException in contract 'BazistaICO':
    |
    |		require(wireLimit>=0);
  > |		require(token.transfer(_to, tokens));
    |
    |		if(status == Status.PRESALE) {
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(334)

[33mWarning[0m for UnhandledException in contract 'BazistaICO':
    |
    |	function addUnsoldTokens() public onlyOwner {
  > |		require((now > (saleEnd + 60 days)) && (token.balanceOf(this) > 0));
    |
    |		require(token.transfer(token.marketingWallet(), token.balanceOf(this)));
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(345)

[33mWarning[0m for UnhandledException in contract 'BazistaICO':
    |		require((now > (saleEnd + 60 days)) && (token.balanceOf(this) > 0));
    |
  > |		require(token.transfer(token.marketingWallet(), token.balanceOf(this)));
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(347)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BazistaICO':
    |		uint256 val = deposits[_to];
    |		deposits[_to] = 0;
  > |		require(_to.send(val));
    |	}
    |	function refund() public {
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(298)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BazistaICO':
    |		tokens = tokens.add(getBonus(tokens));
    |
  > |		require(token.transfer(msg.sender, tokens));
    |
    |		if(status == Status.PRESALE) {
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(314)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BazistaICO':
    |
    |		require(wireLimit>=0);
  > |		require(token.transfer(_to, tokens));
    |
    |		if(status == Status.PRESALE) {
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(334)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BazistaICO':
    |
    |	function addUnsoldTokens() public onlyOwner {
  > |		require((now > (saleEnd + 60 days)) && (token.balanceOf(this) > 0));
    |
    |		require(token.transfer(token.marketingWallet(), token.balanceOf(this)));
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(345)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BazistaICO':
    |		require((now > (saleEnd + 60 days)) && (token.balanceOf(this) > 0));
    |
  > |		require(token.transfer(token.marketingWallet(), token.balanceOf(this)));
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(347)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BazistaICO':
    |			status == Status.FINISH;
    |		}
  > |		require((this.balance >= amount) && receiver.send(amount));
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaICO':
    |
    |	function canBuy() internal returns (bool apply){
  > |		status = getStatus();
    |
    |		if((status == Status.PRESALE)){
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaICO':
    |		else if((status == Status.SALE)) {
    |			if(presaleTokens>0){
  > |				crowdsaleTokens = crowdsaleTokens.add(presaleTokens);
    |				presaleTokens = 0;
    |			}
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaICO':
    |			if(presaleTokens>0){
    |				crowdsaleTokens = crowdsaleTokens.add(presaleTokens);
  > |				presaleTokens = 0;
    |			}
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaICO':
    |	function stopForce() public onlyOwner {
    |		require(getStatus() != Status.STOP);
  > |		status = Status.STOP;
    |		saleEnd = now;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaICO':
    |		require(getStatus() != Status.STOP);
    |		status = Status.STOP;
  > |		saleEnd = now;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaICO':
    |		require(getStatus() == Status.STOP);
    |		if(soldTokens < minTokens){
  > |			status = Status.REFUND;
    |		}
    |		else{
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaICO':
    |		}
    |		else{
  > |			status = Status.FINISH;
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaICO':
    |		require(deposits[_to]>0);
    |		uint256 val = deposits[_to];
  > |		deposits[_to] = 0;
    |		require(_to.send(val));
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaICO':
    |
    |		tokens = calcTokens(msg.value);
  > |		soldTokens = soldTokens.add(tokens);
    |		tokens = tokens.add(getBonus(tokens));
    |
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaICO':
    |
    |		if(status == Status.PRESALE) {
  > |			presaleTokens = presaleTokens.sub(tokens);
    |		}
    |		if(status == Status.SALE){
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaICO':
    |		}
    |		if(status == Status.SALE){
  > |			crowdsaleTokens = crowdsaleTokens.sub(tokens);
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaICO':
    |		}
    |
  > |		deposits[msg.sender]=deposits[msg.sender].add(msg.value);
    |	}
    |	function addWire(address _to, uint tokens, uint bonus) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaICO':
    |		require((tokens > 0) && (bonus >= 0) && canBuy());
    |
  > |		soldTokens = soldTokens.add(tokens);
    |
    |		tokens = tokens.add(bonus);
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaICO':
    |
    |		tokens = tokens.add(bonus);
  > |		wireLimit = wireLimit.sub(tokens);
    |
    |		require(wireLimit>=0);
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaICO':
    |
    |		if(status == Status.PRESALE) {
  > |			presaleTokens = presaleTokens.sub(tokens);
    |		}
    |		if(status == Status.SALE){
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaICO':
    |		}
    |		if(status == Status.SALE){
  > |			crowdsaleTokens = crowdsaleTokens.sub(tokens);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaICO':
    |
    |	function transferOwnership(address newOwner) public onlyOwner {
  > |		owner = newOwner;
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(61)

[33mWarning[0m for LockedEther in contract 'BazistaToken':
    |}
    |
  > |contract BazistaToken is ERC20, owned {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |
    |	function transferOwnership(address newOwner) public onlyOwner {
  > |		owner = newOwner;
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |
    |	function setWallets(address _advisorsWallet, address _teamWallet, address _marketingWallet, address _bountyWallet) public onlyOwner {
  > |		advisorsWallet = _advisorsWallet;
    |		_transferFrom(this, advisorsWallet, advisorsSupply);
    |
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |		_transferFrom(this, advisorsWallet, advisorsSupply);
    |
  > |		teamWallet = _teamWallet;
    |		_transferFrom(this, teamWallet, teamSupply);
    |
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |		_transferFrom(this, teamWallet, teamSupply);
    |
  > |		marketingWallet = _marketingWallet;
    |		_transferFrom(this, marketingWallet, marketingSupply);
    |
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |		_transferFrom(this, marketingWallet, marketingSupply);
    |
  > |		bountyWallet = _bountyWallet;
    |		_transferFrom(this, bountyWallet, bountySupply);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |
    |	function setICO(address _icoWallet) public onlyOwner {
  > |		icoWallet = _icoWallet;
    |		_transferFrom(this, icoWallet, icoSupply);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |	}
    |	function transferFrom(address _from, address _to, uint256 _value) public onlyPayloadSize(3 * 32) returns (bool) {
  > |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |		_transferFrom(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |	function _transferFrom(address _from, address _to, uint256 _value) internal {
    |		require(_value > 0);
  > |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |		require(_value > 0);
    |		balances[_from] = balances[_from].sub(_value);
  > |		balances[_to] = balances[_to].add(_value);
    |		Transfer(_from, _to, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |	function approve(address _spender, uint256 _value) public returns (bool) {
    |		require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(150)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |	function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |		uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(22)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |
  > |contract owned {
    |	address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |	}
    |
  > |	function transferOwnership(address newOwner) public onlyOwner {
    |		owner = newOwner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |	address public owner;
    |
    |	function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |	function transferOwnership(address newOwner) public onlyOwner {
  > |		owner = newOwner;
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xd05da50bb78044a05e5f2ca06f7c7127b0851d0f.sol(61)


