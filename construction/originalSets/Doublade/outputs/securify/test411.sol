Processing contract: /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol:OneToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'OneToken':
    |}
    |
  > |contract OneToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'OneToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'OneToken':
    |    }
    |
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'OneToken':
    |    }
    |
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'OneToken':
    |    }
    |  
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'OneToken':
    |    }
    |
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'OneToken':
    |    }
    |
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'OneToken':
    |    }
    |
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'OneToken':
    |    }
    |
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'OneToken':
    |
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'OneToken':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'OneToken':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'OneToken':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'OneToken':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'OneToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'OneToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'OneToken':
    |
    |contract OneToken is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'OneToken':
    |contract OneToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'OneToken':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'OneToken':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'OneToken':
    |    }
    |
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(94)

[33mWarning[0m for UnhandledException in contract 'OneToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(130)

[33mWarning[0m for UnhandledException in contract 'OneToken':
    |
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(139)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OneToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(130)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OneToken':
    |
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'OneToken':
    |
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'OneToken':
    |
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'OneToken':
    |  
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'OneToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'OneToken':
    |
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'OneToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'OneToken':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'OneToken':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(72)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(72)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Decimals    : 18
    |
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x1a8a3c3ce1037f9c41f340177d7dea6bb2e789f1.sol(28)


