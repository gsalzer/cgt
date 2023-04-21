Processing contract: /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol:GerritCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'GerritCoin':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract GerritCoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'GerritCoin':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'GerritCoin':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(134)

[31mViolation[0m for MissingInputValidation in contract 'GerritCoin':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(144)

[31mViolation[0m for MissingInputValidation in contract 'GerritCoin':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(160)

[31mViolation[0m for MissingInputValidation in contract 'GerritCoin':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(176)

[31mViolation[0m for MissingInputValidation in contract 'GerritCoin':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(189)

[31mViolation[0m for MissingInputValidation in contract 'GerritCoin':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(199)

[31mViolation[0m for MissingInputValidation in contract 'GerritCoin':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(218)

[33mWarning[0m for MissingInputValidation in contract 'GerritCoin':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'GerritCoin':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'GerritCoin':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'GerritCoin':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'GerritCoin':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'GerritCoin':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'GerritCoin':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'GerritCoin':
    |// ----------------------------------------------------------------------------
    |contract GerritCoin is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'GerritCoin':
    |contract GerritCoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'GerritCoin':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'GerritCoin':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'GerritCoin':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(126)

[33mWarning[0m for UnhandledException in contract 'GerritCoin':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(202)

[33mWarning[0m for UnhandledException in contract 'GerritCoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(219)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GerritCoin':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GerritCoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(219)

[31mViolation[0m for UnrestrictedWrite in contract 'GerritCoin':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'GerritCoin':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'GerritCoin':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'GerritCoin':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'GerritCoin':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'GerritCoin':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'GerritCoin':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'GerritCoin':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(91)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(91)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x81250f81aeba148ceb25e016bc4ed378133cbbe0.sol(32)


