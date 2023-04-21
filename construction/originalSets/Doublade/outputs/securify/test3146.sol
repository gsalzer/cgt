Processing contract: /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol:DSDINToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DSDINToken':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract DSDINToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'DSDINToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'DSDINToken':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'DSDINToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(145)

[31mViolation[0m for MissingInputValidation in contract 'DSDINToken':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(161)

[31mViolation[0m for MissingInputValidation in contract 'DSDINToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(177)

[31mViolation[0m for MissingInputValidation in contract 'DSDINToken':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(190)

[31mViolation[0m for MissingInputValidation in contract 'DSDINToken':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(200)

[31mViolation[0m for MissingInputValidation in contract 'DSDINToken':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'DSDINToken':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'DSDINToken':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'DSDINToken':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'DSDINToken':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'DSDINToken':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'DSDINToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'DSDINToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'DSDINToken':
    |// ----------------------------------------------------------------------------
    |contract DSDINToken is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'DSDINToken':
    |contract DSDINToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'DSDINToken':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'DSDINToken':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'DSDINToken':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(127)

[33mWarning[0m for UnhandledException in contract 'DSDINToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(203)

[33mWarning[0m for UnhandledException in contract 'DSDINToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSDINToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSDINToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'DSDINToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'DSDINToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'DSDINToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'DSDINToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'DSDINToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'DSDINToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'DSDINToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'DSDINToken':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(92)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(92)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xce519acef448b69fd2e9fd64d1b9115bb3dc1756.sol(33)


