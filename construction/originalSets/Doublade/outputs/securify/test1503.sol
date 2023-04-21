Processing contract: /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol:PabloStandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol:PabloToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol:PabloTokenBase
[33mWarning[0m for LockedEther in contract 'PabloStandardToken':
    |}
    |
  > |contract PabloStandardToken is PabloTokenBase {
    |
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'PabloStandardToken':
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'PabloStandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'PabloStandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'PabloStandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'PabloStandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'PabloStandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(16)

[31mViolation[0m for UnrestrictedWrite in contract 'PabloStandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(61)

[31mViolation[0m for UnrestrictedWrite in contract 'PabloStandardToken':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'PabloStandardToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'PabloStandardToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'PabloStandardToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'PabloStandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(85)

[33mWarning[0m for LockedEther in contract 'PabloToken':
    |}
    |
  > |contract PabloToken is PabloStandardToken {
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'PabloToken':
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'PabloToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'PabloToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'PabloToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'PabloToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'PabloToken':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'PabloToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'PabloToken':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;
    |    uint8 public decimals;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'PabloToken':
    |    */
    |    string public name;
  > |    uint8 public decimals;
    |    string public symbol;
    |    string public version = 'H0.1.1';       //human 0.1 standard + applied blockchain first patch (H0.1.1)
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'PabloToken':
    |    string public name;
    |    uint8 public decimals;
  > |    string public symbol;
    |    string public version = 'H0.1.1';       //human 0.1 standard + applied blockchain first patch (H0.1.1)
    |
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'PabloToken':
    |    uint8 public decimals;
    |    string public symbol;
  > |    string public version = 'H0.1.1';       //human 0.1 standard + applied blockchain first patch (H0.1.1)
    |
    |     function PabloToken() public {
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(111)

[33mWarning[0m for UnhandledException in contract 'PabloToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed when one does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(131)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PabloToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed when one does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'PabloToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(61)

[31mViolation[0m for UnrestrictedWrite in contract 'PabloToken':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'PabloToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'PabloToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'PabloToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'PabloToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'PabloToken':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x5fd23309e927f1b9125c695049b93641e33872cc.sol(125)


