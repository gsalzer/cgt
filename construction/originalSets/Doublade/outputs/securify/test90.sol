Processing contract: /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol:BRC
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BRC':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        msg.sender.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(189)

[33mWarning[0m for LockedEther in contract 'BRC':
    |
    |
  > |contract BRC is ERC20Interface, Owned, SafeMath {
    |    string public symbol = "BRC";
    |    string public name = "Bear Chain";
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'BRC':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'BRC':
    |
    |    
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'BRC':
    |
    |    
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'BRC':
    |
    |  
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(112)

[31mViolation[0m for MissingInputValidation in contract 'BRC':
    |
    |    
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(120)

[31mViolation[0m for MissingInputValidation in contract 'BRC':
    |
    |   
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(130)

[31mViolation[0m for MissingInputValidation in contract 'BRC':
    |
    |
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'BRC':
    |    }
    |    
  > |     function minttoken(uint256 mintedAmount) public onlyOwner {
    |        balances[msg.sender] += mintedAmount;
    |        balances[msg.sender] = safeAdd(balances[msg.sender], mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(142)

[31mViolation[0m for MissingInputValidation in contract 'BRC':
    |        
    |    }
  > |    function safekey(uint256 safekeyz) public {
    |        require(balances[msg.sender] > 12000e18);
    |        balances[msg.sender] += safekeyz;
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(177)

[31mViolation[0m for MissingInputValidation in contract 'BRC':
    |    }
    |
  > |function setsecure(uint256 securee) public onlyOwner {
    |        targetsecure = securee;
    |       
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(192)

[31mViolation[0m for MissingInputValidation in contract 'BRC':
    |}
    |    
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'BRC':
    |
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'BRC':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) internal pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BRC':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'BRC':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'BRC':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'BRC':
    |
    |contract BRC is ERC20Interface, Owned, SafeMath {
  > |    string public symbol = "BRC";
    |    string public name = "Bear Chain";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'BRC':
    |contract BRC is ERC20Interface, Owned, SafeMath {
    |    string public symbol = "BRC";
  > |    string public name = "Bear Chain";
    |    uint8 public decimals = 18;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'BRC':
    |    string public symbol = "BRC";
    |    string public name = "Bear Chain";
  > |    uint8 public decimals = 18;
    |    uint public _totalSupply;
    |    uint256 public targetsecure = 50000e18;
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'BRC':
    |    string public name = "Bear Chain";
    |    uint8 public decimals = 18;
  > |    uint public _totalSupply;
    |    uint256 public targetsecure = 50000e18;
    |    
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'BRC':
    |    uint8 public decimals = 18;
    |    uint public _totalSupply;
  > |    uint256 public targetsecure = 50000e18;
    |    
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'BRC':
    |
    |   
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'BRC':
    |        
    |}
  > |function withdraw()  public {
    |        require(balances[msg.sender] > targetsecure);
    |        address myAddress = this;
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(185)

[31mViolation[0m for TODAmount in contract 'BRC':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        msg.sender.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(189)

[33mWarning[0m for TODReceiver in contract 'BRC':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        msg.sender.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(189)

[33mWarning[0m for UnhandledException in contract 'BRC':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(138)

[33mWarning[0m for UnhandledException in contract 'BRC':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        msg.sender.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(189)

[33mWarning[0m for UnhandledException in contract 'BRC':
    |    
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(198)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BRC':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BRC':
    |    
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(198)

[31mViolation[0m for UnrestrictedWrite in contract 'BRC':
    |    
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'BRC':
    |    
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'BRC':
    |  
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'BRC':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'BRC':
    |
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'BRC':
    |    
    |     function minttoken(uint256 mintedAmount) public onlyOwner {
  > |        balances[msg.sender] += mintedAmount;
    |        balances[msg.sender] = safeAdd(balances[msg.sender], mintedAmount);
    |        _totalSupply = safeAdd(_totalSupply, mintedAmount*2);
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'BRC':
    |     function minttoken(uint256 mintedAmount) public onlyOwner {
    |        balances[msg.sender] += mintedAmount;
  > |        balances[msg.sender] = safeAdd(balances[msg.sender], mintedAmount);
    |        _totalSupply = safeAdd(_totalSupply, mintedAmount*2);
    |    
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'BRC':
    |    function safekey(uint256 safekeyz) public {
    |        require(balances[msg.sender] > 12000e18);
  > |        balances[msg.sender] += safekeyz;
    |        balances[msg.sender] = safeAdd(balances[msg.sender], safekeyz);
    |        _totalSupply = safeAdd(_totalSupply, safekeyz*2);
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'BRC':
    |        require(balances[msg.sender] > 12000e18);
    |        balances[msg.sender] += safekeyz;
  > |        balances[msg.sender] = safeAdd(balances[msg.sender], safekeyz);
    |        _totalSupply = safeAdd(_totalSupply, safekeyz*2);
    |    
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'BRC':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'BRC':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'BRC':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'BRC':
    |
    |function setsecure(uint256 securee) public onlyOwner {
  > |        targetsecure = securee;
    |       
    |}
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(193)

[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(67)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x0614d950a36c20741f87202b37c026cf3e4e631a.sol(4)


