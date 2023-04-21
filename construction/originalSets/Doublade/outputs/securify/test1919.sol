Processing contract: /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol:GaillardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'GaillardToken':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract GaillardToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'GaillardToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'GaillardToken':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(152)

[31mViolation[0m for MissingInputValidation in contract 'GaillardToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(162)

[31mViolation[0m for MissingInputValidation in contract 'GaillardToken':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(178)

[31mViolation[0m for MissingInputValidation in contract 'GaillardToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(194)

[31mViolation[0m for MissingInputValidation in contract 'GaillardToken':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(207)

[31mViolation[0m for MissingInputValidation in contract 'GaillardToken':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(217)

[31mViolation[0m for MissingInputValidation in contract 'GaillardToken':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(236)

[33mWarning[0m for MissingInputValidation in contract 'GaillardToken':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'GaillardToken':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'GaillardToken':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'GaillardToken':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'GaillardToken':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'GaillardToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'GaillardToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'GaillardToken':
    |// ----------------------------------------------------------------------------
    |contract GaillardToken is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'GaillardToken':
    |contract GaillardToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'GaillardToken':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'GaillardToken':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'GaillardToken':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(144)

[33mWarning[0m for UnhandledException in contract 'GaillardToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(220)

[33mWarning[0m for UnhandledException in contract 'GaillardToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(237)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GaillardToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(220)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GaillardToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(237)

[31mViolation[0m for UnrestrictedWrite in contract 'GaillardToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'GaillardToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'GaillardToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'GaillardToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'GaillardToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'GaillardToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'GaillardToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'GaillardToken':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(109)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(109)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x7a9e82fef3f4a13129d19ab687f35e80a9ed1868.sol(50)


