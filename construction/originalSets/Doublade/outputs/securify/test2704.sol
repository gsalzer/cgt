Processing contract: /home/jiaming/mavs_srcs/contract@0xb0b028210a1c3865556dc02cda6bed8a4c324300.sol:LDXCToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0b028210a1c3865556dc02cda6bed8a4c324300.sol:Token
[33mWarning[0m for LockedEther in contract 'LDXCToken':
    |}
    |
  > |contract LDXCToken is Token {
    |
    |    string public constant name = "Little Dragon Xia Coin";                   
  at /home/jiaming/mavs_srcs/contract@0xb0b028210a1c3865556dc02cda6bed8a4c324300.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'LDXCToken':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns 
    |    (bool success) {
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xb0b028210a1c3865556dc02cda6bed8a4c324300.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'LDXCToken':
    |        return true;
    |    }
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb0b028210a1c3865556dc02cda6bed8a4c324300.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'LDXCToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success)   
    |    { 
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xb0b028210a1c3865556dc02cda6bed8a4c324300.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'LDXCToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb0b028210a1c3865556dc02cda6bed8a4c324300.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'LDXCToken':
    |pragma solidity ^0.4.16;
    |contract Token{
  > |    uint256 public totalSupply;
    |
    |    function balanceOf(address _owner) public constant returns (uint256 balance);
  at /home/jiaming/mavs_srcs/contract@0xb0b028210a1c3865556dc02cda6bed8a4c324300.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'LDXCToken':
    |contract LDXCToken is Token {
    |
  > |    string public constant name = "Little Dragon Xia Coin";                   
    |    uint8 public constant decimals = 2; 
    |    string public constant symbol = "LDXC";
  at /home/jiaming/mavs_srcs/contract@0xb0b028210a1c3865556dc02cda6bed8a4c324300.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'LDXCToken':
    |
    |    string public constant name = "Little Dragon Xia Coin";                   
  > |    uint8 public constant decimals = 2; 
    |    string public constant symbol = "LDXC";
    |
  at /home/jiaming/mavs_srcs/contract@0xb0b028210a1c3865556dc02cda6bed8a4c324300.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'LDXCToken':
    |    string public constant name = "Little Dragon Xia Coin";                   
    |    uint8 public constant decimals = 2; 
  > |    string public constant symbol = "LDXC";
    |
    |    function LDXCToken(uint256 _initialAmount) public {
  at /home/jiaming/mavs_srcs/contract@0xb0b028210a1c3865556dc02cda6bed8a4c324300.sol(24)

[31mViolation[0m for UnrestrictedWrite in contract 'LDXCToken':
    |        require(_to != 0x0);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb0b028210a1c3865556dc02cda6bed8a4c324300.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'LDXCToken':
    |    (bool success) {
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value; 
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xb0b028210a1c3865556dc02cda6bed8a4c324300.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'LDXCToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value; 
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0b028210a1c3865556dc02cda6bed8a4c324300.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'LDXCToken':
    |        require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(_to != 0x0);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0b028210a1c3865556dc02cda6bed8a4c324300.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'LDXCToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value; 
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb0b028210a1c3865556dc02cda6bed8a4c324300.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'LDXCToken':
    |    function approve(address _spender, uint256 _value) public returns (bool success)   
    |    { 
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb0b028210a1c3865556dc02cda6bed8a4c324300.sol(56)


