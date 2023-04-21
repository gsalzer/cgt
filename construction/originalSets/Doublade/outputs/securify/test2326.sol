Processing contract: /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol:EIP20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol:Staro
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Staro':
    |}
    |
  > |contract Staro is EIP20Interface {
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'Staro':
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'Staro':
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |    /*
    |    NOTE:
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'Staro':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'Staro':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'Staro':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'Staro':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'Staro':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }   
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Staro':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Staro':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Roman
    |    uint8 public decimals;                //How many decimals to show.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Staro':
    |    */
    |    string public name;                   //fancy name: eg Roman
  > |    uint8 public decimals;                //How many decimals to show.
    |    string public symbol;                 //An identifier: eg SBX
    |
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Staro':
    |    string public name;                   //fancy name: eg Roman
    |    uint8 public decimals;                //How many decimals to show.
  > |    string public symbol;                 //An identifier: eg SBX
    |
    |    function Staro(
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'Staro':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'Staro':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(92)

[31mViolation[0m for UnrestrictedWrite in contract 'Staro':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Staro':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Staro':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Staro':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x974ed904f16e591adc18e751ecc74419766d14b0.sol(106)


