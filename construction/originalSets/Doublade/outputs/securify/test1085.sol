Processing contract: /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol:SmiloToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SmiloToken':
    |}
    |
  > |contract SmiloToken is StandardToken {
    |
    |    function () public {
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'SmiloToken':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'SmiloToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'SmiloToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'SmiloToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'SmiloToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'SmiloToken':
    |    }
    |
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'SmiloToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'SmiloToken':
    |    }
    |
  > |    string public name;
    |    uint8 public decimals;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'SmiloToken':
    |
    |    string public name;
  > |    uint8 public decimals;
    |    string public symbol;
    |    string public version = 'H1.0';
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'SmiloToken':
    |    string public name;
    |    uint8 public decimals;
  > |    string public symbol;
    |    string public version = 'H1.0';
    |
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'SmiloToken':
    |    uint8 public decimals;
    |    string public symbol;
  > |    string public version = 'H1.0';
    |
    |    address private constant SMILO_COMMUNITY_WALLET = 0xaae742034cd06eb1a02c76603cc6264711dce5c3;
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'SmiloToken':
    |
    |    address private constant SMILO_COMMUNITY_WALLET = 0xaae742034cd06eb1a02c76603cc6264711dce5c3;
  > |    uint public constant SMILO_COMMUNITY_AMOUNT = 15040000;
    |
    |    address private constant SMILO_SALES_WALLET = 0x1caa94bb4122971176f009cf943780712cdf4062;
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'SmiloToken':
    |
    |    address private constant SMILO_SALES_WALLET = 0x1caa94bb4122971176f009cf943780712cdf4062;
  > |    uint public constant SMILO_SALES_AMOUNT = 84960000;
    |
    |    address private constant SMILO_FOUNDERS_WALLET = 0xe9d4ba9f3d69ae7a2b1c4be89eac6238bafb6344;
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'SmiloToken':
    |
    |    address private constant SMILO_FOUNDERS_WALLET = 0xe9d4ba9f3d69ae7a2b1c4be89eac6238bafb6344;
  > |    uint public constant SMILO_FOUNDERS_AMOUNT = 28000000;
    |
    |    address private constant SMILO_FOUNDATION_WALLET = 0x6ab95a0c50f78e0bddb576b75bb1fb89f834c42f;
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'SmiloToken':
    |
    |    address private constant SMILO_FOUNDATION_WALLET = 0x6ab95a0c50f78e0bddb576b75bb1fb89f834c42f;
  > |    uint public constant SMILO_FOUNDATION_AMOUNT = 72000000;
    |
    |    function SmiloToken(
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(74)

[33mWarning[0m for UnhandledException in contract 'SmiloToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(91)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmiloToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'SmiloToken':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'SmiloToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'SmiloToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'SmiloToken':
    |
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(89)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(39)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.20;
    |
  > |contract Token {
    |    function totalSupply() constant returns (uint256 supply) {}
    |    function balanceOf(address _owner) constant returns (uint256 balance) {}
  at /home/jiaming/mavs_srcs/contract@0x4421455e76c17ff066f2b9b440de065d160d59f0.sol(3)


