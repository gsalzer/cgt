Processing contract: /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol:NewToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol:THETOKEN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol(84)

[33mWarning[0m for LockedEther in contract 'NewToken':
    |}
    |
  > |contract NewToken is BasicToken, ERC20 {
    |
    |  mapping (address => mapping (address => uint)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'NewToken':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'NewToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'NewToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol(136)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol(4)

[33mWarning[0m for LockedEther in contract 'THETOKEN':
    |}
    |
  > |contract THETOKEN is NewToken {
    |
    |  string public name = "ToDoMore Token";
  at /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'THETOKEN':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'THETOKEN':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'THETOKEN':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbc02b8fb7399dfd14a1762275c06c4d6b796b7f2.sol(136)


