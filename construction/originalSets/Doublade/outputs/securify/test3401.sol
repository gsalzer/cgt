Processing contract: /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol:ANY
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ANY':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract ANY is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'ANY':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'ANY':
    |    // Get the token balance for account `tokenOwner`
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(129)

[31mViolation[0m for MissingInputValidation in contract 'ANY':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(139)

[31mViolation[0m for MissingInputValidation in contract 'ANY':
    |    // as this should be implemented in user interfaces
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(155)

[31mViolation[0m for MissingInputValidation in contract 'ANY':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(171)

[31mViolation[0m for MissingInputValidation in contract 'ANY':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(184)

[31mViolation[0m for MissingInputValidation in contract 'ANY':
    |    // `receiveApproval(...)` is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(194)

[31mViolation[0m for MissingInputValidation in contract 'ANY':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(223)

[33mWarning[0m for MissingInputValidation in contract 'ANY':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'ANY':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) internal pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'ANY':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'ANY':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'ANY':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'ANY':
    |// ----------------------------------------------------------------------------
    |contract ANY is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'ANY':
    |contract ANY is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'ANY':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |    uint public startDate;
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'ANY':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |    uint public startDate;
    |    uint public bonusEnds;
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'ANY':
    |    uint8 public decimals;
    |    uint public _totalSupply;
  > |    uint public startDate;
    |    uint public bonusEnds;
    |    uint public endDate;
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'ANY':
    |    uint public _totalSupply;
    |    uint public startDate;
  > |    uint public bonusEnds;
    |    uint public endDate;
    |
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'ANY':
    |    uint public startDate;
    |    uint public bonusEnds;
  > |    uint public endDate;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'ANY':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(121)

[33mWarning[0m for UnhandledException in contract 'ANY':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(197)

[33mWarning[0m for UnhandledException in contract 'ANY':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(224)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ANY':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(197)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ANY':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'ANY':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'ANY':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'ANY':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'ANY':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'ANY':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'ANY':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'ANY':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'ANY':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(83)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(83)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xdf1b1b23f34de198a6881880b345419b59ca38d0.sol(11)


