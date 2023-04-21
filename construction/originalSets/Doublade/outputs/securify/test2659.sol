Processing contract: /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol:Elemental
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol:ElementalToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Elemental':
    |}
    |
  > |contract Elemental is ElementalToken {
    |    string public name = 'Elemental';                  
    |    uint8 public decimals = 18;                
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'Elemental':
    |
    |contract ElementalToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'Elemental':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'Elemental':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'Elemental':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'Elemental':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'Elemental':
    |        fundsWallet.transfer(msg.value);                               
    |    }
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Elemental':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Elemental':
    |
    |contract Elemental is ElementalToken {
  > |    string public name = 'Elemental';                  
    |    uint8 public decimals = 18;                
    |    string public symbol = 'ELEM';                 
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Elemental':
    |contract Elemental is ElementalToken {
    |    string public name = 'Elemental';                  
  > |    uint8 public decimals = 18;                
    |    string public symbol = 'ELEM';                 
    |    string public version = '1.0'; 
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Elemental':
    |    string public name = 'Elemental';                  
    |    uint8 public decimals = 18;                
  > |    string public symbol = 'ELEM';                 
    |    string public version = '1.0'; 
    |    uint256 public unitsOneEthCanBuy = 1600;    
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Elemental':
    |    uint8 public decimals = 18;                
    |    string public symbol = 'ELEM';                 
  > |    string public version = '1.0'; 
    |    uint256 public unitsOneEthCanBuy = 1600;    
    |    uint256 public totalEthInWei;         
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Elemental':
    |    string public symbol = 'ELEM';                 
    |    string public version = '1.0'; 
  > |    uint256 public unitsOneEthCanBuy = 1600;    
    |    uint256 public totalEthInWei;         
    |    address public fundsWallet;          
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Elemental':
    |    string public version = '1.0'; 
    |    uint256 public unitsOneEthCanBuy = 1600;    
  > |    uint256 public totalEthInWei;         
    |    address public fundsWallet;          
    |    function Elemental() {
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Elemental':
    |    uint256 public unitsOneEthCanBuy = 1600;    
    |    uint256 public totalEthInWei;         
  > |    address public fundsWallet;          
    |    function Elemental() {
    |        balances[msg.sender] = 100000000000000000;              
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(62)

[33mWarning[0m for UnhandledException in contract 'Elemental':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(88)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Elemental':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Elemental':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(19)

[33mWarning[0m for UnrestrictedWrite in contract 'Elemental':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'Elemental':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Elemental':
    |    }
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(86)

[33mWarning[0m for LockedEther in contract 'ElementalToken':
    |}
    |
  > |contract ElementalToken is Token {
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'ElementalToken':
    |
    |contract ElementalToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'ElementalToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'ElementalToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'ElementalToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'ElementalToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'ElementalToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'ElementalToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(19)

[33mWarning[0m for UnrestrictedWrite in contract 'ElementalToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'ElementalToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(41)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |
    |    function totalSupply() constant returns (uint256 supply) {}
  at /home/jiaming/mavs_srcs/contract@0xada00d9468c54a17564e33058bdd9451f75462ad.sol(3)


