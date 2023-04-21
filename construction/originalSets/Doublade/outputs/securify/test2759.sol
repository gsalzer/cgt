Processing contract: /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol:SVCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SVCoin':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract SVCoin is ERC20Interface, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'SVCoin':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'SVCoin':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'SVCoin':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'SVCoin':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'SVCoin':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(144)

[31mViolation[0m for MissingInputValidation in contract 'SVCoin':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'SVCoin':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'SVCoin':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'SVCoin':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'SVCoin':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'SVCoin':
    |// ----------------------------------------------------------------------------
    |contract SVCoin is ERC20Interface, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'SVCoin':
    |contract SVCoin is ERC20Interface, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'SVCoin':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'SVCoin':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'SVCoin':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(82)

[33mWarning[0m for UnhandledException in contract 'SVCoin':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(157)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SVCoin':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(157)

[31mViolation[0m for UnrestrictedWrite in contract 'SVCoin':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'SVCoin':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'SVCoin':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'SVCoin':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'SVCoin':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(155)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xb4974ee079b2a1ae9dd86c8f06047eb3836a18e9.sol(19)


