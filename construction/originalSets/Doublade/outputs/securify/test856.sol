Processing contract: /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol:UnlimitedAllowanceToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol:ZRXToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint _value) returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint _value) returns (bool) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value >= balances[_to]) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint _value) returns (bool) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint) balances;
    |    mapping (address => mapping (address => uint)) allowed;
  > |    uint public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        if (balances[msg.sender] >= _value && balances[_to] + _value >= balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint _value) returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(106)

[33mWarning[0m for LockedEther in contract 'Token':
    |
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(41)

[33mWarning[0m for LockedEther in contract 'UnlimitedAllowanceToken':
    |
    |
  > |contract UnlimitedAllowanceToken is StandardToken {
    |
    |    uint constant MAX_UINT = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'UnlimitedAllowanceToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'UnlimitedAllowanceToken':
    |    }
    |
  > |    function approve(address _spender, uint _value) returns (bool) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'UnlimitedAllowanceToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'UnlimitedAllowanceToken':
    |    /// @param _value Amount to transfer.
    |    /// @return Success of transfer.
  > |    function transferFrom(address _from, address _to, uint _value)
    |        public
    |        returns (bool)
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'UnlimitedAllowanceToken':
    |    mapping (address => uint) balances;
    |    mapping (address => mapping (address => uint)) allowed;
  > |    uint public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'UnlimitedAllowanceToken':
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        if (balances[msg.sender] >= _value && balances[_to] + _value >= balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'UnlimitedAllowanceToken':
    |
    |    function approve(address _spender, uint _value) returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'UnlimitedAllowanceToken':
    |            balances[_from] -= _value;
    |            if (allowance < MAX_UINT) {
  > |                allowed[_from][msg.sender] -= _value;
    |            }
    |            Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(142)

[33mWarning[0m for LockedEther in contract 'ZRXToken':
    |
    |
  > |contract ZRXToken is UnlimitedAllowanceToken {
    |
    |    uint8 constant public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(153)

[31mViolation[0m for MissingInputValidation in contract 'ZRXToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'ZRXToken':
    |    }
    |
  > |    function approve(address _spender, uint _value) returns (bool) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'ZRXToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'ZRXToken':
    |    /// @param _value Amount to transfer.
    |    /// @return Success of transfer.
  > |    function transferFrom(address _from, address _to, uint _value)
    |        public
    |        returns (bool)
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'ZRXToken':
    |contract ZRXToken is UnlimitedAllowanceToken {
    |
  > |    uint8 constant public decimals = 18;
    |    uint public totalSupply = 10**27; // 1 billion tokens, 18 decimal places
    |    string constant public name = "0x Protocol Token";
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'ZRXToken':
    |
    |    uint8 constant public decimals = 18;
  > |    uint public totalSupply = 10**27; // 1 billion tokens, 18 decimal places
    |    string constant public name = "0x Protocol Token";
    |    string constant public symbol = "ZRX";
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'ZRXToken':
    |    uint8 constant public decimals = 18;
    |    uint public totalSupply = 10**27; // 1 billion tokens, 18 decimal places
  > |    string constant public name = "0x Protocol Token";
    |    string constant public symbol = "ZRX";
    |
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(157)

[33mWarning[0m for MissingInputValidation in contract 'ZRXToken':
    |    uint public totalSupply = 10**27; // 1 billion tokens, 18 decimal places
    |    string constant public name = "0x Protocol Token";
  > |    string constant public symbol = "ZRX";
    |
    |    function ZRXToken() {
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'ZRXToken':
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        if (balances[msg.sender] >= _value && balances[_to] + _value >= balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'ZRXToken':
    |
    |    function approve(address _spender, uint _value) returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'ZRXToken':
    |            balances[_from] -= _value;
    |            if (allowance < MAX_UINT) {
  > |                allowed[_from][msg.sender] -= _value;
    |            }
    |            Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x36d0ef3b466de6b5befff1226fd264fe7807bafe.sol(142)


