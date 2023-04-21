Processing contract: /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol:GOLDBARToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'GOLDBARToken':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract GOLDBARToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'GOLDBARToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'GOLDBARToken':
    |    // Get the token balance for account `tokenOwner`
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'GOLDBARToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(142)

[31mViolation[0m for MissingInputValidation in contract 'GOLDBARToken':
    |    // as this should be implemented in user interfaces
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(158)

[31mViolation[0m for MissingInputValidation in contract 'GOLDBARToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'GOLDBARToken':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(187)

[31mViolation[0m for MissingInputValidation in contract 'GOLDBARToken':
    |    // `receiveApproval(...)` is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(197)

[31mViolation[0m for MissingInputValidation in contract 'GOLDBARToken':
    |        owner.transfer(msg.value);
    |    } 
  > |     function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(218)

[33mWarning[0m for MissingInputValidation in contract 'GOLDBARToken':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'GOLDBARToken':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) internal pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'GOLDBARToken':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'GOLDBARToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'GOLDBARToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'GOLDBARToken':
    |// ----------------------------------------------------------------------------
    |contract GOLDBARToken is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'GOLDBARToken':
    |contract GOLDBARToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'GOLDBARToken':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |    uint public startDate;
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'GOLDBARToken':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |    uint public startDate;
    |    uint public endDate;
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'GOLDBARToken':
    |    uint8 public decimals;
    |    uint public _totalSupply;
  > |    uint public startDate;
    |    uint public endDate;
    |
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'GOLDBARToken':
    |    uint public _totalSupply;
    |    uint public startDate;
  > |    uint public endDate;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'GOLDBARToken':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(124)

[33mWarning[0m for UnhandledException in contract 'GOLDBARToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(200)

[33mWarning[0m for UnhandledException in contract 'GOLDBARToken':
    |    } 
    |     function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(219)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GOLDBARToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(200)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GOLDBARToken':
    |    } 
    |     function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(219)

[31mViolation[0m for UnrestrictedWrite in contract 'GOLDBARToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'GOLDBARToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'GOLDBARToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'GOLDBARToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'GOLDBARToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'GOLDBARToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'GOLDBARToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'GOLDBARToken':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(88)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(88)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x353219b89bbf65f035f0cd92007357a69a5698e6.sol(16)


