Processing contract: /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol:RebateCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(87)

[33mWarning[0m for LockedEther in contract 'RebateCoin':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract RebateCoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'RebateCoin':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'RebateCoin':
    |    // Get the token balance for account `tokenOwner`
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(151)

[31mViolation[0m for MissingInputValidation in contract 'RebateCoin':
    |    }
    |
  > |    function reward_list(address[] memory to, uint[] memory tokens) public returns (bool success) {
    |	require(msg.sender == owner);
    |        require(to.length == tokens.length);
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(168)

[31mViolation[0m for MissingInputValidation in contract 'RebateCoin':
    |    // as this should be implemented in user interfaces
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'RebateCoin':
    |    // - 0 value transfers are not allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        if (tokens > 0 && from != to) {
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(212)

[31mViolation[0m for MissingInputValidation in contract 'RebateCoin':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(227)

[31mViolation[0m for MissingInputValidation in contract 'RebateCoin':
    |    // `receiveApproval(...)` is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(246)

[31mViolation[0m for MissingInputValidation in contract 'RebateCoin':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(281)

[33mWarning[0m for MissingInputValidation in contract 'RebateCoin':
    |  0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    |
  > |  function safeAdd (uint256 x, uint256 y) constant internal returns (uint256 z) {
    |    assert (x <= MAX_UINT256 - y);
    |    return x + y;
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'RebateCoin':
    |  }
    |
  > |  function safeSub (uint256 x, uint256 y) constant internal returns (uint256 z) {
    |    assert (x >= y);
    |    return x - y;
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'RebateCoin':
    |  
    |  
  > |   function safeDiv(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a / b;
    |    return c;
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'RebateCoin':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'RebateCoin':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'RebateCoin':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'RebateCoin':
    |// ----------------------------------------------------------------------------
    |contract RebateCoin is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'RebateCoin':
    |contract RebateCoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals = 18;
    |    uint256 private _supply;
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'RebateCoin':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals = 18;
    |    uint256 private _supply;
    |    uint256 private _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'RebateCoin':
    |    uint256 private _totalSupply;
    |
  > |    uint public tokenPrice = 100 * (10**13); // wei , 0.001 eth , 6 usd
    | 
    |	uint private SaleStage1_start = 1527811200;
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'RebateCoin':
    |	uint private SaleStage3_tokenPrice = 134 * (10**13); // 0.8 usd
    |	
  > |    uint public startDate = 1527811200;
    |    uint public endDate = 1535760000;
    |
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'RebateCoin':
    |	
    |    uint public startDate = 1527811200;
  > |    uint public endDate = 1535760000;
    |
    |	uint256 public bounty = 10 * (10**23);
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'RebateCoin':
    |    uint public endDate = 1535760000;
    |
  > |	uint256 public bounty = 10 * (10**23);
    |
    |	uint256 public hardcap = 22800 ether;
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'RebateCoin':
    |	uint256 public bounty = 10 * (10**23);
    |
  > |	uint256 public hardcap = 22800 ether;
    |	uint256 public softcap = 62250 ether;
    |
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'RebateCoin':
    |
    |	uint256 public hardcap = 22800 ether;
  > |	uint256 public softcap = 62250 ether;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'RebateCoin':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'RebateCoin':
    |    /// presale, allowing it to continue accepting fulfillments
    |    /// @param _newDeadline the new deadline in timestamp format
  > |    function extendDeadline(uint _newDeadline) public returns (bool success){
    |        require(msg.sender == owner);
    |        require(_newDeadline > 0);
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(234)

[33mWarning[0m for UnhandledException in contract 'RebateCoin':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(249)

[33mWarning[0m for UnhandledException in contract 'RebateCoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RebateCoin':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(249)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RebateCoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(282)

[31mViolation[0m for UnrestrictedWrite in contract 'RebateCoin':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(162)

[31mViolation[0m for UnrestrictedWrite in contract 'RebateCoin':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
  > |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(163)

[31mViolation[0m for UnrestrictedWrite in contract 'RebateCoin':
    |        require(msg.sender == owner);
    |	require( tokens <= bounty);		
  > |	bounty = safeSub(bounty, tokens);
    |	balances[to] = safeAdd(balances[to], tokens);
    |	
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'RebateCoin':
    |	require( tokens <= bounty);		
    |	bounty = safeSub(bounty, tokens);
  > |	balances[to] = safeAdd(balances[to], tokens);
    |	
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(181)

[31mViolation[0m for UnrestrictedWrite in contract 'RebateCoin':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        if (tokens > 0 && from != to) {
    |            allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(213)

[31mViolation[0m for UnrestrictedWrite in contract 'RebateCoin':
    |        balances[from] = safeSub(balances[from], tokens);
    |        if (tokens > 0 && from != to) {
  > |            allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |            balances[to] = safeAdd(balances[to], tokens);
    |            Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(215)

[31mViolation[0m for UnrestrictedWrite in contract 'RebateCoin':
    |        if (tokens > 0 && from != to) {
    |            allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  > |            balances[to] = safeAdd(balances[to], tokens);
    |            Transfer(from, to, tokens);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'RebateCoin':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'RebateCoin':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'RebateCoin':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'RebateCoin':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'RebateCoin':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'RebateCoin':
    |        require(msg.sender == owner);
    |        require(_newDeadline > 0);
  > |        endDate = _newDeadline;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(237)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |  uint256 constant private MAX_UINT256 =
    |  0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
  at /home/jiaming/mavs_srcs/contract@0xd573ce03423086ac9b5a42bc34f6b40330949655.sol(6)


