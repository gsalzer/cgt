Processing contract: /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol:XToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(91)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(34)

[33mWarning[0m for LockedEther in contract 'XToken':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract XToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'XToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'XToken':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'XToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(143)

[31mViolation[0m for MissingInputValidation in contract 'XToken':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(159)

[31mViolation[0m for MissingInputValidation in contract 'XToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'XToken':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(188)

[31mViolation[0m for MissingInputValidation in contract 'XToken':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(198)

[31mViolation[0m for MissingInputValidation in contract 'XToken':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(230)

[33mWarning[0m for MissingInputValidation in contract 'XToken':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'XToken':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'XToken':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'XToken':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'XToken':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'XToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'XToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'XToken':
    |// ----------------------------------------------------------------------------
    |contract XToken is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'XToken':
    |contract XToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'XToken':
    |    string public symbol;
    |    string public name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'XToken':
    |    string public name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'XToken':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(125)

[33mWarning[0m for UnhandledException in contract 'XToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(201)

[33mWarning[0m for UnhandledException in contract 'XToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(231)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(201)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(231)

[31mViolation[0m for UnrestrictedWrite in contract 'XToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'XToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'XToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'XToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'XToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'XToken':
    |    function burn(uint tokens) public onlyOwner returns (bool success) {
    |        require(balances[msg.sender] >= tokens);
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        _totalSupply = safeSub(_totalSupply, tokens);
    |        Burn(msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'XToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'XToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'XToken':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x282ee54f8ecda53d6bb77df4a4134738375a0664.sol(91)


