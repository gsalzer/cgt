Processing contract: /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol:EIP20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol:Suren3Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Suren3Token':
    |}
    |
  > |contract Suren3Token is EIP20Interface {
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'Suren3Token':
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'Suren3Token':
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |    /*
    |    NOTE:
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'Suren3Token':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'Suren3Token':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'Suren3Token':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'Suren3Token':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value); //solhint-disable-line indent, no-unused-vars
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'Suren3Token':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'Suren3Token':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Suren3Token':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Suren3Token':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show.
    |    string public symbol;                 //An identifier: eg SBX
    |
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Suren3Token':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show.
  > |    string public symbol;                 //An identifier: eg SBX
    |
    |    function Suren3Token() public {
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'Suren3Token':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value); //solhint-disable-line indent, no-unused-vars
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'Suren3Token':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'Suren3Token':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Suren3Token':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value); //solhint-disable-line indent, no-unused-vars
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Suren3Token':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        emit Transfer(_from, _to, _value); //solhint-disable-line indent, no-unused-vars
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Suren3Token':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value); //solhint-disable-line indent, no-unused-vars
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x192a24522b81b69b4a3f1d9e4bc7dd2fb06c7152.sol(102)


