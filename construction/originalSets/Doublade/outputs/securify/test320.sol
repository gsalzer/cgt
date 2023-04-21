Processing contract: /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol:AROREX
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AROREX':
    |}
    |
  > |contract AROREX is StandardToken { 
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'AROREX':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |    
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'AROREX':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |     
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'AROREX':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'AROREX':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'AROREX':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'AROREX':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'AROREX':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'AROREX':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                  
    |    uint8 public decimals;                
    |    string public symbol;                 
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'AROREX':
    |    */
    |    string public name;                  
  > |    uint8 public decimals;                
    |    string public symbol;                 
    |    string public version = 'ARXO1.0'; 
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'AROREX':
    |    string public name;                  
    |    uint8 public decimals;                
  > |    string public symbol;                 
    |    string public version = 'ARXO1.0'; 
    |    uint256 public unitsOneEthCanBuy;     
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'AROREX':
    |    uint8 public decimals;                
    |    string public symbol;                 
  > |    string public version = 'ARXO1.0'; 
    |    uint256 public unitsOneEthCanBuy;     
    |    uint256 public totalEthInWei;         
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'AROREX':
    |    string public symbol;                 
    |    string public version = 'ARXO1.0'; 
  > |    uint256 public unitsOneEthCanBuy;     
    |    uint256 public totalEthInWei;         
    |    address public fundsWallet;           
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'AROREX':
    |    string public version = 'ARXO1.0'; 
    |    uint256 public unitsOneEthCanBuy;     
  > |    uint256 public totalEthInWei;         
    |    address public fundsWallet;           
    |
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'AROREX':
    |    uint256 public unitsOneEthCanBuy;     
    |    uint256 public totalEthInWei;         
  > |    address public fundsWallet;           
    |
    |   
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(99)

[33mWarning[0m for UnhandledException in contract 'AROREX':
    |
    |       
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(131)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AROREX':
    |
    |       
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'AROREX':
    |    
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'AROREX':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'AROREX':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'AROREX':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(127)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |    
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |     
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(69)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.25;
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x156969d609b7811ecae26b656218ef03734ad946.sol(3)


