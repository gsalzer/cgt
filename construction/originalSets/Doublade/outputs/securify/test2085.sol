Processing contract: /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol:VIBEXToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol:VibeCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
  > |contract SafeMath {
    |
    |    function safeAdd(uint256 x, uint256 y) internal returns(uint256) {
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(1)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |/*  ERC 20 token */
  > |contract StandardToken is Token, SafeMath {
    |
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    {
    |        if (balances[msg.sender] >= _value && _value > 0 && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] = safeSubtract(balances[msg.sender], _value);
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            balances[_from] = safeSubtract(balances[_from], _value);
  > |            allowed[_from][msg.sender] = safeSubtract(allowed[_from][msg.sender], _value);
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool success)
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(81)

[33mWarning[0m for DAOConstantGas in contract 'VIBEXToken':
    |        
    |        // Send the ETH to Vibehub Creators
  > |        ethFundDeposit.transfer(msg.value);
    |
    |        // Log the creation of this tokens
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(247)

[33mWarning[0m for LockedEther in contract 'VIBEXToken':
    |
    |
  > |contract VIBEXToken is StandardToken {
    |
    |    // Token metadata
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(101)

[33mWarning[0m for UnhandledException in contract 'VIBEXToken':
    |        
    |        // Send the ETH to Vibehub Creators
  > |        ethFundDeposit.transfer(msg.value);
    |
    |        // Log the creation of this tokens
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(247)

[33mWarning[0m for UnhandledException in contract 'VIBEXToken':
    |        uint256 exchangeRate = ((160200000* 10**decimals)/totalSupply);
    |        uint256 numTokens = safeMult(exchangeRate, vibeVal); // Extra safe
  > |        if(!tokenExchange.transferFrom(tokenAccountAddress, msg.sender, numTokens)) throw;
    |
    |        // Log the redeeming of this tokens
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(281)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VIBEXToken':
    |        uint256 exchangeRate = ((160200000* 10**decimals)/totalSupply);
    |        uint256 numTokens = safeMult(exchangeRate, vibeVal); // Extra safe
  > |        if(!tokenExchange.transferFrom(tokenAccountAddress, msg.sender, numTokens)) throw;
    |
    |        // Log the redeeming of this tokens
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'VIBEXToken':
    |    {
    |        if (balances[msg.sender] >= _value && _value > 0 && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] = safeSubtract(balances[msg.sender], _value);
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'VIBEXToken':
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            balances[_from] = safeSubtract(balances[_from], _value);
  > |            allowed[_from][msg.sender] = safeSubtract(allowed[_from][msg.sender], _value);
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'VIBEXToken':
    |    returns (bool success)
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'VIBEXToken':
    |        // Only when all the checks have passed, then we update the state (ethBalances,
    |        // totalReceivedEth, totalSupply, and balances) of the contract
  > |        ethBalances[msg.sender] = safeAdd(ethBalances[msg.sender], msg.value);
    |        totalReceivedEth = checkedReceivedEth;
    |        totalSupply = safeAdd(totalSupply, tokens);
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'VIBEXToken':
    |        totalReceivedEth = checkedReceivedEth;
    |        totalSupply = safeAdd(totalSupply, tokens);
  > |        balances[msg.sender] += tokens;  // safeAdd not needed; bad semantics to use here
    |        
    |        // Send the ETH to Vibehub Creators
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'VIBEXToken':
    |        // Move the tokens of the caller to Vibehub's address
    |        //if (!super.transfer(ethFundDeposit, vibeVal)) throw;
  > |        balances[msg.sender]=0;
    |        
    |        uint256 exchangeRate = ((160200000* 10**decimals)/totalSupply);
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'VIBEXToken':
    |
    |        // Move the contract to Finalized state
  > |        state = ContractState.Finalized;
    |        savedState = ContractState.Finalized;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'VIBEXToken':
    |        // Move the contract to Finalized state
    |        state = ContractState.Finalized;
  > |        savedState = ContractState.Finalized;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'VIBEXToken':
    |    {
    |        // Move the contract to Redeeming state
  > |        state = ContractState.Redeeming;
    |        savedState = ContractState.Redeeming;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'VIBEXToken':
    |        // Move the contract to Redeeming state
    |        state = ContractState.Redeeming;
  > |        savedState = ContractState.Redeeming;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'VIBEXToken':
    |    {
    |        // Move the contract to Paused state
  > |        savedState = state;
    |        state = ContractState.Paused;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'VIBEXToken':
    |        // Move the contract to Paused state
    |        savedState = state;
  > |        state = ContractState.Paused;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'VIBEXToken':
    |    {
    |        // Move the contract to the previous state
  > |        state = savedState;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(336)

[33mWarning[0m for LockedEther in contract 'VibeCoin':
    |    }
    |}
  > |contract VibeCoin {
    |    function transferFrom(address _from, address _to, uint256 _value)
    |    returns (bool success)
  at /home/jiaming/mavs_srcs/contract@0x882448f83d90b2bf477af2ea79327fdea1335d93.sol(94)


