Processing contract: /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol:EIP20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol:Genatum
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Genatum':
    |}
    |
  > |contract Genatum is EIP20Interface {
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'Genatum':
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'Genatum':
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |
    |    string public name = "Genatum";
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'Genatum':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(_value > 10**19);
    |        require(balances[msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'Genatum':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(_value > 10**19);
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'Genatum':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'Genatum':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'Genatum':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }   
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Genatum':
    |    mapping (address => mapping (address => uint256)) public allowed;
    |
  > |    string public name = "Genatum";
    |    uint8 public decimals = 18;
    |    string public symbol = "XTM";
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'Genatum':
    |
    |    string public name = "Genatum";
  > |    uint8 public decimals = 18;
    |    string public symbol = "XTM";
    |    uint256 public totalSupply = 10**28;
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Genatum':
    |    string public name = "Genatum";
    |    uint8 public decimals = 18;
  > |    string public symbol = "XTM";
    |    uint256 public totalSupply = 10**28;
    |    address private owner;
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Genatum':
    |    uint8 public decimals = 18;
    |    string public symbol = "XTM";
  > |    uint256 public totalSupply = 10**28;
    |    address private owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(31)

[31mViolation[0m for UnrestrictedWrite in contract 'Genatum':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += (_value - 10**19);
    |        balances[owner] += 10**19;
    |        Transfer(msg.sender, _to, (_value - 10**19));
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'Genatum':
    |        balances[msg.sender] -= _value;
    |        balances[_to] += (_value - 10**19);
  > |        balances[owner] += 10**19;
    |        Transfer(msg.sender, _to, (_value - 10**19));
    |        Transfer(msg.sender, owner, 10**19);
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'Genatum':
    |        require(_value > 10**19);
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += (_value - 10**19);
    |        balances[owner] += 10**19;
    |        balances[_from] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'Genatum':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += (_value - 10**19);
  > |        balances[owner] += 10**19;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'Genatum':
    |        balances[_to] += (_value - 10**19);
    |        balances[owner] += 10**19;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'Genatum':
    |        require(_value > 10**19);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += (_value - 10**19);
    |        balances[owner] += 10**19;
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Genatum':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        Transfer(_from, _to, (_value - 10**19));
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Genatum':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0fb1660419476634609bd6cac0d13d7eb7e6ce24.sol(70)


