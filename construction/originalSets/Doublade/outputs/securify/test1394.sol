Processing contract: /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol:MamatToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol:Token
[33mWarning[0m for LockedEther in contract 'MamatToken':
    |}
    |
  > |contract MamatToken is Token{
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'MamatToken':
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'MamatToken':
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'MamatToken':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'MamatToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'MamatToken':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'MamatToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value); //solhint-disable-line indent, no-unused-vars
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'MamatToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'MamatToken':
    |
    |contract Token{
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) public view returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) public returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'MamatToken':
    |    mapping (address => mapping (address => uint256)) public allowed;
    |
  > |    string public name;
    |    uint8 public decimals;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'MamatToken':
    |
    |    string public name;
  > |    uint8 public decimals;
    |    string public symbol;
    |
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'MamatToken':
    |    string public name;
    |    uint8 public decimals;
  > |    string public symbol;
    |
    |    function MamatToken(
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(22)

[31mViolation[0m for UnrestrictedWrite in contract 'MamatToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        emit Transfer(0x0, _to, _value); //solhint-disable-line indent, no-unused-vars
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'MamatToken':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'MamatToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'MamatToken':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        emit Transfer(0x0, _to, _value); //solhint-disable-line indent, no-unused-vars
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'MamatToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        emit Transfer(_from, _to, _value); //solhint-disable-line indent, no-unused-vars
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'MamatToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value); //solhint-disable-line indent, no-unused-vars
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x585160af8558e14453c96223e957b2126f52d70b.sol(62)


