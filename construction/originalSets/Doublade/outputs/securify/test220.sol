Processing contract: /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol:CharityCommonweal
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol:EIP20Interface
[33mWarning[0m for LockedEther in contract 'CharityCommonweal':
    |}
    |
  > |contract CharityCommonweal is EIP20Interface {
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'CharityCommonweal':
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'CharityCommonweal':
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |
    |    string public name;                   
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'CharityCommonweal':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'CharityCommonweal':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'CharityCommonweal':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'CharityCommonweal':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value); //solhint-disable-line indent, no-unused-vars
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'CharityCommonweal':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'CharityCommonweal':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'CharityCommonweal':
    |    mapping (address => mapping (address => uint256)) public allowed;
    |
  > |    string public name;                   
    |    uint8 public decimals;                
    |    string public symbol;                
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'CharityCommonweal':
    |
    |    string public name;                   
  > |    uint8 public decimals;                
    |    string public symbol;                
    |
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'CharityCommonweal':
    |    string public name;                   
    |    uint8 public decimals;                
  > |    string public symbol;                
    |
    |    function CharityCommonweal(
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(57)

[31mViolation[0m for UnrestrictedWrite in contract 'CharityCommonweal':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value); //solhint-disable-line indent, no-unused-vars
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'CharityCommonweal':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'CharityCommonweal':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCommonweal':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value); //solhint-disable-line indent, no-unused-vars
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCommonweal':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        emit Transfer(_from, _to, _value); //solhint-disable-line indent, no-unused-vars
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCommonweal':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value); //solhint-disable-line indent, no-unused-vars
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0f65c21b914ef7415c6b2e9ffebe3c0a531cd471.sol(97)


