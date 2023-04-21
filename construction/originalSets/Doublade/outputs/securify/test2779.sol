Processing contract: /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol:ANKRToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ANKRToken':
    |}
    |
  > |contract ANKRToken is StandardToken {
    |    string public name = "Ankr Network";
    |    string public symbol = "ANKR";
  at /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRToken':
    |        require(_value <= balances[msg.sender], "There is no enough balance.");
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRToken':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRToken':
    |        returns (bool)
    |    {
  > |        allowed[msg.sender][_spender] = (
    |        allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'ANKRToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol(240)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(_value <= balances[msg.sender], "There is no enough balance.");
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol(93)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_value <= balances[msg.sender], "There is no enough balance.");
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        returns (bool)
    |    {
  > |        allowed[msg.sender][_spender] = (
    |        allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb5f406dd1dec522542c8504c4c31b7940f5d895c.sol(240)


