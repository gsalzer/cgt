Processing contract: /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol:CryptoBarCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CryptoBarCoin':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract CryptoBarCoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(136)

[31mViolation[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(146)

[31mViolation[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(162)

[31mViolation[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(178)

[31mViolation[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(191)

[31mViolation[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(201)

[31mViolation[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(220)

[33mWarning[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |// ----------------------------------------------------------------------------
    |contract CryptoBarCoin is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |contract CryptoBarCoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'CryptoBarCoin':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(128)

[33mWarning[0m for UnhandledException in contract 'CryptoBarCoin':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(204)

[33mWarning[0m for UnhandledException in contract 'CryptoBarCoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoBarCoin':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(204)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoBarCoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoBarCoin':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBarCoin':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBarCoin':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBarCoin':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBarCoin':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBarCoin':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBarCoin':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoBarCoin':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(93)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(93)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x229daf4ba617e5f7af140af2545c8b10aaf4db9f.sol(34)


