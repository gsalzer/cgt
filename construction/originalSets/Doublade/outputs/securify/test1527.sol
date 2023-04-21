Processing contract: /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol:ARM1Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ARM1Token':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract ARM1Token is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'ARM1Token':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'ARM1Token':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(120)

[31mViolation[0m for MissingInputValidation in contract 'ARM1Token':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(130)

[31mViolation[0m for MissingInputValidation in contract 'ARM1Token':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(146)

[31mViolation[0m for MissingInputValidation in contract 'ARM1Token':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(162)

[31mViolation[0m for MissingInputValidation in contract 'ARM1Token':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'ARM1Token':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(185)

[31mViolation[0m for MissingInputValidation in contract 'ARM1Token':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(204)

[33mWarning[0m for MissingInputValidation in contract 'ARM1Token':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'ARM1Token':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'ARM1Token':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'ARM1Token':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'ARM1Token':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'ARM1Token':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'ARM1Token':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'ARM1Token':
    |// ----------------------------------------------------------------------------
    |contract ARM1Token is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'ARM1Token':
    |contract ARM1Token is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'ARM1Token':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'ARM1Token':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'ARM1Token':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(112)

[33mWarning[0m for UnhandledException in contract 'ARM1Token':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(188)

[33mWarning[0m for UnhandledException in contract 'ARM1Token':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(205)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ARM1Token':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ARM1Token':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'ARM1Token':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'ARM1Token':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'ARM1Token':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'ARM1Token':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'ARM1Token':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'ARM1Token':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'ARM1Token':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'ARM1Token':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(77)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(77)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x613d0e9b91af3d0057fe376194580dd0048e91d4.sol(19)


