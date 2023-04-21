Processing contract: /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol:Math
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol:SISA
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol:Token
[33mWarning[0m for LockedEther in contract 'Math':
  > |contract Math {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(1)

[31mViolation[0m for DAOConstantGas in contract 'SISA':
    |      var owing = dividendsOwing(account);
    |      if(owing > 0) {
  > |        account.send(owing);
    |        accounts[account].lastDividends = totalDividends;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'SISA':
    |      return (balances[account] * newDividends) / totalSupply;
    |    }
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'SISA':
    |        return balances[_owner];
    |    }
  > |    function voteCount(address _proposal) constant returns (uint256 count) {
    |        return votes[_proposal];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'SISA':
    |        return votes[_proposal];
    |    }
  > |    function voteBalance(address _owner) constant returns (uint256 balance)
    |    {
    |        return accounts[_owner].votes;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'SISA':
    |
    |    }
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(126)

[31mViolation[0m for MissingInputValidation in contract 'SISA':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'SISA':
    |
    |
  > |    function castVote(address proposal) 
    |    	public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(222)

[31mViolation[0m for MissingInputValidation in contract 'SISA':
    |        }
    |    }
  > |    function changePreseller(address newAddress)
    |        external
    |        onlyAdmin
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(258)

[31mViolation[0m for MissingInputValidation in contract 'SISA':
    |        return true;
    |    }
  > |    function changeIssuer(address newAddress)
    |        external
    |        onlyAdmin
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(270)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |    uint256 public totalDividends;
    |    uint public voteEnds = 1;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |    /// total amount of tokens
    |    uint256 public totalSupply;
  > |    uint256 public totalDividends;
    |    uint public voteEnds = 1;
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |    uint256 public totalSupply;
    |    uint256 public totalDividends;
  > |    uint public voteEnds = 1;
    |    /// @param _owner The address from which the balance will be retrieved
    |    /// @return The balance
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |      _;
    |    }
  > |    function dividendsOwing(address account) internal returns(uint) {
    |      var newDividends = totalDividends - accounts[account].lastDividends;
    |      return (balances[account] * newDividends) / totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |
    |
  > |	string constant public name = "SISA Token";
    |	string constant public symbol = "SISA";
    |	uint constant public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |
    |	string constant public name = "SISA Token";
  > |	string constant public symbol = "SISA";
    |	uint constant public decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |	string constant public name = "SISA Token";
    |	string constant public symbol = "SISA";
  > |	uint constant public decimals = 18;
    |
    |	address public ico_tokens = 0x1111111111111111111111111111111111111111;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |	uint constant public decimals = 18;
    |
  > |	address public ico_tokens = 0x1111111111111111111111111111111111111111;
    |	address public preICO_tokens = 0x2222222222222222222222222222222222222222;
    |	address public bounty_funds;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(180)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |
    |	address public ico_tokens = 0x1111111111111111111111111111111111111111;
  > |	address public preICO_tokens = 0x2222222222222222222222222222222222222222;
    |	address public bounty_funds;
    |	address public founder;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |	address public ico_tokens = 0x1111111111111111111111111111111111111111;
    |	address public preICO_tokens = 0x2222222222222222222222222222222222222222;
  > |	address public bounty_funds;
    |	address public founder;
    |	address public admin;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |	address public preICO_tokens = 0x2222222222222222222222222222222222222222;
    |	address public bounty_funds;
  > |	address public founder;
    |	address public admin;
    |	address public team_funds;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |	address public bounty_funds;
    |	address public founder;
  > |	address public admin;
    |	address public team_funds;
    |	address public issuer;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |	address public founder;
    |	address public admin;
  > |	address public team_funds;
    |	address public issuer;
    |	address public preseller;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(185)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |	address public admin;
    |	address public team_funds;
  > |	address public issuer;
    |	address public preseller;
    |
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |	address public team_funds;
    |	address public issuer;
  > |	address public preseller;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'SISA':
    |    	
    |    }
  > |    function callVote() 
    |    	public
    |    	onlyAdmin
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(236)

[31mViolation[0m for UnhandledException in contract 'SISA':
    |      var owing = dividendsOwing(account);
    |      if(owing > 0) {
  > |        account.send(owing);
    |        accounts[account].lastDividends = totalDividends;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(106)

[31mViolation[0m for UnrestrictedWrite in contract 'SISA':
    |            }
    |        } else if (accounts[_from].lastVote < voteEnds) {
  > |            accounts[_from].votes = balances[_from];
    |            accounts[_from].lastVote = voteEnds;
    |            if (accounts[_to].lastVote < voteEnds) {
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'SISA':
    |        } else if (accounts[_from].lastVote < voteEnds) {
    |            accounts[_from].votes = balances[_from];
  > |            accounts[_from].lastVote = voteEnds;
    |            if (accounts[_to].lastVote < voteEnds) {
    |                accounts[_to].votes = balances[_to];
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'SISA':
    |            accounts[_from].lastVote = voteEnds;
    |            if (accounts[_to].lastVote < voteEnds) {
  > |                accounts[_to].votes = balances[_to];
    |                accounts[_to].lastVote = voteEnds;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'SISA':
    |            if (accounts[_to].lastVote < voteEnds) {
    |                accounts[_to].votes = balances[_to];
  > |                accounts[_to].lastVote = voteEnds;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'SISA':
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  > |            balances[_to] += _value;
    |            balances[_from] -= _value;
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'SISA':
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  > |            balances[_from] -= _value;
    |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(162)

[31mViolation[0m for UnrestrictedWrite in contract 'SISA':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(163)

[31mViolation[0m for UnrestrictedWrite in contract 'SISA':
    |    		throw;
    |    	}
  > |    	votes[proposal] = accounts[msg.sender].votes;
    |    	accounts[msg.sender].votes = 0;
    |    	
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |    }
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |    {
    |    	if (accounts[msg.sender].lastVote < voteEnds) {
  > |    		accounts[msg.sender].votes = balances[msg.sender];
    |    		accounts[msg.sender].lastVote = voteEnds;
    |
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |    	if (accounts[msg.sender].lastVote < voteEnds) {
    |    		accounts[msg.sender].votes = balances[msg.sender];
  > |    		accounts[msg.sender].lastVote = voteEnds;
    |
    |    	} else if (accounts[msg.sender].votes == 0 ) {
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |    	}
    |    	votes[proposal] = accounts[msg.sender].votes;
  > |    	accounts[msg.sender].votes = 0;
    |    	
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |    	returns (bool)
    |    {
  > |    	voteEnds = now + 7 days;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |        returns (bool)
    |    {    
  > |        delete allowed[preICO_tokens][preseller];
    |        preseller = newAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |    {    
    |        delete allowed[preICO_tokens][preseller];
  > |        preseller = newAddress;
    |
    |        allowed[preICO_tokens][preseller] = balanceOf(preICO_tokens);
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |        preseller = newAddress;
    |
  > |        allowed[preICO_tokens][preseller] = balanceOf(preICO_tokens);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |        returns (bool)
    |    {    
  > |        delete allowed[ico_tokens][issuer];
    |        issuer = newAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |    {    
    |        delete allowed[ico_tokens][issuer];
  > |        issuer = newAddress;
    |
    |        allowed[ico_tokens][issuer] = balanceOf(ico_tokens);
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'SISA':
    |        issuer = newAddress;
    |
  > |        allowed[ico_tokens][issuer] = balanceOf(ico_tokens);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(278)

[31mViolation[0m for DAOConstantGas in contract 'StandardToken':
    |      var owing = dividendsOwing(account);
    |      if(owing > 0) {
  > |        account.send(owing);
    |        accounts[account].lastDividends = totalDividends;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(106)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |}
  > |contract StandardToken is Token {
    |
    |    struct Account {
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |      return (balances[account] * newDividends) / totalSupply;
    |    }
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        return balances[_owner];
    |    }
  > |    function voteCount(address _proposal) constant returns (uint256 count) {
    |        return votes[_proposal];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        return votes[_proposal];
    |    }
  > |    function voteBalance(address _owner) constant returns (uint256 balance)
    |    {
    |        return accounts[_owner].votes;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |    }
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(126)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |    uint256 public totalDividends;
    |    uint public voteEnds = 1;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    /// total amount of tokens
    |    uint256 public totalSupply;
  > |    uint256 public totalDividends;
    |    uint public voteEnds = 1;
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    uint256 public totalSupply;
    |    uint256 public totalDividends;
  > |    uint public voteEnds = 1;
    |    /// @param _owner The address from which the balance will be retrieved
    |    /// @return The balance
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |      _;
    |    }
  > |    function dividendsOwing(address account) internal returns(uint) {
    |      var newDividends = totalDividends - accounts[account].lastDividends;
    |      return (balances[account] * newDividends) / totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(111)

[31mViolation[0m for UnhandledException in contract 'StandardToken':
    |      var owing = dividendsOwing(account);
    |      if(owing > 0) {
  > |        account.send(owing);
    |        accounts[account].lastDividends = totalDividends;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    }
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6cad60050969e38b9a8e705f6e706473eecd22bd.sol(127)


