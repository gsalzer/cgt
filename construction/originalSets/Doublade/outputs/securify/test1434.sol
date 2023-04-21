Processing contract: /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol:EMBCToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol:RegularToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol:UnboundedRegularToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EMBCToken':
    |}
    |
  > |contract EMBCToken is UnboundedRegularToken {
    |
    |    uint public totalSupply = 100*10**26;
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(112)

[31mViolation[0m for MissingInputValidation in contract 'EMBCToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'EMBCToken':
    |    }
    |
  > |    function approve(address _spender, uint _value) returns (bool) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'EMBCToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'EMBCToken':
    |    /// @param _value Amount to transfer.
    |    /// @return Success of transfer.
  > |    function transferFrom(address _from, address _to, uint _value)
    |        public
    |        returns (bool)
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'EMBCToken':
    |contract EMBCToken is UnboundedRegularToken {
    |
  > |    uint public totalSupply = 100*10**26;
    |    uint8 constant public decimals = 18;
    |    string constant public name = "Exchange Merge BlockChain";
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'EMBCToken':
    |
    |    uint public totalSupply = 100*10**26;
  > |    uint8 constant public decimals = 18;
    |    string constant public name = "Exchange Merge BlockChain";
    |    string constant public symbol = "EMBC";
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'EMBCToken':
    |    uint public totalSupply = 100*10**26;
    |    uint8 constant public decimals = 18;
  > |    string constant public name = "Exchange Merge BlockChain";
    |    string constant public symbol = "EMBC";
    |
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'EMBCToken':
    |    uint8 constant public decimals = 18;
    |    string constant public name = "Exchange Merge BlockChain";
  > |    string constant public symbol = "EMBC";
    |
    |    function EMBCToken() {
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'EMBCToken':
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        if (balances[msg.sender] >= _value && balances[_to] + _value >= balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'EMBCToken':
    |
    |    function approve(address _spender, uint _value) returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'EMBCToken':
    |            balances[_from] -= _value;
    |            if (allowance < MAX_UINT) {
  > |                allowed[_from][msg.sender] -= _value;
    |            }
    |            Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(102)

[33mWarning[0m for LockedEther in contract 'RegularToken':
    |}
    |
  > |contract RegularToken is Token {
    |
    |    function transfer(address _to, uint _value) returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'RegularToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint _value) returns (bool) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value >= balances[_to]) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'RegularToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'RegularToken':
    |    }
    |
  > |    function approve(address _spender, uint _value) returns (bool) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'RegularToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'RegularToken':
    |    mapping (address => uint) balances;
    |    mapping (address => mapping (address => uint)) allowed;
  > |    uint public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'RegularToken':
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        if (balances[msg.sender] >= _value && balances[_to] + _value >= balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'RegularToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'RegularToken':
    |
    |    function approve(address _spender, uint _value) returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(67)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.19;
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(3)

[33mWarning[0m for LockedEther in contract 'UnboundedRegularToken':
    |}
    |
  > |contract UnboundedRegularToken is RegularToken {
    |
    |    uint constant MAX_UINT = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'UnboundedRegularToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'UnboundedRegularToken':
    |    }
    |
  > |    function approve(address _spender, uint _value) returns (bool) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'UnboundedRegularToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'UnboundedRegularToken':
    |    /// @param _value Amount to transfer.
    |    /// @return Success of transfer.
  > |    function transferFrom(address _from, address _to, uint _value)
    |        public
    |        returns (bool)
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'UnboundedRegularToken':
    |    mapping (address => uint) balances;
    |    mapping (address => mapping (address => uint)) allowed;
  > |    uint public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'UnboundedRegularToken':
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        if (balances[msg.sender] >= _value && balances[_to] + _value >= balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'UnboundedRegularToken':
    |
    |    function approve(address _spender, uint _value) returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'UnboundedRegularToken':
    |            balances[_from] -= _value;
    |            if (allowance < MAX_UINT) {
  > |                allowed[_from][msg.sender] -= _value;
    |            }
    |            Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b0ea5b1735046b2e10ee8feb404d2d5f1e1ad4b.sol(102)


