Processing contract: /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol:CFSToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CFSToken':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract CFSToken is ERC20Interface, Owned, SafeMath {
    |    string  public symbol;
    |    string  public name;
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'CFSToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'CFSToken':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public view returns (uint256 balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'CFSToken':
    |    }
    |
  > |    function transfer(address to, uint256 value) public runnable returns (bool success) {
    |        assert(balances[msg.sender] >= value);
    |        balances[msg.sender] = safeSub(balances[msg.sender], value);
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'CFSToken':
    |    }
    |
  > |    function approve(address spender, uint256 tokens) public runnable returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(125)

[31mViolation[0m for MissingInputValidation in contract 'CFSToken':
    |    }
    |
  > |    function transferFrom(address from, address to, uint256 tokens) public runnable returns (bool success) {        
    |        allowed[from][to] = safeSub(allowed[from][to], tokens);
    |        balances[from] = safeSub(balances[from], tokens);        
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'CFSToken':
    |    }
    |
  > |    function allowance(address tokenOwner, address spender) public runnable view returns (uint256 remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(139)

[31mViolation[0m for MissingInputValidation in contract 'CFSToken':
    |    }
    |
  > |    function burnFrom(address from, uint256 value) public runnable onlyOwner returns (bool success) {
    |        assert(balances[from] >= value);
    |        assert(value <= allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'CFSToken':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'CFSToken':
    |    }
    |
  > |    function safeSub(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'CFSToken':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'CFSToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'CFSToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'CFSToken':
    |// ----------------------------------------------------------------------------
    |contract CFSToken is ERC20Interface, Owned, SafeMath {
  > |    string  public symbol;
    |    string  public name;
    |    uint8   public decimals;
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'CFSToken':
    |contract CFSToken is ERC20Interface, Owned, SafeMath {
    |    string  public symbol;
  > |    string  public name;
    |    uint8   public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'CFSToken':
    |    string  public symbol;
    |    string  public name;
  > |    uint8   public decimals;
    |    uint256 public totalSupply;
    |    bool    public isStop;
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'CFSToken':
    |    uint8   public decimals;
    |    uint256 public totalSupply;
  > |    bool    public isStop;
    |
    |    mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'CFSToken':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'CFSToken':
    |    }
    |
  > |    function stop() public onlyOwner {
    |        require(isStop == false);
    |        isStop = true;
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'CFSToken':
    |    }
    |
  > |    function restart() public onlyOwner {
    |        require(isStop == true);
    |        isStop = false;
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'CFSToken':
    |
    |    function transferFrom(address from, address to, uint256 tokens) public runnable returns (bool success) {        
  > |        allowed[from][to] = safeSub(allowed[from][to], tokens);
    |        balances[from] = safeSub(balances[from], tokens);        
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'CFSToken':
    |    function transferFrom(address from, address to, uint256 tokens) public runnable returns (bool success) {        
    |        allowed[from][to] = safeSub(allowed[from][to], tokens);
  > |        balances[from] = safeSub(balances[from], tokens);        
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'CFSToken':
    |        allowed[from][to] = safeSub(allowed[from][to], tokens);
    |        balances[from] = safeSub(balances[from], tokens);        
  > |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'CFSToken':
    |    function transfer(address to, uint256 value) public runnable returns (bool success) {
    |        assert(balances[msg.sender] >= value);
  > |        balances[msg.sender] = safeSub(balances[msg.sender], value);
    |        balances[to] = safeAdd(balances[to], value);
    |        emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'CFSToken':
    |
    |    function approve(address spender, uint256 tokens) public runnable returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'CFSToken':
    |
    |    function supplement(uint256 value) public runnable onlyOwner {
  > |        balances[msg.sender] = safeAdd(balances[msg.sender], value);
    |        totalSupply = safeAdd(totalSupply, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'CFSToken':
    |    function burn(uint256 value) public runnable onlyOwner{
    |        assert(balances[msg.sender] >= value);
  > |        balances[msg.sender] = safeSub(balances[msg.sender], value);
    |        totalSupply = safeSub(totalSupply, value);
    |        emit Burn(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'CFSToken':
    |        assert(value <= allowed[from][msg.sender]);
    |        balances[from] = safeSub(balances[from], value);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], value);
    |        totalSupply = safeSub(totalSupply, value);
    |        emit Burn(from, value);
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'CFSToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'CFSToken':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'CFSToken':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'CFSToken':
    |    function stop() public onlyOwner {
    |        require(isStop == false);
  > |        isStop = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'CFSToken':
    |    function restart() public onlyOwner {
    |        require(isStop == true);
  > |        isStop = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(150)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(53)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x34d78533750fd0d75b313592d6d6ed7edf6367e0.sol(6)


