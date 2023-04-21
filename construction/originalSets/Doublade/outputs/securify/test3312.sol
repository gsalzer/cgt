Processing contract: /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol:CrLepreconToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CrLepreconToken':
    |}
    |
  > |contract CrLepreconToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'CrLepreconToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'CrLepreconToken':
    |    }
    |
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'CrLepreconToken':
    |    }
    |
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'CrLepreconToken':
    |    }
    |
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'CrLepreconToken':
    |    }
    |
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'CrLepreconToken':
    |    }
    |
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(112)

[31mViolation[0m for MissingInputValidation in contract 'CrLepreconToken':
    |    }
    |
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'CrLepreconToken':
    |    }
    |
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'CrLepreconToken':
    |
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'CrLepreconToken':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'CrLepreconToken':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'CrLepreconToken':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'CrLepreconToken':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'CrLepreconToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'CrLepreconToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'CrLepreconToken':
    |
    |contract CrLepreconToken is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'CrLepreconToken':
    |contract CrLepreconToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'CrLepreconToken':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'CrLepreconToken':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'CrLepreconToken':
    |    }
    |
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(83)

[33mWarning[0m for UnhandledException in contract 'CrLepreconToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(119)

[33mWarning[0m for UnhandledException in contract 'CrLepreconToken':
    |
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrLepreconToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(119)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrLepreconToken':
    |
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'CrLepreconToken':
    |
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'CrLepreconToken':
    |
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'CrLepreconToken':
    |
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'CrLepreconToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'CrLepreconToken':
    |
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'CrLepreconToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'CrLepreconToken':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'CrLepreconToken':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(61)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(61)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xd996a4ec078d479778920a6f56b847f85ac10833.sol(17)


