Processing contract: /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol:Sense
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol:Token
[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(96)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(37)

[33mWarning[0m for DAOConstantGas in contract 'Sense':
    |    
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(234)

[33mWarning[0m for LockedEther in contract 'Sense':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract Sense is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'Sense':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'Sense':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(139)

[31mViolation[0m for MissingInputValidation in contract 'Sense':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(149)

[31mViolation[0m for MissingInputValidation in contract 'Sense':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(165)

[31mViolation[0m for MissingInputValidation in contract 'Sense':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(181)

[31mViolation[0m for MissingInputValidation in contract 'Sense':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(194)

[31mViolation[0m for MissingInputValidation in contract 'Sense':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(204)

[31mViolation[0m for MissingInputValidation in contract 'Sense':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(223)

[33mWarning[0m for MissingInputValidation in contract 'Sense':
    |
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Sense':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Sense':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Sense':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Sense':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Sense':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Sense':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'Sense':
    |// ----------------------------------------------------------------------------
    |contract Sense is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'Sense':
    |contract Sense is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'Sense':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'Sense':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'Sense':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'Sense':
    |    }
    |    
  > |    function withdrawTokens(address tokenContract) external onlyOwner {
    |        Token tc = Token(tokenContract);
    |
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'Sense':
    |    }
    |    
  > |    function withdrawEther() external onlyOwner {
    |        owner.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(233)

[31mViolation[0m for TODAmount in contract 'Sense':
    |    
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(234)

[31mViolation[0m for TODReceiver in contract 'Sense':
    |    
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(234)

[33mWarning[0m for UnhandledException in contract 'Sense':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(207)

[33mWarning[0m for UnhandledException in contract 'Sense':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(224)

[33mWarning[0m for UnhandledException in contract 'Sense':
    |        Token tc = Token(tokenContract);
    |
  > |        tc.transfer(owner, tc.balanceOf(this));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(230)

[33mWarning[0m for UnhandledException in contract 'Sense':
    |    
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(234)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Sense':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Sense':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(224)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Sense':
    |        Token tc = Token(tokenContract);
    |
  > |        tc.transfer(owner, tc.balanceOf(this));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(230)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Sense':
    |    
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract 'Sense':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'Sense':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'Sense':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'Sense':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'Sense':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'Sense':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Sense':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Sense':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd17030a5f165543178e4b1dce1f7bfaa5965cf79.sol(96)


