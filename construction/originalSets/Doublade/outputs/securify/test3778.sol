Processing contract: /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol:ERC20Standard
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol:SNSCOIN
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Standard':
    |pragma solidity ^0.4.11;
    |
  > |contract ERC20Standard {
    |	
    |	mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Standard':
    |	} 
    |
  > |	function balanceOf(address _owner) public constant returns (uint balance) {
    |	    return balances[_owner];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Standard':
    |	}
    |
  > |	function transfer(address _recipient, uint _value) onlyPayloadSize(2*32) public {
    |		require(balances[msg.sender] >= _value && _value > 0);
    |	    balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Standard':
    |    }
    |
  > |	function transferFrom(address _from, address _to, uint _value) public {
    |		require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0);
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Standard':
    |    }
    |
  > |	function approve(address _spender, uint _value) public {
    |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Standard':
    |	}
    |
  > |	function allowance(address _spender, address _owner) public constant returns (uint balance) {
    |		return allowed[_owner][_spender];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Standard':
    |		require(balances[msg.sender] >= _value && _value > 0);
    |	    balances[msg.sender] -= _value;
  > |	    balances[_recipient] += _value;
    |	    Transfer(msg.sender, _recipient, _value);        
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(21)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Standard':
    |	function transferFrom(address _from, address _to, uint _value) public {
    |		require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Standard':
    |		require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Standard':
    |	function transfer(address _recipient, uint _value) onlyPayloadSize(2*32) public {
    |		require(balances[msg.sender] >= _value && _value > 0);
  > |	    balances[msg.sender] -= _value;
    |	    balances[_recipient] += _value;
    |	    Transfer(msg.sender, _recipient, _value);        
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Standard':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Standard':
    |
    |	function approve(address _spender, uint _value) public {
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(34)

[33mWarning[0m for LockedEther in contract 'SNSCOIN':
    |}
    |
  > |contract SNSCOIN is ERC20Standard {
    |	string public name = "SNScoin";
    |	uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'SNSCOIN':
    |	} 
    |
  > |	function balanceOf(address _owner) public constant returns (uint balance) {
    |	    return balances[_owner];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'SNSCOIN':
    |	}
    |
  > |	function transfer(address _recipient, uint _value) onlyPayloadSize(2*32) public {
    |		require(balances[msg.sender] >= _value && _value > 0);
    |	    balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'SNSCOIN':
    |    }
    |
  > |	function transferFrom(address _from, address _to, uint _value) public {
    |		require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0);
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'SNSCOIN':
    |    }
    |
  > |	function approve(address _spender, uint _value) public {
    |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'SNSCOIN':
    |	}
    |
  > |	function allowance(address _spender, address _owner) public constant returns (uint balance) {
    |		return allowed[_owner][_spender];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'SNSCOIN':
    |
    |contract SNSCOIN is ERC20Standard {
  > |	string public name = "SNScoin";
    |	uint8 public decimals = 18;
    |	string public symbol = "SNS";
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'SNSCOIN':
    |contract SNSCOIN is ERC20Standard {
    |	string public name = "SNScoin";
  > |	uint8 public decimals = 18;
    |	string public symbol = "SNS";
    |	uint public totalSupply = 500000000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'SNSCOIN':
    |	string public name = "SNScoin";
    |	uint8 public decimals = 18;
  > |	string public symbol = "SNS";
    |	uint public totalSupply = 500000000000000000000000000;
    |	    
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'SNSCOIN':
    |	uint8 public decimals = 18;
    |	string public symbol = "SNS";
  > |	uint public totalSupply = 500000000000000000000000000;
    |	    
    |	function SNSCOIN() {
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'SNSCOIN':
    |		require(balances[msg.sender] >= _value && _value > 0);
    |	    balances[msg.sender] -= _value;
  > |	    balances[_recipient] += _value;
    |	    Transfer(msg.sender, _recipient, _value);        
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(21)

[31mViolation[0m for UnrestrictedWrite in contract 'SNSCOIN':
    |	function transferFrom(address _from, address _to, uint _value) public {
    |		require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'SNSCOIN':
    |		require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'SNSCOIN':
    |	function transfer(address _recipient, uint _value) onlyPayloadSize(2*32) public {
    |		require(balances[msg.sender] >= _value && _value > 0);
  > |	    balances[msg.sender] -= _value;
    |	    balances[_recipient] += _value;
    |	    Transfer(msg.sender, _recipient, _value);        
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'SNSCOIN':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'SNSCOIN':
    |
    |	function approve(address _spender, uint _value) public {
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xf86d6f388661a220171468f14ecbed78611ccccc.sol(34)


