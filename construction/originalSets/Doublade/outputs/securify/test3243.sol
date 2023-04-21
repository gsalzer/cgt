Processing contract: /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol:VirginMToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.21;
    |
  > |contract SafeMath {
    |    function safeSub(uint a, uint b) pure internal returns (uint) {
    |        assert(b <= a);
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20, SafeMath {
    |    mapping (address => uint) balances;
    |    mapping (address => mapping (address => uint)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint _value) public returns (bool success) {
    |        var _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract SafeMath {
  > |    function safeSub(uint a, uint b) pure internal returns (uint) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function safeAdd(uint a, uint b) pure internal returns (uint) {
    |        uint c = a + b;
    |        assert(c >= a && c >= b);
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract ERC20 {
  > |    uint public totalSupply;
    |    function balanceOf(address who) public constant returns (uint);
    |    function allowance(address owner, address spender) public constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(18)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function transfer(address _to, uint _value) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint _value) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        var _allowance = allowed[_from][msg.sender];
    |
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        balances[_to] = safeAdd(balances[_to], _value);
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(55)

[33mWarning[0m for LockedEther in contract 'VirginMToken':
    |/// @author Mr Gui
    |
  > |contract VirginMToken is StandardToken 
    |{
    |    string public name = "VirginMToken";
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'VirginMToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint _value) public returns (bool success) {
    |        var _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'VirginMToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'VirginMToken':
    |    }
    |
  > |    function approve(address _spender, uint _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'VirginMToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'VirginMToken':
    |
    |contract SafeMath {
  > |    function safeSub(uint a, uint b) pure internal returns (uint) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'VirginMToken':
    |    }
    |
  > |    function safeAdd(uint a, uint b) pure internal returns (uint) {
    |        uint c = a + b;
    |        assert(c >= a && c >= b);
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'VirginMToken':
    |contract VirginMToken is StandardToken 
    |{
  > |    string public name = "VirginMToken";
    |    string public symbol = "VM";
    |    uint public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'VirginMToken':
    |{
    |    string public name = "VirginMToken";
  > |    string public symbol = "VM";
    |    uint public decimals = 18;
    |    uint public totalSupply = 100 * 1000 * 1000 ether;
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'VirginMToken':
    |    string public name = "VirginMToken";
    |    string public symbol = "VM";
  > |    uint public decimals = 18;
    |    uint public totalSupply = 100 * 1000 * 1000 ether;
    |
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'VirginMToken':
    |    string public symbol = "VM";
    |    uint public decimals = 18;
  > |    uint public totalSupply = 100 * 1000 * 1000 ether;
    |
    |    function VirginMToken() public 
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'VirginMToken':
    |
    |    function transfer(address _to, uint _value) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'VirginMToken':
    |    function transfer(address _to, uint _value) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'VirginMToken':
    |        var _allowance = allowed[_from][msg.sender];
    |
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'VirginMToken':
    |
    |        balances[_to] = safeAdd(balances[_to], _value);
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'VirginMToken':
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'VirginMToken':
    |
    |    function approve(address _spender, uint _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd4407912ba06e24df8fbaf792d0be75034a5be88.sol(55)


