Processing contract: /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol:GaillardCrowdSale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'GaillardCrowdSale':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract GaillardCrowdSale is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |    // Get the token balance for account `tokenOwner`
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public view returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(139)

[31mViolation[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(149)

[31mViolation[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |    // as this should be implemented in user interfaces
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(165)

[31mViolation[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(181)

[31mViolation[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public view returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(194)

[31mViolation[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |    // `receiveApproval(...)` is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(204)

[31mViolation[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) internal pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |// ----------------------------------------------------------------------------
    |contract GaillardCrowdSale is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |contract GaillardCrowdSale is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |    uint public startDate;
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |    uint public startDate;
    |    uint public bonusEnds;
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |    uint8 public decimals;
    |    uint public _totalSupply;
  > |    uint public startDate;
    |    uint public bonusEnds;
    |    uint public endDate;
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |    uint public _totalSupply;
    |    uint public startDate;
  > |    uint public bonusEnds;
    |    uint public endDate;
    |
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |    uint public startDate;
    |    uint public bonusEnds;
  > |    uint public endDate;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'GaillardCrowdSale':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public view returns (uint) {
    |        return _totalSupply - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(131)

[33mWarning[0m for UnhandledException in contract 'GaillardCrowdSale':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(207)

[33mWarning[0m for UnhandledException in contract 'GaillardCrowdSale':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(234)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GaillardCrowdSale':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GaillardCrowdSale':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract 'GaillardCrowdSale':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'GaillardCrowdSale':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'GaillardCrowdSale':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'GaillardCrowdSale':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'GaillardCrowdSale':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'GaillardCrowdSale':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'GaillardCrowdSale':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'GaillardCrowdSale':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(93)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(93)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xa32cd833344f831bc6dc074ab63f39d97cf8f32c.sol(21)


