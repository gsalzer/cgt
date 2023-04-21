Processing contract: /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol:GCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'GCoin':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract GCoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'GCoin':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'GCoin':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'GCoin':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'GCoin':
    |    // as this should be implemented in user interfaces
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(148)

[31mViolation[0m for MissingInputValidation in contract 'GCoin':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(164)

[31mViolation[0m for MissingInputValidation in contract 'GCoin':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(177)

[31mViolation[0m for MissingInputValidation in contract 'GCoin':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(187)

[31mViolation[0m for MissingInputValidation in contract 'GCoin':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(206)

[33mWarning[0m for MissingInputValidation in contract 'GCoin':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'GCoin':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'GCoin':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'GCoin':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'GCoin':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'GCoin':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'GCoin':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'GCoin':
    |// ----------------------------------------------------------------------------
    |contract GCoin is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'GCoin':
    |contract GCoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'GCoin':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'GCoin':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'GCoin':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(114)

[33mWarning[0m for UnhandledException in contract 'GCoin':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(190)

[33mWarning[0m for UnhandledException in contract 'GCoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GCoin':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(190)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GCoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(207)

[31mViolation[0m for UnrestrictedWrite in contract 'GCoin':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'GCoin':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'GCoin':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'GCoin':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'GCoin':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'GCoin':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'GCoin':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'GCoin':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(79)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(79)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x8f91879597ef67b547b45b67359d0fb811c85ffe.sol(20)


