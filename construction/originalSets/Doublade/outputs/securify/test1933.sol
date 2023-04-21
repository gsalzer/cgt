Processing contract: /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol:ATOToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ATOToken':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract ATOToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'ATOToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'ATOToken':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'ATOToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(143)

[31mViolation[0m for MissingInputValidation in contract 'ATOToken':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(159)

[31mViolation[0m for MissingInputValidation in contract 'ATOToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'ATOToken':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(188)

[31mViolation[0m for MissingInputValidation in contract 'ATOToken':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(198)

[31mViolation[0m for MissingInputValidation in contract 'ATOToken':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'ATOToken':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'ATOToken':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'ATOToken':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'ATOToken':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'ATOToken':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'ATOToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'ATOToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'ATOToken':
    |// ----------------------------------------------------------------------------
    |contract ATOToken is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'ATOToken':
    |contract ATOToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'ATOToken':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'ATOToken':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'ATOToken':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(125)

[33mWarning[0m for UnhandledException in contract 'ATOToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(201)

[33mWarning[0m for UnhandledException in contract 'ATOToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(218)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ATOToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(201)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ATOToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'ATOToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'ATOToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'ATOToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'ATOToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'ATOToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'ATOToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'ATOToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'ATOToken':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(90)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(90)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x7c0924eea284ef4b7a1b0fefdd0d808fc717377e.sol(31)


