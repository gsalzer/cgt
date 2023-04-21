Processing contract: /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol:KHToken_StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol:KHToken_StandardToken_U
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(97)

[33mWarning[0m for LockedEther in contract 'KHToken_StandardToken':
    |} 
    |
  > |contract KHToken_StandardToken is StandardToken { 
    |    
    |    // region{fields}
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken':
    |        returns (bool)
    |    {
  > |        allowed[msg.sender][_spender] = (
    |            allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(246)

[33mWarning[0m for LockedEther in contract 'KHToken_StandardToken_U':
    |}
    |
  > |contract KHToken_StandardToken_U is StandardToken { 
    |    
    |    // region{fields}
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken_U':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken_U':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken_U':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken_U':
    |        returns (bool)
    |    {
  > |        allowed[msg.sender][_spender] = (
    |            allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken_U':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken_U':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(246)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        returns (bool)
    |    {
  > |        allowed[msg.sender][_spender] = (
    |            allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd6e6a28eb0a72af2336f80e143e7311bc3108b97.sol(246)


