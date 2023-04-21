Processing contract: /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol:Math
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol:SISA
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol:preICO
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Math':
  > |contract Math {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(1)

[31mViolation[0m for DAOConstantGas in contract 'SISA':
    |      var owing = dividendsOwing(account);
    |      if(owing > 0) {
  > |        account.send(owing);
    |        accounts[account].lastDividends = totalDividends;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'SISA':
    |      return (balances[account] * newDividends) / totalSupply;
    |    }
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'SISA':
    |        return balances[_owner];
    |    }
  > |    function voteCount(address _proposal) constant returns (uint256 count) {
    |        return votes[_proposal];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(144)

[31mViolation[0m for MissingInputValidation in contract 'SISA':
    |        return votes[_proposal];
    |    }
  > |    function voteBalance(address _owner) constant returns (uint256 balance)
    |    {
    |        return accounts[_owner].votes;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(147)

[31mViolation[0m for MissingInputValidation in contract 'SISA':
    |
    |    }
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(152)

[31mViolation[0m for MissingInputValidation in contract 'SISA':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(158)

[31mViolation[0m for MissingInputValidation in contract 'SISA':
    |
    |    // }
  > |    function castVote(address proposal) 
    |    	public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(270)

[31mViolation[0m for MissingInputValidation in contract 'SISA':
    |        }
    |    }
  > |    function changePreseller(address newAddress)
    |        external
    |        onlyAdmin
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(306)

[31mViolation[0m for MissingInputValidation in contract 'SISA':
    |        return true;
    |    }
  > |    function changeIssuer(address newAddress)
    |        external
    |        onlyAdmin
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(318)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |    uint256 public totalDividends;
    |    uint public voteEnds = 1;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |    /// total amount of tokens
    |    uint256 public totalSupply;
  > |    uint256 public totalDividends;
    |    uint public voteEnds = 1;
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |    uint256 public totalSupply;
    |    uint256 public totalDividends;
  > |    uint public voteEnds = 1;
    |    /// @param _owner The address from which the balance will be retrieved
    |    /// @return The balance
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |      _;
    |    }
  > |    function dividendsOwing(address account) internal returns(uint) {
    |      var newDividends = totalDividends - accounts[account].lastDividends;
    |      return (balances[account] * newDividends) / totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |
    |
  > |	string constant public name = "SISA Token";
    |	string constant public symbol = "SISA";
    |	uint constant public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |
    |	string constant public name = "SISA Token";
  > |	string constant public symbol = "SISA";
    |	uint constant public decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(206)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |	string constant public name = "SISA Token";
    |	string constant public symbol = "SISA";
  > |	uint constant public decimals = 18;
    |
    |	address public ico_tokens = 0x1111111111111111111111111111111111111111;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(207)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |	uint constant public decimals = 18;
    |
  > |	address public ico_tokens = 0x1111111111111111111111111111111111111111;
    |	address public preICO_tokens = 0x2222222222222222222222222222222222222222;
    |	address public bounty_funds;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(209)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |
    |	address public ico_tokens = 0x1111111111111111111111111111111111111111;
  > |	address public preICO_tokens = 0x2222222222222222222222222222222222222222;
    |	address public bounty_funds;
    |	address public founder;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(210)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |	address public ico_tokens = 0x1111111111111111111111111111111111111111;
    |	address public preICO_tokens = 0x2222222222222222222222222222222222222222;
  > |	address public bounty_funds;
    |	address public founder;
    |	address public admin;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |	address public preICO_tokens = 0x2222222222222222222222222222222222222222;
    |	address public bounty_funds;
  > |	address public founder;
    |	address public admin;
    |	address public team_funds;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(212)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |	address public bounty_funds;
    |	address public founder;
  > |	address public admin;
    |	address public team_funds;
    |	address public issuer;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(213)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |	address public founder;
    |	address public admin;
  > |	address public team_funds;
    |	address public issuer;
    |	address public preseller;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(214)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |	address public admin;
    |	address public team_funds;
  > |	address public issuer;
    |	address public preseller;
    |
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(215)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |	address public team_funds;
    |	address public issuer;
  > |	address public preseller;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(216)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |    	
    |    }
  > |    function callVote() 
    |    	public
    |    	onlyAdmin
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(284)

[31mViolation[0m for UnhandledException in contract 'SISA':
    |      var owing = dividendsOwing(account);
    |      if(owing > 0) {
  > |        account.send(owing);
    |        accounts[account].lastDividends = totalDividends;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'SISA':
    |            }
    |        } else if (accounts[_from].lastVote < voteEnds) {
  > |            accounts[_from].votes = balances[_from];
    |            accounts[_from].lastVote = voteEnds;
    |            if (accounts[_to].lastVote < voteEnds) {
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'SISA':
    |        } else if (accounts[_from].lastVote < voteEnds) {
    |            accounts[_from].votes = balances[_from];
  > |            accounts[_from].lastVote = voteEnds;
    |            if (accounts[_to].lastVote < voteEnds) {
    |                accounts[_to].votes = balances[_to];
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'SISA':
    |            accounts[_from].lastVote = voteEnds;
    |            if (accounts[_to].lastVote < voteEnds) {
  > |                accounts[_to].votes = balances[_to];
    |                accounts[_to].lastVote = voteEnds;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'SISA':
    |            if (accounts[_to].lastVote < voteEnds) {
    |                accounts[_to].votes = balances[_to];
  > |                accounts[_to].lastVote = voteEnds;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'SISA':
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  > |            balances[_to] += _value;
    |            balances[_from] -= _value;
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(187)

[31mViolation[0m for UnrestrictedWrite in contract 'SISA':
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  > |            balances[_from] -= _value;
    |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(188)

[31mViolation[0m for UnrestrictedWrite in contract 'SISA':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(189)

[31mViolation[0m for UnrestrictedWrite in contract 'SISA':
    |    		throw;
    |    	}
  > |    	votes[proposal] = accounts[msg.sender].votes;
    |    	accounts[msg.sender].votes = 0;
    |    	
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |    }
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |    {
    |    	if (accounts[msg.sender].lastVote < voteEnds) {
  > |    		accounts[msg.sender].votes = balances[msg.sender];
    |    		accounts[msg.sender].lastVote = voteEnds;
    |
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |    	if (accounts[msg.sender].lastVote < voteEnds) {
    |    		accounts[msg.sender].votes = balances[msg.sender];
  > |    		accounts[msg.sender].lastVote = voteEnds;
    |
    |    	} else if (accounts[msg.sender].votes == 0 ) {
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |    	}
    |    	votes[proposal] = accounts[msg.sender].votes;
  > |    	accounts[msg.sender].votes = 0;
    |    	
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |    	returns (bool)
    |    {
  > |    	voteEnds = now + 7 days;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |        returns (bool)
    |    {    
  > |        delete allowed[preICO_tokens][preseller];
    |        preseller = newAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |    {    
    |        delete allowed[preICO_tokens][preseller];
  > |        preseller = newAddress;
    |
    |        allowed[preICO_tokens][preseller] = balanceOf(preICO_tokens);
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |        preseller = newAddress;
    |
  > |        allowed[preICO_tokens][preseller] = balanceOf(preICO_tokens);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |        returns (bool)
    |    {    
  > |        delete allowed[ico_tokens][issuer];
    |        issuer = newAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |    {    
    |        delete allowed[ico_tokens][issuer];
  > |        issuer = newAddress;
    |
    |        allowed[ico_tokens][issuer] = balanceOf(ico_tokens);
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |        issuer = newAddress;
    |
  > |        allowed[ico_tokens][issuer] = balanceOf(ico_tokens);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(326)

[31mViolation[0m for DAOConstantGas in contract 'StandardToken':
    |      var owing = dividendsOwing(account);
    |      if(owing > 0) {
  > |        account.send(owing);
    |        accounts[account].lastDividends = totalDividends;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(132)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |.*/
    |
  > |contract StandardToken is Token {
    |
    |    struct Account {
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |      return (balances[account] * newDividends) / totalSupply;
    |    }
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        return balances[_owner];
    |    }
  > |    function voteCount(address _proposal) constant returns (uint256 count) {
    |        return votes[_proposal];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(144)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        return votes[_proposal];
    |    }
  > |    function voteBalance(address _owner) constant returns (uint256 balance)
    |    {
    |        return accounts[_owner].votes;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(147)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |    }
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(152)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |    uint256 public totalDividends;
    |    uint public voteEnds = 1;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    /// total amount of tokens
    |    uint256 public totalSupply;
  > |    uint256 public totalDividends;
    |    uint public voteEnds = 1;
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    uint256 public totalSupply;
    |    uint256 public totalDividends;
  > |    uint public voteEnds = 1;
    |    /// @param _owner The address from which the balance will be retrieved
    |    /// @return The balance
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |      _;
    |    }
  > |    function dividendsOwing(address account) internal returns(uint) {
    |      var newDividends = totalDividends - accounts[account].lastDividends;
    |      return (balances[account] * newDividends) / totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(137)

[31mViolation[0m for UnhandledException in contract 'StandardToken':
    |      var owing = dividendsOwing(account);
    |      if(owing > 0) {
  > |        account.send(owing);
    |        accounts[account].lastDividends = totalDividends;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    }
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(153)

[33mWarning[0m for LockedEther in contract 'preICO':
    |
    |}
  > |contract preICO is Math {
    |
    |	SISA public SISA_token; 
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(346)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |  }
    |
  > |  function div(uint a, uint b) internal returns (uint) {
    |    assert(b > 0);
    |    uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |contract preICO is Math {
    |
  > |	SISA public SISA_token; 
    |	address public founder; 
    |	address public sale_address = 0x2222222222222222222222222222222222222222;
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(348)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |
    |	SISA public SISA_token; 
  > |	address public founder; 
    |	address public sale_address = 0x2222222222222222222222222222222222222222;
    |
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(349)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |	SISA public SISA_token; 
    |	address public founder; 
  > |	address public sale_address = 0x2222222222222222222222222222222222222222;
    |
    |	//Price / 100
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(350)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |
    |	//Price / 100
  > |	uint public price = 37348272642390287;
    |	//uint price = div(100 ether, 267750 * ether)
    |
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(353)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |	//uint price = div(100 ether, 267750 * ether)
    |
  > |	uint public begins = 1508457600;
    |	uint public ends = 1509321600;
    |
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(356)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |
    |	uint public begins = 1508457600;
  > |	uint public ends = 1509321600;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x18b9821d5755aad13e47df53059c215997a0da20.sol(357)


