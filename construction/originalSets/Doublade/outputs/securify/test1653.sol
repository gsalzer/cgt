Processing contract: /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol:BritainGlobalCurrencyToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol:Token
[33mWarning[0m for LockedEther in contract 'BritainGlobalCurrencyToken':
    |}
    |
  > |contract BritainGlobalCurrencyToken is Token {
    |
    |	string public name;                   
  at /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'BritainGlobalCurrencyToken':
    |    }
    |
  > |	function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'BritainGlobalCurrencyToken':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && balances[_to] + _value > balances[_to]);
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'BritainGlobalCurrencyToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'BritainGlobalCurrencyToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'BritainGlobalCurrencyToken':
    |contract Token{
  > |    uint256 public totalSupply;
    |	mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'BritainGlobalCurrencyToken':
    |contract BritainGlobalCurrencyToken is Token {
    |
  > |	string public name;                   
    |    uint8 public decimals;      
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'BritainGlobalCurrencyToken':
    |
    |	string public name;                   
  > |    uint8 public decimals;      
    |    string public symbol;
    |    string public version = 'H0.1';
  at /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'BritainGlobalCurrencyToken':
    |	string public name;                   
    |    uint8 public decimals;      
  > |    string public symbol;
    |    string public version = 'H0.1';
    |
  at /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'BritainGlobalCurrencyToken':
    |    uint8 public decimals;      
    |    string public symbol;
  > |    string public version = 'H0.1';
    |
    |    function BritainGlobalCurrencyToken(uint256 _initialAmount, string _tokenName, uint8 _decimalUnits, string _tokenSymbol) {
  at /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol(26)

[31mViolation[0m for UnrestrictedWrite in contract 'BritainGlobalCurrencyToken':
    |        require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'BritainGlobalCurrencyToken':
    |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && balances[_to] + _value > balances[_to]);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'BritainGlobalCurrencyToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && balances[_to] + _value > balances[_to]);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'BritainGlobalCurrencyToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'BritainGlobalCurrencyToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'BritainGlobalCurrencyToken':
    |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6915c63e912871bfb74fbf15d287e0184ec11234.sol(60)


