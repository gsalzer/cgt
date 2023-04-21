Processing contract: /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol:GoldRex
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'GoldRex':
    |// ERC20 Token
    |// ----------------------------------------------------------------------------
  > |contract GoldRex is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'GoldRex':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'GoldRex':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'GoldRex':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(143)

[31mViolation[0m for MissingInputValidation in contract 'GoldRex':
    |    // from the token owner's account
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(155)

[31mViolation[0m for MissingInputValidation in contract 'GoldRex':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(171)

[31mViolation[0m for MissingInputValidation in contract 'GoldRex':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(184)

[31mViolation[0m for MissingInputValidation in contract 'GoldRex':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(194)

[31mViolation[0m for MissingInputValidation in contract 'GoldRex':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(213)

[33mWarning[0m for MissingInputValidation in contract 'GoldRex':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'GoldRex':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'GoldRex':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'GoldRex':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'GoldRex':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'GoldRex':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'GoldRex':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'GoldRex':
    |// ----------------------------------------------------------------------------
    |contract GoldRex is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'GoldRex':
    |contract GoldRex is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'GoldRex':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'GoldRex':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'GoldRex':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(125)

[33mWarning[0m for UnhandledException in contract 'GoldRex':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(197)

[33mWarning[0m for UnhandledException in contract 'GoldRex':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(214)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldRex':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(197)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldRex':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(214)

[31mViolation[0m for UnrestrictedWrite in contract 'GoldRex':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldRex':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldRex':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldRex':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldRex':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldRex':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldRex':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldRex':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(91)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(91)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x67e227ecbd83a2dca065025eab5a90433a27c12b.sol(33)


