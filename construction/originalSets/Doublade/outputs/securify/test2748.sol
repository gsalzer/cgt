Processing contract: /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol:FantomToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FantomToken':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract FantomToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'FantomToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'FantomToken':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(124)

[31mViolation[0m for MissingInputValidation in contract 'FantomToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(134)

[31mViolation[0m for MissingInputValidation in contract 'FantomToken':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'FantomToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(166)

[31mViolation[0m for MissingInputValidation in contract 'FantomToken':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(179)

[31mViolation[0m for MissingInputValidation in contract 'FantomToken':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(189)

[31mViolation[0m for MissingInputValidation in contract 'FantomToken':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'FantomToken':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'FantomToken':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'FantomToken':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'FantomToken':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'FantomToken':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'FantomToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'FantomToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'FantomToken':
    |// ----------------------------------------------------------------------------
    |contract FantomToken is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'FantomToken':
    |contract FantomToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'FantomToken':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'FantomToken':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'FantomToken':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(116)

[33mWarning[0m for UnhandledException in contract 'FantomToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(192)

[33mWarning[0m for UnhandledException in contract 'FantomToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(209)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FantomToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(192)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FantomToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(209)

[31mViolation[0m for UnrestrictedWrite in contract 'FantomToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'FantomToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'FantomToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'FantomToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'FantomToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'FantomToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'FantomToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'FantomToken':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(81)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(81)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xb426d168489b87326a0de11ed29b7391750e8ebd.sol(22)


