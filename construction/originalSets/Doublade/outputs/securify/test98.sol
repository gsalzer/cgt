Processing contract: /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol:ETLToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol(77)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol(113)

[33mWarning[0m for LockedEther in contract 'ETLToken':
    |}
    |
  > |contract ETLToken is StandardToken {
    |
    |  string public name = "E-talon";
  at /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'ETLToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'ETLToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'ETLToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'ETLToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol(144)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BurnableToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0663210a18dfdc62688b14c4ec10a1df8912e28c.sol(144)


