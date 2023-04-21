Processing contract: /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol:MIAMIcoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MIAMIcoin':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract MIAMIcoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'MIAMIcoin':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'MIAMIcoin':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'MIAMIcoin':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(142)

[31mViolation[0m for MissingInputValidation in contract 'MIAMIcoin':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(158)

[31mViolation[0m for MissingInputValidation in contract 'MIAMIcoin':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'MIAMIcoin':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(187)

[31mViolation[0m for MissingInputValidation in contract 'MIAMIcoin':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(197)

[31mViolation[0m for MissingInputValidation in contract 'MIAMIcoin':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(216)

[33mWarning[0m for MissingInputValidation in contract 'MIAMIcoin':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'MIAMIcoin':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'MIAMIcoin':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'MIAMIcoin':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'MIAMIcoin':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'MIAMIcoin':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'MIAMIcoin':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'MIAMIcoin':
    |// ----------------------------------------------------------------------------
    |contract MIAMIcoin is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'MIAMIcoin':
    |contract MIAMIcoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'MIAMIcoin':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'MIAMIcoin':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'MIAMIcoin':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(124)

[33mWarning[0m for UnhandledException in contract 'MIAMIcoin':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(200)

[33mWarning[0m for UnhandledException in contract 'MIAMIcoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(217)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MIAMIcoin':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(200)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MIAMIcoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(217)

[31mViolation[0m for UnrestrictedWrite in contract 'MIAMIcoin':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'MIAMIcoin':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'MIAMIcoin':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'MIAMIcoin':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'MIAMIcoin':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'MIAMIcoin':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'MIAMIcoin':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'MIAMIcoin':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(89)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(89)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x5ee9bf058b4deebf04756ca262c70232494783f0.sol(32)


