Processing contract: /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol:FOTToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'FOTToken':
    |
    |
  > |contract FOTToken is StandardToken, Owned {
    |    string public name = 'WTO Fruit Organization Chain';
    |    string public symbol = 'FOT';
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(222)

[33mWarning[0m for UnhandledException in contract 'FOTToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(248)

[33mWarning[0m for UnhandledException in contract 'FOTToken':
    |    */
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(286)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FOTToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(248)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FOTToken':
    |    */
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'FOTToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'FOTToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'FOTToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'FOTToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'FOTToken':
    |        require(_value <= balances[msg.sender]);
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'FOTToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'FOTToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner public{
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(217)

[33mWarning[0m for LockedEther in contract 'Owned':
    |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract Owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(204)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public{
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(216)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |
    |    function Owned() public{
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public{
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(217)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    /**
    |    * @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20 {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x77db6ce3bd6e03f57fc9c26e2cb307943261be0f.sol(194)


