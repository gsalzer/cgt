Processing contract: /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol:StarToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol:Token
[33mWarning[0m for LockedEther in contract 'Owned':
    |pragma solidity ^0.4.16;
    |
  > |contract Owned {
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) onlyOwner {
    |        owner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |        owner = _newOwner;
    |    }
  > |    function transferIcoship(address _newIco) onlyOwner {
    |        ico = _newIco;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    
  > |    address public owner;
    |    address public ico;
    |
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    
    |    address public owner;
  > |    address public ico;
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(7)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) onlyOwner {
  > |        owner = _newOwner;
    |    }
    |    function transferIcoship(address _newIco) onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    }
    |    function transferIcoship(address _newIco) onlyOwner {
  > |        ico = _newIco;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(30)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    bool public locked;
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => mapping (address => uint256)) allowed;
    |    
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |
    |        require(!locked);
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |
    |        require(!locked);
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |  
    |        require(!locked);
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |contract Token {
    |    
  > |    uint256 public totalSupply;
    |
    |    function balanceOf(address _owner) constant returns (uint256 balance);
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    bool public locked;
    |
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(56)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |       
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_value <= allowed[_from][msg.sender]);    
    |
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_to] + _value >= balances[_to]);
    |       
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] -= _value;
    |
  > |        allowed[_from][msg.sender] -= _value;
    |
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(!locked);
    |
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(107)

[33mWarning[0m for LockedEther in contract 'StarToken':
    |
    |
  > |contract StarToken is Owned, StandardToken {
    |
    |    string public standard = "Token 0.1";
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'StarToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) onlyOwner {
    |        owner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'StarToken':
    |        owner = _newOwner;
    |    }
  > |    function transferIcoship(address _newIco) onlyOwner {
    |        ico = _newIco;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'StarToken':
    |    mapping (address => mapping (address => uint256)) allowed;
    |    
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'StarToken':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |
    |        require(!locked);
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'StarToken':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |
    |        require(!locked);
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'StarToken':
    |
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |  
    |        require(!locked);
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'StarToken':
    |
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'StarToken':
    |    
    |
  > |    function issue(address _recipient, uint256 _value) onlyICO returns (bool success) {
    |
    |        require(_value >= 0);
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'StarToken':
    |
    |    
  > |    address public owner;
    |    address public ico;
    |
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'StarToken':
    |    
    |    address public owner;
  > |    address public ico;
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'StarToken':
    |contract Token {
    |    
  > |    uint256 public totalSupply;
    |
    |    function balanceOf(address _owner) constant returns (uint256 balance);
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'StarToken':
    |contract StandardToken is Token {
    |
  > |    bool public locked;
    |
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'StarToken':
    |contract StarToken is Owned, StandardToken {
    |
  > |    string public standard = "Token 0.1";
    |
    |    string public name = "StarLight";        
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'StarToken':
    |    string public standard = "Token 0.1";
    |
  > |    string public name = "StarLight";        
    |    
    |    string public symbol = "STAR";
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'StarToken':
    |    string public name = "StarLight";        
    |    
  > |    string public symbol = "STAR";
    |
    |    uint8 public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'StarToken':
    |    string public symbol = "STAR";
    |
  > |    uint8 public decimals = 8;
    |   
    |    function StarToken() {  
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'StarToken':
    |    }
    |   
  > |    function unlock() onlyOwner returns (bool success)  {
    |        locked = false;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'StarToken':
    |    }
    |    
  > |    function lock() onlyOwner returns (bool success)  {
    |        locked = true;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(142)

[31mViolation[0m for UnrestrictedWrite in contract 'StarToken':
    |       
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'StarToken':
    |        require(_value <= allowed[_from][msg.sender]);    
    |
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'StarToken':
    |
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StarToken':
    |        require(balances[_to] + _value >= balances[_to]);
    |       
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'StarToken':
    |        balances[_from] -= _value;
    |
  > |        allowed[_from][msg.sender] -= _value;
    |
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'StarToken':
    |        require(!locked);
    |
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'StarToken':
    |
    |    function transferOwnership(address _newOwner) onlyOwner {
  > |        owner = _newOwner;
    |    }
    |    function transferIcoship(address _newIco) onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'StarToken':
    |    }
    |    function transferIcoship(address _newIco) onlyOwner {
  > |        ico = _newIco;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'StarToken':
    |   
    |    function unlock() onlyOwner returns (bool success)  {
  > |        locked = false;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'StarToken':
    |    
    |    function lock() onlyOwner returns (bool success)  {
  > |        locked = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'StarToken':
    |        require(_value >= 0);
    |
  > |        balances[_recipient] += _value;
    |        totalSupply += _value;
    |
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'StarToken':
    |
    |        balances[_recipient] += _value;
  > |        totalSupply += _value;
    |
    |        Transfer(0, owner, _value);
  at /home/jiaming/mavs_srcs/contract@0x7b6054262d9ac537110a434ae75c880192faac25.sol(154)


