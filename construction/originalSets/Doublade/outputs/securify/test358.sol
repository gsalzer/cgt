Processing contract: /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol:mango
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
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(93)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(21)

[33mWarning[0m for LockedEther in contract 'mango':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract mango is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'mango':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'mango':
    |    // Get the token balance for account `tokenOwner`
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'mango':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(151)

[31mViolation[0m for MissingInputValidation in contract 'mango':
    |    // as this should be implemented in user interfaces
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(167)

[31mViolation[0m for MissingInputValidation in contract 'mango':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(183)

[31mViolation[0m for MissingInputValidation in contract 'mango':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'mango':
    |    // `receiveApproval(...)` is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(206)

[31mViolation[0m for MissingInputValidation in contract 'mango':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(236)

[33mWarning[0m for MissingInputValidation in contract 'mango':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'mango':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) internal pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'mango':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'mango':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'mango':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'mango':
    |// ----------------------------------------------------------------------------
    |contract mango is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'mango':
    |contract mango is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'mango':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |    uint public startDate;
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'mango':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |    uint public startDate;
    |    uint public bonusEnds;
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'mango':
    |    uint8 public decimals;
    |    uint public _totalSupply;
  > |    uint public startDate;
    |    uint public bonusEnds;
    |    uint public endDate;
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'mango':
    |    uint public _totalSupply;
    |    uint public startDate;
  > |    uint public bonusEnds;
    |    uint public endDate;
    |
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'mango':
    |    uint public startDate;
    |    uint public bonusEnds;
  > |    uint public endDate;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'mango':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(133)

[33mWarning[0m for UnhandledException in contract 'mango':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(209)

[33mWarning[0m for UnhandledException in contract 'mango':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(237)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'mango':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(209)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'mango':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(237)

[31mViolation[0m for UnrestrictedWrite in contract 'mango':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'mango':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'mango':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'mango':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'mango':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'mango':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'mango':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'mango':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x17d9bbc5035f2b0f74fc3e0a8a023aa98f5749fa.sol(93)


