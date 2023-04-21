Processing contract: /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol:DoYourOwnResearch
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DoYourOwnResearch':
    |}
    |
  > |contract DoYourOwnResearch is StandardToken { 
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'DoYourOwnResearch':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'DoYourOwnResearch':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'DoYourOwnResearch':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'DoYourOwnResearch':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'DoYourOwnResearch':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'DoYourOwnResearch':
    |
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'DoYourOwnResearch':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'DoYourOwnResearch':
    |
    |
  > |    string public name;                
    |    uint8 public decimals;               
    |    string public symbol;                
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'DoYourOwnResearch':
    |
    |    string public name;                
  > |    uint8 public decimals;               
    |    string public symbol;                
    |    string public version = 'H1.2333'; 
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'DoYourOwnResearch':
    |    string public name;                
    |    uint8 public decimals;               
  > |    string public symbol;                
    |    string public version = 'H1.2333'; 
    |    uint256 public unitsOneEthCanBuy;     
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'DoYourOwnResearch':
    |    uint8 public decimals;               
    |    string public symbol;                
  > |    string public version = 'H1.2333'; 
    |    uint256 public unitsOneEthCanBuy;     
    |    uint256 public totalEthInWei;        
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'DoYourOwnResearch':
    |    string public symbol;                
    |    string public version = 'H1.2333'; 
  > |    uint256 public unitsOneEthCanBuy;     
    |    uint256 public totalEthInWei;        
    |    address public fundsWallet;           
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'DoYourOwnResearch':
    |    string public version = 'H1.2333'; 
    |    uint256 public unitsOneEthCanBuy;     
  > |    uint256 public totalEthInWei;        
    |    address public fundsWallet;           
    | 
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'DoYourOwnResearch':
    |    uint256 public unitsOneEthCanBuy;     
    |    uint256 public totalEthInWei;        
  > |    address public fundsWallet;           
    | 
    |    function DoYourOwnResearch() {
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(73)

[33mWarning[0m for UnhandledException in contract 'DoYourOwnResearch':
    |
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DoYourOwnResearch':
    |
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'DoYourOwnResearch':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'DoYourOwnResearch':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'DoYourOwnResearch':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'DoYourOwnResearch':
    |
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(102)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(48)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe6ac911339b86a04ee08581bf853aaec216c37ad.sol(3)


