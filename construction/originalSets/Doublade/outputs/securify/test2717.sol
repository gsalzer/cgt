Processing contract: /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol:XPAY
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
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
    |
  > |    function Owned2() public {
    |        owner = msg.sender;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function Owned2() public {
  > |        owner = msg.sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(80)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(21)

[33mWarning[0m for LockedEther in contract 'XPAY':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract XPAY is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'XPAY':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'XPAY':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public view returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(124)

[31mViolation[0m for MissingInputValidation in contract 'XPAY':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(134)

[31mViolation[0m for MissingInputValidation in contract 'XPAY':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'XPAY':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(166)

[31mViolation[0m for MissingInputValidation in contract 'XPAY':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public view returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(179)

[31mViolation[0m for MissingInputValidation in contract 'XPAY':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(189)

[31mViolation[0m for MissingInputValidation in contract 'XPAY':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'XPAY':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'XPAY':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'XPAY':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'XPAY':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'XPAY':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'XPAY':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'XPAY':
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
    |
  > |    function Owned2() public {
    |        owner = msg.sender;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'XPAY':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'XPAY':
    |// ----------------------------------------------------------------------------
    |contract XPAY is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'XPAY':
    |contract XPAY is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'XPAY':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'XPAY':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'XPAY':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public view returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(116)

[33mWarning[0m for UnhandledException in contract 'XPAY':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(192)

[33mWarning[0m for UnhandledException in contract 'XPAY':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(209)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XPAY':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(192)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XPAY':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(209)

[31mViolation[0m for UnrestrictedWrite in contract 'XPAY':
    |
    |    function Owned2() public {
  > |        owner = msg.sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'XPAY':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAY':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAY':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAY':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAY':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAY':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAY':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'XPAY':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb1b9fa0d16196bf836b2f7458887add0b41bbadc.sol(80)


