Processing contract: /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol:Bitcoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Bitcoin':
    |
    |
  > |contract Bitcoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'Bitcoin':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'Bitcoin':
    |
    |    
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'Bitcoin':
    |
    |
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'Bitcoin':
    |
    |  
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'Bitcoin':
    |
    |  
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(124)

[31mViolation[0m for MissingInputValidation in contract 'Bitcoin':
    |    // 
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'Bitcoin':
    |    // 
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(147)

[31mViolation[0m for MissingInputValidation in contract 'Bitcoin':
    |    // 
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'Bitcoin':
    |
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Bitcoin':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Bitcoin':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'Bitcoin':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Bitcoin':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Bitcoin':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Bitcoin':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Bitcoin':
    |
    |contract Bitcoin is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Bitcoin':
    |contract Bitcoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Bitcoin':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Bitcoin':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Bitcoin':
    |
    | 
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(95)

[33mWarning[0m for UnhandledException in contract 'Bitcoin':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(150)

[33mWarning[0m for UnhandledException in contract 'Bitcoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(167)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bitcoin':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(150)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bitcoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'Bitcoin':
    |  
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitcoin':
    |
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitcoin':
    |  
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitcoin':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitcoin':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitcoin':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitcoin':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitcoin':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(67)

[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(67)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x90b8e1c24be64a14841af6b1665dd2faf38558f6.sol(17)


