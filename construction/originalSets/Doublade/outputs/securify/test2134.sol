Processing contract: /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol:RedTicket
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'RedTicket':
    |
    |
  > |contract RedTicket is owned {
    |    string public standard = 'RedTicket 1.0';
    |    string public constant name = "RedTicket";
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'RedTicket':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        owner = newOwner;
    |        if (newOwner != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'RedTicket':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    mapping (address => bool) public frozenAccount;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'RedTicket':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'RedTicket':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'RedTicket':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'RedTicket':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'RedTicket':
    |    }
    |
  > |    function freezeAccount(address target, bool freeze) onlyOwner {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'RedTicket':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) returns (bool success) {
    |        if (balances[_from] < _value) return false;
    |        if (_value > allowed[_from][msg.sender]) return false;
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(124)

[31mViolation[0m for MissingInputValidation in contract 'RedTicket':
    |    }
    |
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner {
    |        balances[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'RedTicket':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() {
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'RedTicket':
    |
    |contract RedTicket is owned {
  > |    string public standard = 'RedTicket 1.0';
    |    string public constant name = "RedTicket";
    |    string public constant symbol = "RED";
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'RedTicket':
    |contract RedTicket is owned {
    |    string public standard = 'RedTicket 1.0';
  > |    string public constant name = "RedTicket";
    |    string public constant symbol = "RED";
    |    uint8 public constant decimals = 18; 
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'RedTicket':
    |    string public standard = 'RedTicket 1.0';
    |    string public constant name = "RedTicket";
  > |    string public constant symbol = "RED";
    |    uint8 public constant decimals = 18; 
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'RedTicket':
    |    string public constant name = "RedTicket";
    |    string public constant symbol = "RED";
  > |    uint8 public constant decimals = 18; 
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'RedTicket':
    |    string public constant symbol = "RED";
    |    uint8 public constant decimals = 18; 
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'RedTicket':
    |    }
    |
  > |    function burn(uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] < _value) return false; 
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(116)

[33mWarning[0m for UnhandledException in contract 'RedTicket':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(98)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RedTicket':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'RedTicket':
    |            && balances[_to] + _value > balances[_to]) {
    |                
  > |                balances[msg.sender] -= _value;
    |                balances[_to] += _value;
    |                Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'RedTicket':
    |
    |                balances[_from] -= _value;
  > |                allowed[_from][msg.sender] -= _value;
    |                balances[_to] += _value;
    |                Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'RedTicket':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'RedTicket':
    |    function burn(uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] < _value) return false; 
  > |        balances[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'RedTicket':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |        if (newOwner != address(0)) {
    |          owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'RedTicket':
    |        owner = newOwner;
    |        if (newOwner != address(0)) {
  > |          owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'RedTicket':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'RedTicket':
    |
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner {
  > |        balances[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, owner, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'RedTicket':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner {
    |        balances[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, owner, mintedAmount);
    |        Transfer(owner, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(135)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.2;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        owner = newOwner;
    |        if (newOwner != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() {
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |        if (newOwner != address(0)) {
    |          owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |        owner = newOwner;
    |        if (newOwner != address(0)) {
  > |          owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8b6899e4b32729cba03f8f9c8e46628cadd03158.sol(18)


