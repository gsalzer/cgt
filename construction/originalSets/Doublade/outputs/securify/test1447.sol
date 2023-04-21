Processing contract: /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol:Crypbest
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Crypbest':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract Crypbest is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'Crypbest':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'Crypbest':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'Crypbest':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'Crypbest':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(147)

[31mViolation[0m for MissingInputValidation in contract 'Crypbest':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(163)

[31mViolation[0m for MissingInputValidation in contract 'Crypbest':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(176)

[31mViolation[0m for MissingInputValidation in contract 'Crypbest':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(186)

[31mViolation[0m for MissingInputValidation in contract 'Crypbest':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'Crypbest':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Crypbest':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Crypbest':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Crypbest':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Crypbest':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Crypbest':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Crypbest':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Crypbest':
    |// ----------------------------------------------------------------------------
    |contract Crypbest is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'Crypbest':
    |contract Crypbest is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Crypbest':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Crypbest':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'Crypbest':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(113)

[33mWarning[0m for UnhandledException in contract 'Crypbest':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(189)

[33mWarning[0m for UnhandledException in contract 'Crypbest':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(206)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crypbest':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(189)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crypbest':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(206)

[31mViolation[0m for UnrestrictedWrite in contract 'Crypbest':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'Crypbest':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Crypbest':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Crypbest':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'Crypbest':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'Crypbest':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Crypbest':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Crypbest':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(78)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(78)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x5b90b68049631d80fee37e00df623e80a6c2ee25.sol(19)


