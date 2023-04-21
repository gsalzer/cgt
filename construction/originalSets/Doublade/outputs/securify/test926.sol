Processing contract: /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol:Dinarcoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Dinarcoin':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract Dinarcoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'Dinarcoin':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'Dinarcoin':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'Dinarcoin':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(143)

[31mViolation[0m for MissingInputValidation in contract 'Dinarcoin':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(159)

[31mViolation[0m for MissingInputValidation in contract 'Dinarcoin':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'Dinarcoin':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(188)

[31mViolation[0m for MissingInputValidation in contract 'Dinarcoin':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(198)

[31mViolation[0m for MissingInputValidation in contract 'Dinarcoin':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'Dinarcoin':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Dinarcoin':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Dinarcoin':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'Dinarcoin':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Dinarcoin':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Dinarcoin':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Dinarcoin':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Dinarcoin':
    |// ----------------------------------------------------------------------------
    |contract Dinarcoin is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Dinarcoin':
    |contract Dinarcoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'Dinarcoin':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Dinarcoin':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'Dinarcoin':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(125)

[33mWarning[0m for UnhandledException in contract 'Dinarcoin':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(201)

[33mWarning[0m for UnhandledException in contract 'Dinarcoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(218)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dinarcoin':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(201)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dinarcoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'Dinarcoin':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'Dinarcoin':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'Dinarcoin':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'Dinarcoin':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'Dinarcoin':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'Dinarcoin':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Dinarcoin':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Dinarcoin':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(90)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(90)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x3b0cfc64282b41c0e267759fdfc694a840b55780.sol(31)


