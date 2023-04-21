Processing contract: /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol:BlessToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BlessToken':
    |}
    |
  > |contract BlessToken is ERC20Token {
    |
    |    uint256 public mintTotal;
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'BlessToken':
    | */
    |contract ERC20Token is IERC20Token, SafeMath {
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'BlessToken':
    |contract ERC20Token is IERC20Token, SafeMath {
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |
    |    function transfer(address _to, uint256 _value) public returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'BlessToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |        require(_to != address(0));
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'BlessToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'BlessToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'BlessToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'BlessToken':
    | */
    |contract IERC20Token {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BlessToken':
    |contract IERC20Token {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'BlessToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'BlessToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    function balanceOf(address _owner) public constant returns (uint256 balance);
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'BlessToken':
    |    }
    |
  > |    function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
    |        assert(a >= b);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'BlessToken':
    |    }
    |
  > |    function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'BlessToken':
    |contract BlessToken is ERC20Token {
    |
  > |    uint256 public mintTotal;
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'BlessToken':
    |
    |    uint256 public mintTotal;
  > |    address public owner;
    |
    |    event Mint(address _toAddress, uint256 _amount);
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'BlessToken':
    |        require(balances[msg.sender] >= _value);
    |
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'BlessToken':
    |
    |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'BlessToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'BlessToken':
    |
    |        balances[_to] = safeAdd(balances[_to], _value);
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'BlessToken':
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'BlessToken':
    |        require( safeAdd(_amount,mintTotal) <= totalSupply);
    |
  > |        mintTotal = safeAdd(_amount, mintTotal);
    |        balances[_toAddress] = safeAdd(balances[_toAddress], _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'BlessToken':
    |
    |        mintTotal = safeAdd(_amount, mintTotal);
  > |        balances[_toAddress] = safeAdd(balances[_toAddress], _amount);
    |
    |        emit Mint(_toAddress, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'BlessToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(92)

[33mWarning[0m for LockedEther in contract 'ERC20Token':
    | * @dev see https://github.com/ethereum/EIPs/issues/20
    | */
  > |contract ERC20Token is IERC20Token, SafeMath {
    |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    | */
    |contract ERC20Token is IERC20Token, SafeMath {
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |contract ERC20Token is IERC20Token, SafeMath {
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |
    |    function transfer(address _to, uint256 _value) public returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |        require(_to != address(0));
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    | */
    |contract IERC20Token {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |contract IERC20Token {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    function balanceOf(address _owner) public constant returns (uint256 balance);
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
    |        assert(a >= b);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(balances[msg.sender] >= _value);
    |
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |        balances[_to] = safeAdd(balances[_to], _value);
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(92)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |contract SafeMath {
    |    /**
    |    * @dev constructor
  at /home/jiaming/mavs_srcs/contract@0x3c7fd6453e8207e1b6f2c87dd77394f5e667bd5b.sol(28)


