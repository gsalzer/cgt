Processing contract: /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol:Virtonomi
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Virtonomi':
    |
    |// contract
  > |contract Virtonomi is ERC20Interface {
    |    string public constant symbol = "VTO";
    |    string public constant name = "Virtonomi";
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'Virtonomi':
    |    mapping(address => mapping (address => uint256)) allowed;
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |    modifier onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'Virtonomi':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'Virtonomi':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _amount) returns (bool success) {
    |        if (balances[_from] >= _amount && allowed[_from][msg.sender] >= _amount && _amount > 0 && balances[_to] + _amount > balances[_to]) {
    |            balances[_from] -= _amount;
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'Virtonomi':
    |    }
    |
  > |    function approve(address _spender, uint256 _amount) returns (bool success) {
    |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'Virtonomi':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'Virtonomi':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'Virtonomi':
    |    }
    |
  > |    function freezeAccount(address target, bool freeze) onlyOwner {
    |        require (target != owner);
    |        frozenAccount[target] = freeze;
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Virtonomi':
    |// contract
    |contract Virtonomi is ERC20Interface {
  > |    string public constant symbol = "VTO";
    |    string public constant name = "Virtonomi";
    |    uint8 public constant decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Virtonomi':
    |contract Virtonomi is ERC20Interface {
    |    string public constant symbol = "VTO";
  > |    string public constant name = "Virtonomi";
    |    uint8 public constant decimals = 8;
    |    uint256 _totalSupply = 10000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Virtonomi':
    |    string public constant symbol = "VTO";
    |    string public constant name = "Virtonomi";
  > |    uint8 public constant decimals = 8;
    |    uint256 _totalSupply = 10000000000000000;
    |
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'Virtonomi':
    |    uint256 _totalSupply = 10000000000000000;
    |
  > |    address public owner;
    |
    |    mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Virtonomi':
    |    }
    |
  > |    function totalSupply() constant returns (uint256 totalSupply) {
    |        totalSupply = _totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Virtonomi':
    |    function transfer(address _to, uint256 _amount) returns (bool success) {
    |        if (balances[msg.sender] >= _amount && _amount > 0 && balances[_to] + _amount > balances[_to]) {
  > |            balances[msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Virtonomi':
    |        if (balances[_from] >= _amount && allowed[_from][msg.sender] >= _amount && _amount > 0 && balances[_to] + _amount > balances[_to]) {
    |            balances[_from] -= _amount;
  > |            allowed[_from][msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Virtonomi':
    |
    |    function approve(address _spender, uint256 _amount) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Virtonomi':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Virtonomi':
    |    function freezeAccount(address target, bool freeze) onlyOwner {
    |        require (target != owner);
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x260d1f988c236ae11b8e628b7c8da17cf7c30b7d.sol(100)


