Processing contract: /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol:EIP20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol:TheHumanFund
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'TheHumanFund':
    |
    |
  > |contract TheHumanFund is EIP20Interface {
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'TheHumanFund':
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'TheHumanFund':
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |
    |    string public name;                  
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'TheHumanFund':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'TheHumanFund':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'TheHumanFund':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'TheHumanFund':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value); //solhint-disable-line indent, no-unused-vars
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'TheHumanFund':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'TheHumanFund':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'TheHumanFund':
    |    mapping (address => mapping (address => uint256)) public allowed;
    |
  > |    string public name;                  
    |    uint8 public decimals;                
    |    string public symbol;                
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'TheHumanFund':
    |
    |    string public name;                  
  > |    uint8 public decimals;                
    |    string public symbol;                
    |
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'TheHumanFund':
    |    string public name;                  
    |    uint8 public decimals;                
  > |    string public symbol;                
    |
    |    function TheHumanFund(
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(64)

[31mViolation[0m for UnrestrictedWrite in contract 'TheHumanFund':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value); //solhint-disable-line indent, no-unused-vars
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'TheHumanFund':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(90)

[31mViolation[0m for UnrestrictedWrite in contract 'TheHumanFund':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'TheHumanFund':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value); //solhint-disable-line indent, no-unused-vars
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'TheHumanFund':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        emit Transfer(_from, _to, _value); //solhint-disable-line indent, no-unused-vars
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'TheHumanFund':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value); //solhint-disable-line indent, no-unused-vars
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe28e8a8e140f763c65903b8640237b6f1b15e104.sol(104)


