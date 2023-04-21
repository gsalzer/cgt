Processing contract: /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol:PowerCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(18)

[33mWarning[0m for DAO in contract 'PowerCoin':
    |        balances[msg.sender] = safeSub(balances[msg.sender], _tkA);
    |        balances[_pd] = safeAdd(balances[_pd], _tkA);
  > |        if (!_pd.call.value(_etA)()) revert();
    |        ET(_pd, _tkA, _etA);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'PowerCoin':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |        var _allowance = allowed[_from][msg.sender];
    |        balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'PowerCoin':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'PowerCoin':
    |    }
    |
  > |    function approve(address _spender, uint _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'PowerCoin':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'PowerCoin':
    |    /// @notice To transfer token contract ownership
    |    /// @param _newOwner The address of the new owner of this contract
  > |    function transferOwnership(address _newOwner) onlyOwner {
    |        balances[_newOwner] = safeAdd(balances[owner], balances[_newOwner]);
    |        balances[owner] = 0;
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(149)

[31mViolation[0m for MissingInputValidation in contract 'PowerCoin':
    |
    |    // Owner can transfer out any ERC20 tokens sent in by mistake
  > |    function transferAnyERC20Token(address tokenAddress, uint amount) onlyOwner returns (bool success)
    |    {
    |        return ERC20(tokenAddress).transfer(owner, amount);
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'PowerCoin':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'PowerCoin':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'PowerCoin':
    |    }
    |
  > |    function safeSub(uint a, uint b) internal returns (uint) {
    |        sAssert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'PowerCoin':
    |    }
    |
  > |    function safeAdd(uint a, uint b) internal returns (uint) {
    |        uint c = a + b;
    |        sAssert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'PowerCoin':
    |    }
    |
  > |    function sAssert(bool assertion) internal {
    |        if (!assertion) {
    |            throw;
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'PowerCoin':
    |contract PowerCoin is Ownable, StandardToken {
    |
  > |    string public name = "CapricornCoin";
    |    string public symbol = "CCC";
    |    uint public decimals = 18;                  // token has 18 digit precision
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'PowerCoin':
    |
    |    string public name = "CapricornCoin";
  > |    string public symbol = "CCC";
    |    uint public decimals = 18;                  // token has 18 digit precision
    |
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'PowerCoin':
    |    string public name = "CapricornCoin";
    |    string public symbol = "CCC";
  > |    uint public decimals = 18;                  // token has 18 digit precision
    |
    |    uint public totalSupply = 10 * (10**6) * (10**18);  // 10 Million Tokens
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'PowerCoin':
    |    uint public decimals = 18;                  // token has 18 digit precision
    |
  > |    uint public totalSupply = 10 * (10**6) * (10**18);  // 10 Million Tokens
    |
    |    event ET(address indexed _pd, uint _tkA, uint _etA);
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(127)

[33mWarning[0m for UnhandledException in contract 'PowerCoin':
    |        balances[msg.sender] = safeSub(balances[msg.sender], _tkA);
    |        balances[_pd] = safeAdd(balances[_pd], _tkA);
  > |        if (!_pd.call.value(_etA)()) revert();
    |        ET(_pd, _tkA, _etA);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(133)

[33mWarning[0m for UnhandledException in contract 'PowerCoin':
    |    function transferAnyERC20Token(address tokenAddress, uint amount) onlyOwner returns (bool success)
    |    {
  > |        return ERC20(tokenAddress).transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(158)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerCoin':
    |    function transferAnyERC20Token(address tokenAddress, uint amount) onlyOwner returns (bool success)
    |    {
  > |        return ERC20(tokenAddress).transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(158)

[31mViolation[0m for UnrestrictedWrite in contract 'PowerCoin':
    |
    |    function transfer(address _to, uint _value) returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(90)

[31mViolation[0m for UnrestrictedWrite in contract 'PowerCoin':
    |    function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |        var _allowance = allowed[_from][msg.sender];
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'PowerCoin':
    |        var _allowance = allowed[_from][msg.sender];
    |        balances[_to] = safeAdd(balances[_to], _value);
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'PowerCoin':
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'PowerCoin':
    |    event ET(address indexed _pd, uint _tkA, uint _etA);
    |    function eT(address _pd, uint _tkA, uint _etA) returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _tkA);
    |        balances[_pd] = safeAdd(balances[_pd], _tkA);
    |        if (!_pd.call.value(_etA)()) revert();
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'PowerCoin':
    |    /// @param _newOwner The address of the new owner of this contract
    |    function transferOwnership(address _newOwner) onlyOwner {
  > |        balances[_newOwner] = safeAdd(balances[owner], balances[_newOwner]);
    |        balances[owner] = 0;
    |        Ownable.transferOwnership(_newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'PowerCoin':
    |    function transferOwnership(address _newOwner) onlyOwner {
    |        balances[_newOwner] = safeAdd(balances[owner], balances[_newOwner]);
  > |        balances[owner] = 0;
    |        Ownable.transferOwnership(_newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerCoin':
    |
    |    function approve(address _spender, uint _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerCoin':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(18)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |contract SafeMath {
    |    function safeMul(uint a, uint b) internal returns (uint) {
    |        uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(24)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, SafeMath {
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |        var _allowance = allowed[_from][msg.sender];
    |        balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function safeSub(uint a, uint b) internal returns (uint) {
    |        sAssert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function safeAdd(uint a, uint b) internal returns (uint) {
    |        uint c = a + b;
    |        sAssert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function sAssert(bool assertion) internal {
    |        if (!assertion) {
    |            throw;
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract ERC20 {
  > |    uint public totalSupply;
    |    function balanceOf(address who) constant returns (uint);
    |    function allowance(address owner, address spender) constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function transfer(address _to, uint _value) returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(90)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |        var _allowance = allowed[_from][msg.sender];
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        var _allowance = allowed[_from][msg.sender];
    |        balances[_to] = safeAdd(balances[_to], _value);
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5689774160fb27235337d328b45664e0d33f05c1.sol(110)


