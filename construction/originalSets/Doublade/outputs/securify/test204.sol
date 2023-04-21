Processing contract: /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol:SmartBetaToken
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
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(93)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(34)

[33mWarning[0m for LockedEther in contract 'SmartBetaToken':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract SmartBetaToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'SmartBetaToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'SmartBetaToken':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(136)

[31mViolation[0m for MissingInputValidation in contract 'SmartBetaToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(146)

[31mViolation[0m for MissingInputValidation in contract 'SmartBetaToken':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(162)

[31mViolation[0m for MissingInputValidation in contract 'SmartBetaToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(178)

[31mViolation[0m for MissingInputValidation in contract 'SmartBetaToken':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(191)

[31mViolation[0m for MissingInputValidation in contract 'SmartBetaToken':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(201)

[31mViolation[0m for MissingInputValidation in contract 'SmartBetaToken':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(220)

[33mWarning[0m for MissingInputValidation in contract 'SmartBetaToken':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'SmartBetaToken':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SmartBetaToken':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'SmartBetaToken':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'SmartBetaToken':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'SmartBetaToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'SmartBetaToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'SmartBetaToken':
    |// ----------------------------------------------------------------------------
    |contract SmartBetaToken is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'SmartBetaToken':
    |contract SmartBetaToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'SmartBetaToken':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'SmartBetaToken':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'SmartBetaToken':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(128)

[33mWarning[0m for UnhandledException in contract 'SmartBetaToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(204)

[33mWarning[0m for UnhandledException in contract 'SmartBetaToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartBetaToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(204)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartBetaToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartBetaToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartBetaToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartBetaToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartBetaToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartBetaToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartBetaToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartBetaToken':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartBetaToken':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0e1461b78757f003d3b336f8e528b152ab5e5e6c.sol(93)


