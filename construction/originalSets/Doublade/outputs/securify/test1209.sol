Processing contract: /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol:Base
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol:ERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Base':
    |}
    |
  > |contract Base {
    |    modifier only(address allowed) {
    |        require(msg.sender == allowed);
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(29)

[33mWarning[0m for LockedEther in contract 'ERC20':
    |}
    |
  > |contract ERC20 is Owned {
    |
    |    event Transfer(address indexed _from, address indexed _to, uint _value);
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function transferOwnership(address _newOwner) only(owner) {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint _value) isStartedOnly returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function approve_fixed(address _spender, uint _currentValue, uint _value) isStartedOnly returns (bool success) {
    |        if(allowed[msg.sender][_spender] == _currentValue){
    |            allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function approve(address _spender, uint _value) isStartedOnly returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |contract Owned is Base {
    |
  > |    address public owner;
    |    address newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function acceptOwnership() only(newOwner) {
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |    mapping (address => mapping (address => uint)) allowed;
    |
  > |    uint public totalSupply;
    |    bool    public isStarted = false;
    |
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |
    |    uint public totalSupply;
  > |    bool    public isStarted = false;
    |
    |    modifier isStartedOnly() {
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function transfer(address _to, uint _value) isStartedOnly returns (bool success) {
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function approve_fixed(address _spender, uint _currentValue, uint _value) isStartedOnly returns (bool success) {
    |        if(allowed[msg.sender][_spender] == _currentValue){
  > |            allowed[msg.sender][_spender] = _value;
    |            Approval(msg.sender, _spender, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    function approve(address _spender, uint _value) isStartedOnly returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    function transferOwnership(address _newOwner) only(owner) {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function acceptOwnership() only(newOwner) {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(73)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned is Base {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) only(owner) {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned is Base {
    |
  > |    address public owner;
    |    address newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() only(newOwner) {
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) only(owner) {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function acceptOwnership() only(newOwner) {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(73)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.15;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(3)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token is ERC20 {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function transfer(address _to, uint _value) isStartedOnly returns (bool success) {
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function approve_fixed(address _spender, uint _currentValue, uint _value) isStartedOnly returns (bool success) {
    |        if(allowed[msg.sender][_spender] == _currentValue){
  > |            allowed[msg.sender][_spender] = _value;
    |            Approval(msg.sender, _spender, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function approve(address _spender, uint _value) isStartedOnly returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function transferOwnership(address _newOwner) only(owner) {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function acceptOwnership() only(newOwner) {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    isNotStartedOnly
    |    {
  > |        isStarted = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    only(owner)
    |    {
  > |        isStarted = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    returns(bool)
    |    {
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    {
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4ce6b8c58df45b2d3976737ffb98d942f82300b4.sol(194)


