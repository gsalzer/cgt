Processing contract: /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol:Elemental
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol:ElementalToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Elemental':
    |}
    |
  > |contract Elemental is ElementalToken { // CHANGE THIS. Update the contract name.
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'Elemental':
    |contract ElementalToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'Elemental':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'Elemental':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'Elemental':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'Elemental':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'Elemental':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'Elemental':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'Elemental':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name = 'Elemental';                   // Token Name
    |    uint8 public decimals = 18;                // How many decimals to show. To be standard complicant keep it 18
    |    string public symbol = 'ELEM';                 // An identifier: eg SBX, XPR etc..
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'Elemental':
    |    */
    |    string public name = 'Elemental';                   // Token Name
  > |    uint8 public decimals = 18;                // How many decimals to show. To be standard complicant keep it 18
    |    string public symbol = 'ELEM';                 // An identifier: eg SBX, XPR etc..
    |    string public version = '1.0'; 
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Elemental':
    |    string public name = 'Elemental';                   // Token Name
    |    uint8 public decimals = 18;                // How many decimals to show. To be standard complicant keep it 18
  > |    string public symbol = 'ELEM';                 // An identifier: eg SBX, XPR etc..
    |    string public version = '1.0'; 
    |    uint256 public unitsOneEthCanBuy = 1600;     // How many units of your coin can be bought by 1 ETH?
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Elemental':
    |    uint8 public decimals = 18;                // How many decimals to show. To be standard complicant keep it 18
    |    string public symbol = 'ELEM';                 // An identifier: eg SBX, XPR etc..
  > |    string public version = '1.0'; 
    |    uint256 public unitsOneEthCanBuy = 1600;     // How many units of your coin can be bought by 1 ETH?
    |    uint256 public totalEthInWei;         // WEI is the smallest unit of ETH (the equivalent of cent in USD or satoshi in BTC). We'll store the total ETH raised via our ICO here.  
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Elemental':
    |    string public symbol = 'ELEM';                 // An identifier: eg SBX, XPR etc..
    |    string public version = '1.0'; 
  > |    uint256 public unitsOneEthCanBuy = 1600;     // How many units of your coin can be bought by 1 ETH?
    |    uint256 public totalEthInWei;         // WEI is the smallest unit of ETH (the equivalent of cent in USD or satoshi in BTC). We'll store the total ETH raised via our ICO here.  
    |    address public fundsWallet;           // Where should the raised ETH go?
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'Elemental':
    |    string public version = '1.0'; 
    |    uint256 public unitsOneEthCanBuy = 1600;     // How many units of your coin can be bought by 1 ETH?
  > |    uint256 public totalEthInWei;         // WEI is the smallest unit of ETH (the equivalent of cent in USD or satoshi in BTC). We'll store the total ETH raised via our ICO here.  
    |    address public fundsWallet;           // Where should the raised ETH go?
    |
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Elemental':
    |    uint256 public unitsOneEthCanBuy = 1600;     // How many units of your coin can be bought by 1 ETH?
    |    uint256 public totalEthInWei;         // WEI is the smallest unit of ETH (the equivalent of cent in USD or satoshi in BTC). We'll store the total ETH raised via our ICO here.  
  > |    address public fundsWallet;           // Where should the raised ETH go?
    |
    |    // This is a constructor function 
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(103)

[33mWarning[0m for UnhandledException in contract 'Elemental':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(140)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Elemental':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Elemental':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Elemental':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Elemental':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Elemental':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(134)

[33mWarning[0m for LockedEther in contract 'ElementalToken':
    |}
    |
  > |contract ElementalToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'ElementalToken':
    |contract ElementalToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'ElementalToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'ElementalToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'ElementalToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'ElementalToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'ElementalToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'ElementalToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'ElementalToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'ElementalToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(73)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x26fb012015e06c087bf88cd9cc2a967a0e944b44.sol(3)


