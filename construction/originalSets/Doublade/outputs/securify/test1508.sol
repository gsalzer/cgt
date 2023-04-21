Processing contract: /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol:Noscam
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Noscam':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract Noscam is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'Noscam':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'Noscam':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'Noscam':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(142)

[31mViolation[0m for MissingInputValidation in contract 'Noscam':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(158)

[31mViolation[0m for MissingInputValidation in contract 'Noscam':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'Noscam':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(187)

[31mViolation[0m for MissingInputValidation in contract 'Noscam':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(197)

[31mViolation[0m for MissingInputValidation in contract 'Noscam':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(216)

[33mWarning[0m for MissingInputValidation in contract 'Noscam':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Noscam':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Noscam':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Noscam':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Noscam':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Noscam':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Noscam':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Noscam':
    |// ----------------------------------------------------------------------------
    |contract Noscam is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Noscam':
    |contract Noscam is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Noscam':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'Noscam':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Noscam':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(124)

[33mWarning[0m for UnhandledException in contract 'Noscam':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(200)

[33mWarning[0m for UnhandledException in contract 'Noscam':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(217)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Noscam':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(200)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Noscam':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(217)

[31mViolation[0m for UnrestrictedWrite in contract 'Noscam':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'Noscam':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'Noscam':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'Noscam':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'Noscam':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'Noscam':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Noscam':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Noscam':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(89)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(89)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x601cefe6505d51e52d0f03be320dd4909a56151e.sol(30)


