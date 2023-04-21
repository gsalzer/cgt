Processing contract: /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol:Venuscoins
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
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(92)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(33)

[33mWarning[0m for LockedEther in contract 'Venuscoins':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract Venuscoins is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'Venuscoins':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'Venuscoins':
    |    // ------------------------------------------------------------------------
    |    
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(134)

[31mViolation[0m for MissingInputValidation in contract 'Venuscoins':
    |    // ------------------------------------------------------------------------
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'Venuscoins':
    |   
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'Venuscoins':
    |
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(158)

[31mViolation[0m for MissingInputValidation in contract 'Venuscoins':
    | // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(168)

[31mViolation[0m for MissingInputValidation in contract 'Venuscoins':
    |
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'Venuscoins':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'Venuscoins':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Venuscoins':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Venuscoins':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Venuscoins':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Venuscoins':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Venuscoins':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Venuscoins':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'Venuscoins':
    |// ----------------------------------------------------------------------------
    |contract Venuscoins is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Venuscoins':
    |contract Venuscoins is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'Venuscoins':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Venuscoins':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'Venuscoins':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(127)

[33mWarning[0m for UnhandledException in contract 'Venuscoins':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(177)

[33mWarning[0m for UnhandledException in contract 'Venuscoins':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(194)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Venuscoins':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(177)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Venuscoins':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(194)

[31mViolation[0m for UnrestrictedWrite in contract 'Venuscoins':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'Venuscoins':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'Venuscoins':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'Venuscoins':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'Venuscoins':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'Venuscoins':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Venuscoins':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Venuscoins':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x23777ff99c7761fbd1bc34a67c0f8e3c402a1330.sol(92)


