Processing contract: /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol:MVICoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MVICoin':
    |}
    |
  > |contract MVICoin is StandardToken {
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'MVICoin':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'MVICoin':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'MVICoin':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'MVICoin':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'MVICoin':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'MVICoin':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'MVICoin':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'MVICoin':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   // Token Name
    |    uint8 public decimals;                // How many decimals to show. To be standard complicant keep it 18
    |    string public symbol;                 // An identifier: eg SBX, XPR etc..
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'MVICoin':
    |    */
    |    string public name;                   // Token Name
  > |    uint8 public decimals;                // How many decimals to show. To be standard complicant keep it 18
    |    string public symbol;                 // An identifier: eg SBX, XPR etc..
    |    string public version = 'H1.0'; 
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'MVICoin':
    |    string public name;                   // Token Name
    |    uint8 public decimals;                // How many decimals to show. To be standard complicant keep it 18
  > |    string public symbol;                 // An identifier: eg SBX, XPR etc..
    |    string public version = 'H1.0'; 
    |    uint256 public totalEthInWei;         // WEI is the smallest unit of ETH (the equivalent of cent in USD or satoshi in BTC). We'll store the total ETH raised via our ICO here.  
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'MVICoin':
    |    uint8 public decimals;                // How many decimals to show. To be standard complicant keep it 18
    |    string public symbol;                 // An identifier: eg SBX, XPR etc..
  > |    string public version = 'H1.0'; 
    |    uint256 public totalEthInWei;         // WEI is the smallest unit of ETH (the equivalent of cent in USD or satoshi in BTC). We'll store the total ETH raised via our ICO here.  
    |    address public fundsWallet;           // Where should the raised ETH go?
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'MVICoin':
    |    string public symbol;                 // An identifier: eg SBX, XPR etc..
    |    string public version = 'H1.0'; 
  > |    uint256 public totalEthInWei;         // WEI is the smallest unit of ETH (the equivalent of cent in USD or satoshi in BTC). We'll store the total ETH raised via our ICO here.  
    |    address public fundsWallet;           // Where should the raised ETH go?
    |
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'MVICoin':
    |    string public version = 'H1.0'; 
    |    uint256 public totalEthInWei;         // WEI is the smallest unit of ETH (the equivalent of cent in USD or satoshi in BTC). We'll store the total ETH raised via our ICO here.  
  > |    address public fundsWallet;           // Where should the raised ETH go?
    |
    |    // This is a constructor function 
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(102)

[33mWarning[0m for UnhandledException in contract 'MVICoin':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { revert(); }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(123)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MVICoin':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { revert(); }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'MVICoin':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'MVICoin':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'MVICoin':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'MVICoin':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(117)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(73)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0xd03c72f57d3659478e0a20b85264fe0d4d12cd4c.sol(3)


