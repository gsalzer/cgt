Processing contract: /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol:MetadollarCrw
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MetadollarCrw':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract MetadollarCrw is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'MetadollarCrw':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'MetadollarCrw':
    |    // Get the token balance for account `tokenOwner`
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(129)

[31mViolation[0m for MissingInputValidation in contract 'MetadollarCrw':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(139)

[31mViolation[0m for MissingInputValidation in contract 'MetadollarCrw':
    |    // from the token owner's account
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(151)

[31mViolation[0m for MissingInputValidation in contract 'MetadollarCrw':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(167)

[31mViolation[0m for MissingInputValidation in contract 'MetadollarCrw':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(180)

[31mViolation[0m for MissingInputValidation in contract 'MetadollarCrw':
    |    // `receiveApproval(...)` is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(190)

[31mViolation[0m for MissingInputValidation in contract 'MetadollarCrw':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(219)

[33mWarning[0m for MissingInputValidation in contract 'MetadollarCrw':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'MetadollarCrw':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) internal pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'MetadollarCrw':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'MetadollarCrw':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'MetadollarCrw':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'MetadollarCrw':
    |// ----------------------------------------------------------------------------
    |contract MetadollarCrw is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'MetadollarCrw':
    |contract MetadollarCrw is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'MetadollarCrw':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |    uint public startDate;
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'MetadollarCrw':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |    uint public startDate;
    |    uint public bonusEnds;
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'MetadollarCrw':
    |    uint8 public decimals;
    |    uint public _totalSupply;
  > |    uint public startDate;
    |    uint public bonusEnds;
    |    uint public endDate;
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'MetadollarCrw':
    |    uint public _totalSupply;
    |    uint public startDate;
  > |    uint public bonusEnds;
    |    uint public endDate;
    |
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'MetadollarCrw':
    |    uint public startDate;
    |    uint public bonusEnds;
  > |    uint public endDate;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'MetadollarCrw':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(121)

[33mWarning[0m for UnhandledException in contract 'MetadollarCrw':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(193)

[33mWarning[0m for UnhandledException in contract 'MetadollarCrw':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(220)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MetadollarCrw':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(193)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MetadollarCrw':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(220)

[31mViolation[0m for UnrestrictedWrite in contract 'MetadollarCrw':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'MetadollarCrw':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'MetadollarCrw':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'MetadollarCrw':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'MetadollarCrw':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'MetadollarCrw':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'MetadollarCrw':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'MetadollarCrw':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(83)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(83)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x0e32d4c9581ebffbdf5d920cc2252f379b88d562.sol(14)


