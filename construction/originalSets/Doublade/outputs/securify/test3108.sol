Processing contract: /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol:DrAgentToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'DrAgentToken':
    |
    |
  > |contract DrAgentToken is StandardToken, Owned {
    |    string public name = 'Dr.Agent';
    |    string public symbol = 'DRA';
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(222)

[33mWarning[0m for UnhandledException in contract 'DrAgentToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(251)

[33mWarning[0m for UnhandledException in contract 'DrAgentToken':
    |    */
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(302)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DrAgentToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(251)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DrAgentToken':
    |    */
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'DrAgentToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'DrAgentToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'DrAgentToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'DrAgentToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'DrAgentToken':
    |        require(!frozenAccount[_to]);                            // Check if recipient is frozen
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'DrAgentToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'DrAgentToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner public{
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'DrAgentToken':
    |     */
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(262)

[33mWarning[0m for LockedEther in contract 'Owned':
    |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract Owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(204)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public{
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(216)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |
    |    function Owned() public{
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public{
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(217)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    /**
    |    * @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20 {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xcbfcefdac8a4469094118b375020dc77fad102f2.sol(194)


