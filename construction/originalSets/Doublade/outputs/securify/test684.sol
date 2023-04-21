Processing contract: /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol:UK
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
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(83)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(29)

[33mWarning[0m for LockedEther in contract 'UK':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract UK is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'UK':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'UK':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(126)

[31mViolation[0m for MissingInputValidation in contract 'UK':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(136)

[31mViolation[0m for MissingInputValidation in contract 'UK':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(152)

[31mViolation[0m for MissingInputValidation in contract 'UK':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(168)

[31mViolation[0m for MissingInputValidation in contract 'UK':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(181)

[31mViolation[0m for MissingInputValidation in contract 'UK':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(191)

[31mViolation[0m for MissingInputValidation in contract 'UK':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(210)

[33mWarning[0m for MissingInputValidation in contract 'UK':
    |
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'UK':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'UK':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'UK':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'UK':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'UK':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'UK':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'UK':
    |// ----------------------------------------------------------------------------
    |contract UK is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'UK':
    |contract UK is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'UK':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'UK':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'UK':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(118)

[33mWarning[0m for UnhandledException in contract 'UK':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(194)

[33mWarning[0m for UnhandledException in contract 'UK':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(211)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UK':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(194)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UK':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(211)

[31mViolation[0m for UnrestrictedWrite in contract 'UK':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'UK':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'UK':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'UK':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'UK':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'UK':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'UK':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'UK':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2bf2d5b964bc5e3dd009715546daa6f91b62e41b.sol(83)


