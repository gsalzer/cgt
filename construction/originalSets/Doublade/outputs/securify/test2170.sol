Processing contract: /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol:TheBitcoinCenterToken
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
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(86)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(30)

[33mWarning[0m for LockedEther in contract 'TheBitcoinCenterToken':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract TheBitcoinCenterToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(129)

[31mViolation[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(139)

[31mViolation[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(155)

[31mViolation[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(171)

[31mViolation[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(184)

[31mViolation[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(194)

[31mViolation[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(213)

[33mWarning[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |// ----------------------------------------------------------------------------
    |contract TheBitcoinCenterToken is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |contract TheBitcoinCenterToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'TheBitcoinCenterToken':
    |    // Total supply 
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(121)

[33mWarning[0m for UnhandledException in contract 'TheBitcoinCenterToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(197)

[33mWarning[0m for UnhandledException in contract 'TheBitcoinCenterToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(214)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TheBitcoinCenterToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(197)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TheBitcoinCenterToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(214)

[31mViolation[0m for UnrestrictedWrite in contract 'TheBitcoinCenterToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'TheBitcoinCenterToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'TheBitcoinCenterToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'TheBitcoinCenterToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'TheBitcoinCenterToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'TheBitcoinCenterToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'TheBitcoinCenterToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'TheBitcoinCenterToken':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8d88f0be6d21dd012bc04d8f073767ac33e33fc8.sol(86)


