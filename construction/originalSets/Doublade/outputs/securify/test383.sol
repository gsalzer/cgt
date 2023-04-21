Processing contract: /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol:DPLToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DPLToken':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract DPLToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'DPLToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'DPLToken':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'DPLToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(124)

[31mViolation[0m for MissingInputValidation in contract 'DPLToken':
    |  
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'DPLToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(153)

[31mViolation[0m for MissingInputValidation in contract 'DPLToken':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(166)

[31mViolation[0m for MissingInputValidation in contract 'DPLToken':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(176)

[31mViolation[0m for MissingInputValidation in contract 'DPLToken':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'DPLToken':
    |
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'DPLToken':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'DPLToken':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'DPLToken':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'DPLToken':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'DPLToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'DPLToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'DPLToken':
    |// ----------------------------------------------------------------------------
    |contract DPLToken is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'DPLToken':
    |contract DPLToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'DPLToken':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'DPLToken':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'DPLToken':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(106)

[33mWarning[0m for UnhandledException in contract 'DPLToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(179)

[33mWarning[0m for UnhandledException in contract 'DPLToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DPLToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(179)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DPLToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'DPLToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'DPLToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'DPLToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'DPLToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'DPLToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'DPLToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'DPLToken':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'DPLToken':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(71)

[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(71)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Decimals    : 18
    |
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x1912a443b177f427f2fcb7bb9aa3e61cb50d48c7.sol(24)


