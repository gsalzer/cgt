Processing contract: /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol:ETHACE
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'ETHACE':
    |		balances[owner] = balances[owner].sub(tokens);
    |		_totalSupply = sum;
  > |		owner.transfer(msg.value);
    |		Transfer(owner, msg.sender, tokens);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(84)

[33mWarning[0m for LockedEther in contract 'ETHACE':
    |
    |
  > |contract ETHACE is IERC20{
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(40)

[33mWarning[0m for UnhandledException in contract 'ETHACE':
    |		balances[owner] = balances[owner].sub(tokens);
    |		_totalSupply = sum;
  > |		owner.transfer(msg.value);
    |		Transfer(owner, msg.sender, tokens);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(84)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ETHACE':
    |		balances[owner] = balances[owner].sub(tokens);
    |		_totalSupply = sum;
  > |		owner.transfer(msg.value);
    |		Transfer(owner, msg.sender, tokens);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |		}
    |		uint256 sum = _totalSupply.add(tokens);		
  > |		balances[msg.sender] = balances[msg.sender].add(tokens);
    |		balances[owner] = balances[owner].sub(tokens);
    |		_totalSupply = sum;
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |		uint256 sum = _totalSupply.add(tokens);		
    |		balances[msg.sender] = balances[msg.sender].add(tokens);
  > |		balances[owner] = balances[owner].sub(tokens);
    |		_totalSupply = sum;
    |		owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |		balances[msg.sender] = balances[msg.sender].add(tokens);
    |		balances[owner] = balances[owner].sub(tokens);
  > |		_totalSupply = sum;
    |		owner.transfer(msg.value);
    |		Transfer(owner, msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |	function transfer(address _to, uint256 _value) returns (bool success){
    |		require(balances[msg.sender] >= _value	&& _value > 0);
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |		require(balances[msg.sender] >= _value	&& _value > 0);
    |		balances[msg.sender] = balances[msg.sender].sub(_value);
  > |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |	function transferFrom(address _from, address _to, uint256 _value) returns (bool success){
    |		require(allowed[_from][msg.sender] >= _value && balances[msg.sender] >= _value	&& _value > 0);
  > |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |		require(allowed[_from][msg.sender] >= _value && balances[msg.sender] >= _value	&& _value > 0);
    |		balances[_from] = balances[_from].sub(_value);
  > |		balances[_to] = balances[_to].add(_value);
    |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |		Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |		Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |   
    |	function approve(address _spender, uint256 _value) returns (bool success){
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |		uint256 total = balances[burner];
    |		total = 0;
  > |		balances[burner] = total;
    |		if (_totalSupply >= total){
    |			_totalSupply = _totalSupply.sub(total);
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |		balances[burner] = total;
    |		if (_totalSupply >= total){
  > |			_totalSupply = _totalSupply.sub(total);
    |		}
    |		Burn(burner, total);
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |        address burner = msg.sender;
    |		uint t = balances[burner].sub(_value);
  > |        balances[burner] = balances[burner].sub(_value);
    |        if (_totalSupply >= _value){
    |			_totalSupply = _totalSupply.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |        balances[burner] = balances[burner].sub(_value);
    |        if (_totalSupply >= _value){
  > |			_totalSupply = _totalSupply.sub(_value);
    |		}
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |        require(_value > 0);
    |		_value = _value.mul(10 ** decimals);
  > |        balances[owner] = balances[owner].add(_value);
    |        _totalSupply = _totalSupply.add(_value);
    |        Transfer(0, this, _value);
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |		_value = _value.mul(10 ** decimals);
    |        balances[owner] = balances[owner].add(_value);
  > |        _totalSupply = _totalSupply.add(_value);
    |        Transfer(0, this, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |	function enablePurchasing() {
    |		require(msg.sender == owner); 
  > |		purchasingAllowed = true;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |	function disablePurchasing() {
    |		require(msg.sender == owner);
  > |		purchasingAllowed = false;
    |	}   
    |	
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |	function enableBonus() {
    |		require(msg.sender == owner); 
  > |		bonusAllowed = true;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHACE':
    |	function disableBonus() {
    |		require(msg.sender == owner);
  > |		bonusAllowed = false;
    |	}   
    |
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(113)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |	function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |		uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x5ca5c12893a50cf2561c218f9d44825c0083dab6.sol(14)


