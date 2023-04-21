Processing contract: /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol:Coin4Cast
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Coin4Cast':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract Coin4Cast is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'Coin4Cast':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint256 balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(129)

[31mViolation[0m for MissingInputValidation in contract 'Coin4Cast':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint256 tokens) public returns (bool success) {
    |        require(tokens > 0); 
    |        allowed[msg.sender][spender] = tokens;
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(161)

[31mViolation[0m for MissingInputValidation in contract 'Coin4Cast':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint256 tokens) public returns (bool success) {
    |        if (to == 0x0) revert();                                // Prevent transfer to 0x0 address. Use burn() instead
    |		if (tokens <= 0) revert(); 
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(178)

[31mViolation[0m for MissingInputValidation in contract 'Coin4Cast':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint256 remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'Coin4Cast':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint256 tokens, bytes data) public returns (bool success) {
    |        require(tokens > 0);
    |        allowed[msg.sender][spender] = tokens;
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(206)

[31mViolation[0m for MissingInputValidation in contract 'Coin4Cast':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint256 tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(230)

[33mWarning[0m for MissingInputValidation in contract 'Coin4Cast':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Coin4Cast':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Coin4Cast':
    |        c = a - b;
    |    }
  > |    function safeMul(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Coin4Cast':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Coin4Cast':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    //address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Coin4Cast':
    |// ----------------------------------------------------------------------------
    |contract Coin4Cast is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'Coin4Cast':
    |contract Coin4Cast is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint256 public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'Coin4Cast':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint256 public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'Coin4Cast':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint256 public _totalSupply;
    |
    |    mapping(address => uint256) internal balances;
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Coin4Cast':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint256) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(121)

[33mWarning[0m for UnhandledException in contract 'Coin4Cast':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(210)

[33mWarning[0m for UnhandledException in contract 'Coin4Cast':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint256 tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(231)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Coin4Cast':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Coin4Cast':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint256 tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(231)

[31mViolation[0m for UnrestrictedWrite in contract 'Coin4Cast':
    |        if (balances[to] + tokens < balances[to]) revert();  // Check for overflows
    |        if (tokens > allowed[from][msg.sender]) revert();     // Check allowance
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'Coin4Cast':
    |        if (balances[msg.sender] < tokens) revert();           // Check if the sender has enough
    |        if (balances[to] + tokens < balances[to]) revert(); // Check for overflows
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'Coin4Cast':
    |    function approve(address spender, uint256 tokens) public returns (bool success) {
    |        require(tokens > 0); 
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'Coin4Cast':
    |        if (tokens > allowed[from][msg.sender]) revert();     // Check allowance
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'Coin4Cast':
    |    function approveAndCall(address spender, uint256 tokens, bytes data) public returns (bool success) {
    |        require(tokens > 0);
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(208)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    //address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    //address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(57)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xc230ce24b527ed4caf97310753330a2965f3a4bd.sol(19)


