Processing contract: /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol:USDCCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(56)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(3)

[31mViolation[0m for LockedEther in contract 'USDCCoin':
    |}
    |
  > |contract USDCCoin is StandardToken { // CHANGE THIS. Update the contract name.
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'USDCCoin':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'USDCCoin':
    |
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'USDCCoin':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'USDCCoin':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'USDCCoin':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'USDCCoin':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'USDCCoin':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   // Token Name
    |    uint8 public decimals;                // How many decimals to show. To be standard complicant keep it 18
    |    string public symbol;                 // An identifier: eg SBX, XPR etc..
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'USDCCoin':
    |    */
    |    string public name;                   // Token Name
  > |    uint8 public decimals;                // How many decimals to show. To be standard complicant keep it 18
    |    string public symbol;                 // An identifier: eg SBX, XPR etc..
    |    string public version = 'V1.0'; 
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'USDCCoin':
    |    string public name;                   // Token Name
    |    uint8 public decimals;                // How many decimals to show. To be standard complicant keep it 18
  > |    string public symbol;                 // An identifier: eg SBX, XPR etc..
    |    string public version = 'V1.0'; 
    |    uint256 public unitsOneEthCanBuy;     // How many units of your coin can be bought by 1 ETH?
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'USDCCoin':
    |    uint8 public decimals;                // How many decimals to show. To be standard complicant keep it 18
    |    string public symbol;                 // An identifier: eg SBX, XPR etc..
  > |    string public version = 'V1.0'; 
    |    uint256 public unitsOneEthCanBuy;     // How many units of your coin can be bought by 1 ETH?
    |    uint256 public totalEthInWei;         // WEI is the smallest unit of ETH (the equivalent of cent in USD or satoshi in BTC). We'll store the total ETH raised via our ICO here.  
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'USDCCoin':
    |    string public symbol;                 // An identifier: eg SBX, XPR etc..
    |    string public version = 'V1.0'; 
  > |    uint256 public unitsOneEthCanBuy;     // How many units of your coin can be bought by 1 ETH?
    |    uint256 public totalEthInWei;         // WEI is the smallest unit of ETH (the equivalent of cent in USD or satoshi in BTC). We'll store the total ETH raised via our ICO here.  
    |    address public fundsWallet;           // Where should the raised ETH go?
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'USDCCoin':
    |    string public version = 'V1.0'; 
    |    uint256 public unitsOneEthCanBuy;     // How many units of your coin can be bought by 1 ETH?
  > |    uint256 public totalEthInWei;         // WEI is the smallest unit of ETH (the equivalent of cent in USD or satoshi in BTC). We'll store the total ETH raised via our ICO here.  
    |    address public fundsWallet;           // Where should the raised ETH go?
    |
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'USDCCoin':
    |    uint256 public unitsOneEthCanBuy;     // How many units of your coin can be bought by 1 ETH?
    |    uint256 public totalEthInWei;         // WEI is the smallest unit of ETH (the equivalent of cent in USD or satoshi in BTC). We'll store the total ETH raised via our ICO here.  
  > |    address public fundsWallet;           // Where should the raised ETH go?
    |
    |    // This is a constructor function 
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'USDCCoin':
    |	
    |	
  > |	function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'USDCCoin':
    |    
    |    // @dev if someone wants to transfer tokens to other account.
  > |    function transferTokens(address _to, uint256 _tokens) lockTokenTransferBeforeIco public {
    |		// _token in wei
    |        _transfer(msg.sender, _to, _tokens);
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(137)

[33mWarning[0m for UnhandledException in contract 'USDCCoin':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { revert(); }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(115)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'USDCCoin':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { revert(); }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'USDCCoin':
    |        require(balances[_to] + _value > balances[_to]);
    |        // Subtract from the sender
  > |        balances[_from] -= _value;
    |        // Add the same to the recipient
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'USDCCoin':
    |        balances[_from] -= _value;
    |        // Add the same to the recipient
  > |        balances[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'USDCCoin':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'USDCCoin':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'USDCCoin':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'USDCCoin':
    |        require(balances[_to] + _value > balances[_to]);
    |        // Subtract from the sender
  > |        balances[_from] -= _value;
    |        // Add the same to the recipient
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'USDCCoin':
    |        balances[_from] -= _value;
    |        // Add the same to the recipient
  > |        balances[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf0ae2dfaf956951ddec02b7709ceb5ef6c5d9d5c.sol(130)


