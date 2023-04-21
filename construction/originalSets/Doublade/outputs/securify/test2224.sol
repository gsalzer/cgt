Processing contract: /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol:XPAToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |/* taking ideas from FirstBlood token */
  > |contract SafeMath {
    |
    |    /* function assert(bool assertion) internal { */
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(4)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |/*  ERC 20 token */
  > |contract StandardToken is SafeMath, Token {
    |    /* Send coins */
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            balances[_from] = safeSub(balances[_from], _value);
  > |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        assert((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(99)

[33mWarning[0m for DAOConstantGas in contract 'XPAToken':
    |        // move to operational
    |        isFinalized = true;
  > |        assert(ethFundDeposit.send(this.balance));              // send the eth to XPlay ltd.
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(222)

[33mWarning[0m for LockedEther in contract 'XPAToken':
    |}
    |
  > |contract XPAToken is StandardToken {
    |
    |    // metadata
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(113)

[31mViolation[0m for TODAmount in contract 'XPAToken':
    |        // move to operational
    |        isFinalized = true;
  > |        assert(ethFundDeposit.send(this.balance));              // send the eth to XPlay ltd.
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(222)

[33mWarning[0m for UnhandledException in contract 'XPAToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(196)

[33mWarning[0m for UnhandledException in contract 'XPAToken':
    |        // move to operational
    |        isFinalized = true;
  > |        assert(ethFundDeposit.send(this.balance));              // send the eth to XPlay ltd.
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(222)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XPAToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XPAToken':
    |        // move to operational
    |        isFinalized = true;
  > |        assert(ethFundDeposit.send(this.balance));              // send the eth to XPlay ltd.
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAToken':
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            balances[_from] = safeSub(balances[_from], _value);
  > |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAToken':
    |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        assert((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAToken':
    |        require(tokenCrowdsaleCap >= crowdsaleSupply);
    |
  > |        balances[msg.sender] += tokens;     // add amount of XPA to sender
    |        balances[xpaFundDeposit] = safeSub(balances[xpaFundDeposit], tokens); // subtracts amount from XPlay's balance
    |        CreateXPA(msg.sender, tokens);      // logs token creation
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAToken':
    |        require(tokenCrowdsaleCap >= crowdsaleSupply);
    |
  > |        balances[msg.sender] += tokens;     // add amount of XPA to sender
    |        balances[xpaFundDeposit] = safeSub(balances[xpaFundDeposit], tokens); // subtracts amount from XPlay's balance
    |        CreateXPA(msg.sender, tokens);      // logs token creation
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAToken':
    |      
    |        // update system parameters
  > |        tokenExchangeRate = _tokenExchangeRate;
    |        tokenCrowdsaleCap = _tokenCrowdsaleCap;
    |        fundingStartBlock = _fundingStartBlock;
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAToken':
    |        // update system parameters
    |        tokenExchangeRate = _tokenExchangeRate;
  > |        tokenCrowdsaleCap = _tokenCrowdsaleCap;
    |        fundingStartBlock = _fundingStartBlock;
    |        fundingEndBlock = _fundingEndBlock;
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAToken':
    |        tokenExchangeRate = _tokenExchangeRate;
    |        tokenCrowdsaleCap = _tokenCrowdsaleCap;
  > |        fundingStartBlock = _fundingStartBlock;
    |        fundingEndBlock = _fundingEndBlock;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAToken':
    |        tokenCrowdsaleCap = _tokenCrowdsaleCap;
    |        fundingStartBlock = _fundingStartBlock;
  > |        fundingEndBlock = _fundingEndBlock;
    |    }
    |    /// @dev Ends the funding period and sends the ETH home
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAToken':
    |      
    |        // move to operational
  > |        isFinalized = true;
    |        assert(ethFundDeposit.send(this.balance));              // send the eth to XPlay ltd.
    |    }
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(221)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() {
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x90528aeb3a2b736b780fd1b6c478bb7e1d643170.sol(45)


