Processing contract: /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol:JZCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'JZCoin':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract JZCoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'JZCoin':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(75)

[31mViolation[0m for MissingInputValidation in contract 'JZCoin':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(125)

[31mViolation[0m for MissingInputValidation in contract 'JZCoin':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'JZCoin':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(151)

[31mViolation[0m for MissingInputValidation in contract 'JZCoin':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(167)

[31mViolation[0m for MissingInputValidation in contract 'JZCoin':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(180)

[31mViolation[0m for MissingInputValidation in contract 'JZCoin':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(190)

[31mViolation[0m for MissingInputValidation in contract 'JZCoin':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(209)

[33mWarning[0m for MissingInputValidation in contract 'JZCoin':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'JZCoin':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'JZCoin':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'JZCoin':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'JZCoin':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'JZCoin':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'JZCoin':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'JZCoin':
    |// ----------------------------------------------------------------------------
    |contract JZCoin is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'JZCoin':
    |contract JZCoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'JZCoin':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'JZCoin':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'JZCoin':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(117)

[33mWarning[0m for UnhandledException in contract 'JZCoin':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(193)

[33mWarning[0m for UnhandledException in contract 'JZCoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JZCoin':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(193)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JZCoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(210)

[31mViolation[0m for UnrestrictedWrite in contract 'JZCoin':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'JZCoin':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'JZCoin':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'JZCoin':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'JZCoin':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'JZCoin':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'JZCoin':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'JZCoin':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(82)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(82)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x103f2a84b1e74a15e2ae2fb599ce408ba0638a0f.sol(23)


