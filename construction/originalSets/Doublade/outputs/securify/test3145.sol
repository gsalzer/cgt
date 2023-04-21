Processing contract: /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol:GoldeaToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol:IssuedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(57)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is StandardToken {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function increaseApproval (address _spender, uint _addedValue) 
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(184)

[33mWarning[0m for LockedEther in contract 'GoldeaToken':
    |}
    |
  > |contract GoldeaToken is IssuedToken, BurnableToken {
    |    function GoldeaToken(uint256 _totalSupply) IssuedToken("GOLDEA", "GEA", _totalSupply, 8) {
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldeaToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldeaToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldeaToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldeaToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldeaToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldeaToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldeaToken':
    |  function increaseApproval (address _spender, uint _addedValue) 
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldeaToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldeaToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldeaToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldeaToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(184)

[33mWarning[0m for LockedEther in contract 'IssuedToken':
    |}
    |
  > |contract IssuedToken is StandardToken {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'IssuedToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'IssuedToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'IssuedToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'IssuedToken':
    |  function increaseApproval (address _spender, uint _addedValue) 
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'IssuedToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'IssuedToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(147)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(17)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue) 
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xce4f7de2730ff1b4363c9bbc82f44c73ed85a90c.sol(147)


