Processing contract: /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol:CryptoGO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'CryptoGO':
    |
    |       
  > |        fundsWallet.transfer(msg.value);                               
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(95)

[31mViolation[0m for TODReceiver in contract 'CryptoGO':
    |
    |       
  > |        fundsWallet.transfer(msg.value);                               
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(95)

[33mWarning[0m for UnhandledException in contract 'CryptoGO':
    |
    |       
  > |        fundsWallet.transfer(msg.value);                               
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(95)

[33mWarning[0m for UnhandledException in contract 'CryptoGO':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(102)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoGO':
    |        Approval(msg.sender, _spender, _value);
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoGO':
    |}
    |
  > |contract CryptoGO is StandardToken { // CHANGE THIS. Update the contract name.
    |
    |    string public name;                   // Token Name
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoGO':
    |    function CryptoGOToken() {
    |        balances[msg.sender] = 1000000000000000000000000000;               // Give the creator all initial tokens. This is set to 1000 for example. If you want your initial tokens to be X and your decimal is 5, set this value to X * 100000. (CHANGE THIS)
  > |        totalSupply = 1000000000000000000000000000;                        // Update total supply (1000 for example) (CHANGE THIS)
    |        name = "CryptoGO";                                   // Set the name for display purposes (CHANGE THIS)
    |        decimals = 18;                                               // Amount of decimals for display purposes (CHANGE THIS)
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoGO':
    |        totalSupply = 1000000000000000000000000000;                        // Update total supply (1000 for example) (CHANGE THIS)
    |        name = "CryptoGO";                                   // Set the name for display purposes (CHANGE THIS)
  > |        decimals = 18;                                               // Amount of decimals for display purposes (CHANGE THIS)
    |        symbol = "CGO";                                             // Set the symbol for display purposes (CHANGE THIS)
    |        unitsOneEthCanBuy = 10000;                                      // Set the price of your token for the ICO (CHANGE THIS)
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoGO':
    |        decimals = 18;                                               // Amount of decimals for display purposes (CHANGE THIS)
    |        symbol = "CGO";                                             // Set the symbol for display purposes (CHANGE THIS)
  > |        unitsOneEthCanBuy = 10000;                                      // Set the price of your token for the ICO (CHANGE THIS)
    |        fundsWallet = msg.sender;                                    // The owner of the contract gets ETH
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoGO':
    |        symbol = "CGO";                                             // Set the symbol for display purposes (CHANGE THIS)
    |        unitsOneEthCanBuy = 10000;                                      // Set the price of your token for the ICO (CHANGE THIS)
  > |        fundsWallet = msg.sender;                                    // The owner of the contract gets ETH
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoGO':
    |
    |    function() payable{
  > |        totalEthInWei = totalEthInWei + msg.value;
    |        uint256 amount = msg.value * unitsOneEthCanBuy;
    |        if (balances[fundsWallet] < amount) {
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoGO':
    |        }
    |
  > |        balances[fundsWallet] = balances[fundsWallet] - amount;
    |        balances[msg.sender] = balances[msg.sender] + amount;
    |
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoGO':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoGO':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoGO':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoGO':
    |
    |    function CryptoGOToken() {
  > |        balances[msg.sender] = 1000000000000000000000000000;               // Give the creator all initial tokens. This is set to 1000 for example. If you want your initial tokens to be X and your decimal is 5, set this value to X * 100000. (CHANGE THIS)
    |        totalSupply = 1000000000000000000000000000;                        // Update total supply (1000 for example) (CHANGE THIS)
    |        name = "CryptoGO";                                   // Set the name for display purposes (CHANGE THIS)
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoGO':
    |
    |        balances[fundsWallet] = balances[fundsWallet] - amount;
  > |        balances[msg.sender] = balances[msg.sender] + amount;
    |
    |        Transfer(fundsWallet, msg.sender, amount); 
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoGO':
    |
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(99)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(48)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |
    |    function totalSupply() constant returns (uint256 supply) {}
  at /home/jiaming/mavs_srcs/contract@0x7cfa0624ce23b1b33f56ccc16f054bb4036ec553.sol(3)


