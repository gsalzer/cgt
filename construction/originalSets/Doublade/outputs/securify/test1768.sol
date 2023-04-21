Processing contract: /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol:FuChains
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FuChains':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract FuChains is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'FuChains':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'FuChains':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'FuChains':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(143)

[31mViolation[0m for MissingInputValidation in contract 'FuChains':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(159)

[31mViolation[0m for MissingInputValidation in contract 'FuChains':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'FuChains':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(188)

[31mViolation[0m for MissingInputValidation in contract 'FuChains':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(198)

[31mViolation[0m for MissingInputValidation in contract 'FuChains':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'FuChains':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'FuChains':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'FuChains':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'FuChains':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'FuChains':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'FuChains':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'FuChains':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'FuChains':
    |// ----------------------------------------------------------------------------
    |contract FuChains is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'FuChains':
    |contract FuChains is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'FuChains':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'FuChains':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'FuChains':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(125)

[33mWarning[0m for UnhandledException in contract 'FuChains':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(201)

[33mWarning[0m for UnhandledException in contract 'FuChains':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(218)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FuChains':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(201)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FuChains':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'FuChains':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'FuChains':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'FuChains':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'FuChains':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'FuChains':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'FuChains':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'FuChains':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'FuChains':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(90)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(90)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x7092320eb7a2781bd9ecec76b5fd37b52fb6a23d.sol(31)


