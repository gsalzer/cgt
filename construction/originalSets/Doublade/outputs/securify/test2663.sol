Processing contract: /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol:AltaiInternationalCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AltaiInternationalCoin':
    |}
    |
  > |contract AltaiInternationalCoin {
    |    mapping(address => uint256) public balances;
    |    mapping(address => mapping (address => uint256)) public allowed;
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'AltaiInternationalCoin':
    |
    |contract AltaiInternationalCoin {
  > |    mapping(address => uint256) public balances;
    |    mapping(address => mapping (address => uint256)) public allowed;
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'AltaiInternationalCoin':
    |contract AltaiInternationalCoin {
    |    mapping(address => uint256) public balances;
  > |    mapping(address => mapping (address => uint256)) public allowed;
    |    using SafeMath for uint256;
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'AltaiInternationalCoin':
    |    }
    |    
  > |    function setLock(bool _lock) onlyOwner public{
    |        lock = _lock;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'AltaiInternationalCoin':
    |    }
    |
  > |    function transferFrom(
    |        address _from,
    |        address _to,
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'AltaiInternationalCoin':
    |    }
    |
  > |    function balanceOf(
    |        address _owner
    |    ) public view returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(129)

[31mViolation[0m for MissingInputValidation in contract 'AltaiInternationalCoin':
    |    }
    |
  > |    function approve(
    |        address _spender,
    |        uint256 _value
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'AltaiInternationalCoin':
    |    }
    |
  > |    function allowance(
    |        address _owner,
    |        address _spender
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'AltaiInternationalCoin':
    |    mapping(address => mapping (address => uint256)) public allowed;
    |    using SafeMath for uint256;
  > |    address public owner;
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'AltaiInternationalCoin':
    |    using SafeMath for uint256;
    |    address public owner;
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'AltaiInternationalCoin':
    |    address public owner;
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'AltaiInternationalCoin':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'AltaiInternationalCoin':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    uint256 private constant MAX_UINT256 = 2**256 -1 ;
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'AltaiInternationalCoin':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'AltaiInternationalCoin':
    |    }
    |
  > |    function transfer(
    |        address _to,
    |        uint256 _value
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'AltaiInternationalCoin':
    |        require(_from == _to || balances[_to] <= MAX_UINT256 -_value);
    |        require(allowance >= _value);
  > |        balances[_from] -= _value;
    |        balances[_to] += _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'AltaiInternationalCoin':
    |        require(allowance >= _value);
    |        balances[_from] -= _value;
  > |        balances[_to] += _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'AltaiInternationalCoin':
    |        require(balances[msg.sender] >= _value);
    |        require(msg.sender == _to || balances[_to] <= MAX_UINT256 - _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'AltaiInternationalCoin':
    |        balances[_to] += _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'AltaiInternationalCoin':
    |        uint256 _value
    |    ) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'AltaiInternationalCoin':
    |    
    |    function setLock(bool _lock) onlyOwner public{
  > |        lock = _lock;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'AltaiInternationalCoin':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'AltaiInternationalCoin':
    |        require(msg.sender == _to || balances[_to] <= MAX_UINT256 - _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(106)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    | 
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xadd9e3d2b2f202eb226fceb47a3c38bddbf6950b.sol(5)


