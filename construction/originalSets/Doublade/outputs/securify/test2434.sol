Processing contract: /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol:COFX
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'COFX':
    |}
    |
  > |contract COFX {
    |    mapping(address => uint256) public balances;
    |    mapping(address => mapping (address => uint256)) public allowed;
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'COFX':
    |
    |contract COFX {
  > |    mapping(address => uint256) public balances;
    |    mapping(address => mapping (address => uint256)) public allowed;
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'COFX':
    |contract COFX {
    |    mapping(address => uint256) public balances;
  > |    mapping(address => mapping (address => uint256)) public allowed;
    |    using SafeMath for uint256;
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'COFX':
    |    }
    |    
  > |    function setLock(bool _lock) onlyOwner public{
    |        lock = _lock;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'COFX':
    |    }
    |
  > |    function transferFrom(
    |        address _from,
    |        address _to,
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'COFX':
    |    }
    |
  > |    function balanceOf(
    |        address _owner
    |    ) public view returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(126)

[31mViolation[0m for MissingInputValidation in contract 'COFX':
    |    }
    |
  > |    function approve(
    |        address _spender,
    |        uint256 _value
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'COFX':
    |    }
    |
  > |    function allowance(
    |        address _owner,
    |        address _spender
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'COFX':
    |    mapping(address => mapping (address => uint256)) public allowed;
    |    using SafeMath for uint256;
  > |    address public owner;
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'COFX':
    |    using SafeMath for uint256;
    |    address public owner;
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'COFX':
    |    address public owner;
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'COFX':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |    uint256 private constant MAX_UINT256 = 2**256 -1 ;
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'COFX':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |    uint256 private constant MAX_UINT256 = 2**256 -1 ;
    |
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'COFX':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'COFX':
    |
    |
  > |    function transfer(
    |        address _to,
    |        uint256 _value
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'COFX':
    |        require(_from == _to || balances[_to] <= MAX_UINT256 -_value);
    |        require(allowance >= _value);
  > |        balances[_from] -= _value;
    |        balances[_to] += _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(117)

[31mViolation[0m for UnrestrictedWrite in contract 'COFX':
    |        require(allowance >= _value);
    |        balances[_from] -= _value;
  > |        balances[_to] += _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'COFX':
    |        require(balances[msg.sender] >= _value);
    |        require(msg.sender == _to || balances[_to] <= MAX_UINT256 - _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'COFX':
    |        balances[_to] += _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'COFX':
    |        uint256 _value
    |    ) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'COFX':
    |    
    |    function setLock(bool _lock) onlyOwner public{
  > |        lock = _lock;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'COFX':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'COFX':
    |        require(msg.sender == _to || balances[_to] <= MAX_UINT256 - _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(103)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x9e40ae2d6ceaf942c602b11dc581aa019c62978a.sol(4)


