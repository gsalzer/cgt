Processing contract: /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol:CrystalToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol:SafeBasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol:SafeStandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'CrystalToken':
    |
    |        // Transfer funds to the wallet
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(366)

[33mWarning[0m for LockedEther in contract 'CrystalToken':
    |
    |// Main contract
  > |contract CrystalToken is SafeStandardToken, Ownable
    |{
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(246)

[33mWarning[0m for UnhandledException in contract 'CrystalToken':
    |
    |        // Transfer funds to the wallet
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(366)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrystalToken':
    |
    |        // Transfer funds to the wallet
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |        require(!locked || admin[msg.sender] == true || receivable[_to] == true);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |    {
    |        require(_value == 0 || allowed[msg.sender][_spender] == 0);
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool success)
    |    {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |
    |        if (_subtractedValue > oldValue)
  > |            allowed[msg.sender][_spender] = 0;
    |        else
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |            allowed[msg.sender][_spender] = 0;
    |        else
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |        require(_to != address(0));
    |        uint256 _allowance = allowed[_from][msg.sender];
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |        uint256 _allowance = allowed[_from][msg.sender];
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |
    |        // Reduce the number of available tokens in the round (fails if there are no more available tokens)
  > |        round.availableTokens = round.availableTokens.sub(tokens);
    |
    |        // Add the number of tokens to the current user's balance of this round
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |
    |        // Add the number of tokens to the current user's balance of this round
  > |        round.balances[msg.sender] = round.balances[msg.sender].add(tokens);
    |
    |        // Transfer the amount of token to the buyer
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |
    |        // Transfer the amount of token to the buyer
  > |        balances[owner] = balances[owner].sub(tokens);
    |        balances[beneficiary] = balances[beneficiary].add(tokens);
    |        Transfer(owner, beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |        // Transfer the amount of token to the buyer
    |        balances[owner] = balances[owner].sub(tokens);
  > |        balances[beneficiary] = balances[beneficiary].add(tokens);
    |        Transfer(owner, beneficiary, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |
    |        // Update the number of collected money
  > |        weiRaised = weiRaised.add(weiAmount);
    |
    |        // Transfer funds to the wallet
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |        require(_value <= balances[msg.sender]);
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |    function mint(uint256 _value) public onlyOwner
    |    {
  > |        totalSupply = totalSupply.add(_value);
    |        balances[msg.sender] = balances[msg.sender].add(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |    {
    |        totalSupply = totalSupply.add(_value);
  > |        balances[msg.sender] = balances[msg.sender].add(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |    function setTokensLocked(bool _value) onlyOwner public
    |    {
  > |        locked = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(428)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |    function setRound(uint256 _roundIndex) public onlyOwner
    |    {
  > |        runningRound = _roundIndex;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(436)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |    function setAdmin(address _addr, bool _value) onlyOwner public
    |    {
  > |        admin[_addr] = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(441)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |    function setReceivable(address _addr, bool _value) onlyOwner public
    |    {
  > |        receivable[_addr] = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(446)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |    {
    |        require(_round >= 0 && _round < rounds.length);
  > |        rounds[_round].startTime = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |    {
    |        require(_round >= 0 && _round < rounds.length);
  > |        rounds[_round].endTime = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(458)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |    {
    |        require(_round >= 0 && _round < rounds.length);
  > |        rounds[_round].availableTokens = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(464)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |    {
    |        require(_round >= 0 && _round < rounds.length);
  > |        rounds[_round].maxPerUser = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(470)

[33mWarning[0m for UnrestrictedWrite in contract 'CrystalToken':
    |        uint256 rate = _ethvalue_usd * 100 / _round_usd_cents;
    |        uint256 oldRate = rounds[_round].rate;
  > |        rounds[_round].rate = rate;
    |        RateChanged(msg.sender, _round, oldRate, rounds[_round].rate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(478)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |// Contract Ownable (defines a contract with an owner)
    |//------------------------------------------------------------------------------------------------------------
  > |contract Ownable
    |{
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @dev Address of the current owner
    |    */
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public
    |    {
    |        require(newOwner != address(0));
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(65)

[33mWarning[0m for LockedEther in contract 'SafeBasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract SafeBasicToken is ERC20Basic
    |{
    |    // Use safemath for math operations
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeBasicToken':
    |        require(!locked || admin[msg.sender] == true || receivable[_to] == true);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(144)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath
    |{
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256)
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(75)

[33mWarning[0m for LockedEther in contract 'SafeStandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract SafeStandardToken is ERC20, SafeBasicToken
    |{
    |    /** Map address => (address => value)
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeStandardToken':
    |        require(!locked || admin[msg.sender] == true || receivable[_to] == true);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeStandardToken':
    |    {
    |        require(_value == 0 || allowed[msg.sender][_spender] == 0);
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeStandardToken':
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool success)
    |    {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeStandardToken':
    |
    |        if (_subtractedValue > oldValue)
  > |            allowed[msg.sender][_spender] = 0;
    |        else
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeStandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        else
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeStandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x26cb3641aaa43911f1d4cb2ce544eb652aac7c47.sol(237)


