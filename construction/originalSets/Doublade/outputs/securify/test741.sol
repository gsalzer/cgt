Processing contract: /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol:eSwitchToken
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
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(89)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(17)

[33mWarning[0m for LockedEther in contract 'eSwitchToken':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract eSwitchToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'eSwitchToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'eSwitchToken':
    |    // Get the token balance for account `tokenOwner`
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(138)

[31mViolation[0m for MissingInputValidation in contract 'eSwitchToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(148)

[31mViolation[0m for MissingInputValidation in contract 'eSwitchToken':
    |    // as this should be implemented in user interfaces
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(164)

[31mViolation[0m for MissingInputValidation in contract 'eSwitchToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(180)

[31mViolation[0m for MissingInputValidation in contract 'eSwitchToken':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(193)

[31mViolation[0m for MissingInputValidation in contract 'eSwitchToken':
    |    // `receiveApproval(...)` is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(203)

[31mViolation[0m for MissingInputValidation in contract 'eSwitchToken':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(214)

[33mWarning[0m for MissingInputValidation in contract 'eSwitchToken':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'eSwitchToken':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) internal pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'eSwitchToken':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'eSwitchToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'eSwitchToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'eSwitchToken':
    |// ----------------------------------------------------------------------------
    |contract eSwitchToken is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'eSwitchToken':
    |contract eSwitchToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'eSwitchToken':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |    uint public startDate;
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'eSwitchToken':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |    uint public startDate;
    |
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'eSwitchToken':
    |    uint8 public decimals;
    |    uint public _totalSupply;
  > |    uint public startDate;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'eSwitchToken':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(130)

[33mWarning[0m for UnhandledException in contract 'eSwitchToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(206)

[33mWarning[0m for UnhandledException in contract 'eSwitchToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'eSwitchToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(206)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'eSwitchToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(215)

[31mViolation[0m for UnrestrictedWrite in contract 'eSwitchToken':
    |    function addEswitchToOwner(uint tokens) public returns (bool success) {
    |	    require(msg.sender == owner);
  > |        balances[owner] = safeAdd(balances[owner], tokens);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'eSwitchToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'eSwitchToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'eSwitchToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'eSwitchToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'eSwitchToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'eSwitchToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'eSwitchToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'eSwitchToken':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f3275ddae74d8fcdc1204b537fe370a12843633.sol(89)


