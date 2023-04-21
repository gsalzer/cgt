Processing contract: /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol:ERC20Standard
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol:NewToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Standard':
    |//------------------------------------------------------------------------------------------------
    |
  > |contract ERC20Standard {
    |	uint public totalSupply;
    |	
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Standard':
    |	} 
    |
  > |	function balanceOf(address _owner) constant returns (uint balance) {
    |		return balances[_owner];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Standard':
    |	}
    |
  > |	function transfer(address _recipient, uint _value) onlyPayloadSize(2*32) {
    |		require(balances[msg.sender] >= _value && _value > 0);
    |	    balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Standard':
    |    }
    |
  > |	function transferFrom(address _from, address _to, uint _value) {
    |		require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0);
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Standard':
    |    }
    |
  > |	function approve(address _spender, uint _value) {
    |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Standard':
    |	}
    |
  > |	function allowance(address _spender, address _owner) constant returns (uint balance) {
    |		return allowed[_owner][_spender];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Standard':
    |
    |contract ERC20Standard {
  > |	uint public totalSupply;
    |	
    |	string public name;
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Standard':
    |	uint public totalSupply;
    |	
  > |	string public name;
    |	uint8 public decimals;
    |	string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Standard':
    |	
    |	string public name;
  > |	uint8 public decimals;
    |	string public symbol;
    |	string public version;
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Standard':
    |	string public name;
    |	uint8 public decimals;
  > |	string public symbol;
    |	string public version;
    |	
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Standard':
    |	uint8 public decimals;
    |	string public symbol;
  > |	string public version;
    |	
    |	mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Standard':
    |		require(balances[msg.sender] >= _value && _value > 0);
    |	    balances[msg.sender] -= _value;
  > |	    balances[_recipient] += _value;
    |	    Transfer(msg.sender, _recipient, _value);        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Standard':
    |	function transferFrom(address _from, address _to, uint _value) {
    |		require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Standard':
    |		require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Standard':
    |	function transfer(address _recipient, uint _value) onlyPayloadSize(2*32) {
    |		require(balances[msg.sender] >= _value && _value > 0);
  > |	    balances[msg.sender] -= _value;
    |	    balances[_recipient] += _value;
    |	    Transfer(msg.sender, _recipient, _value);        
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Standard':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Standard':
    |
    |	function approve(address _spender, uint _value) {
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(66)

[33mWarning[0m for LockedEther in contract 'NewToken':
    |}
    |
  > |contract NewToken is ERC20Standard {
    |	function NewToken() {
    |		totalSupply = 1000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'NewToken':
    |	} 
    |
  > |	function balanceOf(address _owner) constant returns (uint balance) {
    |		return balances[_owner];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'NewToken':
    |	}
    |
  > |	function transfer(address _recipient, uint _value) onlyPayloadSize(2*32) {
    |		require(balances[msg.sender] >= _value && _value > 0);
    |	    balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'NewToken':
    |    }
    |
  > |	function transferFrom(address _from, address _to, uint _value) {
    |		require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0);
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'NewToken':
    |    }
    |
  > |	function approve(address _spender, uint _value) {
    |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'NewToken':
    |	}
    |
  > |	function allowance(address _spender, address _owner) constant returns (uint balance) {
    |		return allowed[_owner][_spender];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'NewToken':
    |
    |contract ERC20Standard {
  > |	uint public totalSupply;
    |	
    |	string public name;
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'NewToken':
    |	uint public totalSupply;
    |	
  > |	string public name;
    |	uint8 public decimals;
    |	string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'NewToken':
    |	
    |	string public name;
  > |	uint8 public decimals;
    |	string public symbol;
    |	string public version;
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'NewToken':
    |	string public name;
    |	uint8 public decimals;
  > |	string public symbol;
    |	string public version;
    |	
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'NewToken':
    |	uint8 public decimals;
    |	string public symbol;
  > |	string public version;
    |	
    |	mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'NewToken':
    |		require(balances[msg.sender] >= _value && _value > 0);
    |	    balances[msg.sender] -= _value;
  > |	    balances[_recipient] += _value;
    |	    Transfer(msg.sender, _recipient, _value);        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'NewToken':
    |	function transferFrom(address _from, address _to, uint _value) {
    |		require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'NewToken':
    |		require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'NewToken':
    |	function transfer(address _recipient, uint _value) onlyPayloadSize(2*32) {
    |		require(balances[msg.sender] >= _value && _value > 0);
  > |	    balances[msg.sender] -= _value;
    |	    balances[_recipient] += _value;
    |	    Transfer(msg.sender, _recipient, _value);        
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'NewToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'NewToken':
    |
    |	function approve(address _spender, uint _value) {
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x25567b880c0a8ddb50eaaa7dbea615c6d6a93076.sol(66)


