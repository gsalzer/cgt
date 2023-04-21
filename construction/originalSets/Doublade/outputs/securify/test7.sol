Processing contract: /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol:Rafatar
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Rafatar':
    |}
    |
  > |contract Rafatar is StandardToken { 
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'Rafatar':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'Rafatar':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |       
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'Rafatar':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'Rafatar':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'Rafatar':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'Rafatar':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'Rafatar':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Rafatar':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   // Token Name
    |    uint8 public decimals;                // How many decimals to show. To be standard complicant keep it 18
    |    string public symbol;                 // An identifier: eg SBX, XPR etc..
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Rafatar':
    |    */
    |    string public name;                   // Token Name
  > |    uint8 public decimals;                // How many decimals to show. To be standard complicant keep it 18
    |    string public symbol;                 // An identifier: eg SBX, XPR etc..
    |    string public version = 'H1.0';
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Rafatar':
    |    string public name;                   // Token Name
    |    uint8 public decimals;                // How many decimals to show. To be standard complicant keep it 18
  > |    string public symbol;                 // An identifier: eg SBX, XPR etc..
    |    string public version = 'H1.0';
    |    uint256 public unitsOneEthCanBuy;     // How many units of your coin can be bought by 1 ETH?
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Rafatar':
    |    uint8 public decimals;                // How many decimals to show. To be standard complicant keep it 18
    |    string public symbol;                 // An identifier: eg SBX, XPR etc..
  > |    string public version = 'H1.0';
    |    uint256 public unitsOneEthCanBuy;     // How many units of your coin can be bought by 1 ETH?
    |    uint256 public totalEthInWei;         // WEI is the smallest unit of ETH (the equivalent of cent in USD or satoshi in BTC). We'll store the total ETH raised via our ICO here.
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Rafatar':
    |    string public symbol;                 // An identifier: eg SBX, XPR etc..
    |    string public version = 'H1.0';
  > |    uint256 public unitsOneEthCanBuy;     // How many units of your coin can be bought by 1 ETH?
    |    uint256 public totalEthInWei;         // WEI is the smallest unit of ETH (the equivalent of cent in USD or satoshi in BTC). We'll store the total ETH raised via our ICO here.
    |    address public fundsWallet;           // Where should the raised ETH go?
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Rafatar':
    |    string public version = 'H1.0';
    |    uint256 public unitsOneEthCanBuy;     // How many units of your coin can be bought by 1 ETH?
  > |    uint256 public totalEthInWei;         // WEI is the smallest unit of ETH (the equivalent of cent in USD or satoshi in BTC). We'll store the total ETH raised via our ICO here.
    |    address public fundsWallet;           // Where should the raised ETH go?
    |
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'Rafatar':
    |    uint256 public unitsOneEthCanBuy;     // How many units of your coin can be bought by 1 ETH?
    |    uint256 public totalEthInWei;         // WEI is the smallest unit of ETH (the equivalent of cent in USD or satoshi in BTC). We'll store the total ETH raised via our ICO here.
  > |    address public fundsWallet;           // Where should the raised ETH go?
    |
    |    function Rafatar() {
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(80)

[33mWarning[0m for UnhandledException in contract 'Rafatar':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(110)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Rafatar':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Rafatar':
    |        
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'Rafatar':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Rafatar':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Rafatar':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(107)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |       
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(50)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.23;
    |
  > |contract Token {
    |
    |    function totalSupply() constant returns (uint256 supply) {}
  at /home/jiaming/mavs_srcs/contract@0x0061fe2189c995e585d3214e2302a2c600739972.sol(3)


