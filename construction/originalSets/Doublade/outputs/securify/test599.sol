Processing contract: /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol:MICROSTACK
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MICROSTACK':
    |
    |
  > |contract MICROSTACK is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'MICROSTACK':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'MICROSTACK':
    |    }
    |
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'MICROSTACK':
    |
    |
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'MICROSTACK':
    |
    |
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'MICROSTACK':
    |
    |
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'MICROSTACK':
    |    }
    |
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'MICROSTACK':
    |    }
    |
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'MICROSTACK':
    |    }
    |
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'MICROSTACK':
    |
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'MICROSTACK':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'MICROSTACK':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'MICROSTACK':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'MICROSTACK':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'MICROSTACK':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'MICROSTACK':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'MICROSTACK':
    |
    |contract MICROSTACK is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'MICROSTACK':
    |contract MICROSTACK is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'MICROSTACK':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'MICROSTACK':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'MICROSTACK':
    |
    |
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(90)

[33mWarning[0m for UnhandledException in contract 'MICROSTACK':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(130)

[33mWarning[0m for UnhandledException in contract 'MICROSTACK':
    |
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(135)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MICROSTACK':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(130)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MICROSTACK':
    |
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'MICROSTACK':
    |
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'MICROSTACK':
    |
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'MICROSTACK':
    |
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'MICROSTACK':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'MICROSTACK':
    |
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'MICROSTACK':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'MICROSTACK':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'MICROSTACK':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(66)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(66)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x262cc2323daf3f24250df93a0aa8cc9bc0cce60f.sol(20)


