Processing contract: /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol:Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Token':
  > |contract Token {
    |    string public symbol = "WJT";
    |    string public name = "Wojak Token";
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(1)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    | 
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    | 
  > |    function transferFrom(
    |        address _from,
    |        address _to,
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    | 
  > |    function approve(address _spender, uint256 _amount) returns (bool success) {
    |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    | 
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |contract Token {
  > |    string public symbol = "WJT";
    |    string public name = "Wojak Token";
    |    uint8 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |contract Token {
    |    string public symbol = "WJT";
  > |    string public name = "Wojak Token";
    |    uint8 public constant decimals = 18;
    |    uint256 _totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    string public symbol = "WJT";
    |    string public name = "Wojak Token";
  > |    uint8 public constant decimals = 18;
    |    uint256 _totalSupply = 0;
    |    uint nextHalvingDate = 1577836800; //01 Jan 2020
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    mapping(address => mapping (address => uint256)) allowed;
    | 
  > |    function totalSupply() constant returns (uint256 totalSupply) {        
    |        return _totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    }
    |	
  > |	function Mint() {
    |		if (now > nextHalvingDate)
    |		{
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |	}
    |	
  > |	function NextHalvingDate() constant returns(uint256) { return nextHalvingDate;}
    |	function InitialMintReward() constant returns(uint256) { return initialMintReward;}
    |	function MintReward() constant returns(uint256) { return mintReward;}
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |	
    |	function NextHalvingDate() constant returns(uint256) { return nextHalvingDate;}
  > |	function InitialMintReward() constant returns(uint256) { return initialMintReward;}
    |	function MintReward() constant returns(uint256) { return mintReward;}
    |	function MintCalls() constant returns(uint256) { return mintCalls;}
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |	function NextHalvingDate() constant returns(uint256) { return nextHalvingDate;}
    |	function InitialMintReward() constant returns(uint256) { return initialMintReward;}
  > |	function MintReward() constant returns(uint256) { return mintReward;}
    |	function MintCalls() constant returns(uint256) { return mintCalls;}
    |}
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |	function InitialMintReward() constant returns(uint256) { return initialMintReward;}
    |	function MintReward() constant returns(uint256) { return mintReward;}
  > |	function MintCalls() constant returns(uint256) { return mintCalls;}
    |}
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |		if (now > nextHalvingDate)
    |		{
  > |			mintReward = mintReward / 2;
    |			nextHalvingDate = nextHalvingDate + 31536000; //+ 1 year
    |		}
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |		{
    |			mintReward = mintReward / 2;
  > |			nextHalvingDate = nextHalvingDate + 31536000; //+ 1 year
    |		}
    |		balances[msg.sender] += mintReward;
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |		}
    |		balances[msg.sender] += mintReward;
  > |		_totalSupply += mintReward;
    |		Transfer(this, msg.sender, mintReward);
    |		mintCalls += 1;
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |		_totalSupply += mintReward;
    |		Transfer(this, msg.sender, mintReward);
  > |		mintCalls += 1;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |            && _amount > 0
    |            && balances[_to] + _amount > balances[_to]) {
  > |            balances[msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |            && balances[_to] + _amount > balances[_to]) {
    |            balances[_from] -= _amount;
  > |            allowed[_from][msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    | 
    |    function approve(address _spender, uint256 _amount) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |			nextHalvingDate = nextHalvingDate + 31536000; //+ 1 year
    |		}
  > |		balances[msg.sender] += mintReward;
    |		_totalSupply += mintReward;
    |		Transfer(this, msg.sender, mintReward);
  at /home/jiaming/mavs_srcs/contract@0x6bddf164164ce4461d97459e127da53a0718ed15.sol(74)


