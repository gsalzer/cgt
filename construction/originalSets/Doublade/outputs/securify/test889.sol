Processing contract: /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol:DataKYC
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol:Token
[33mWarning[0m for LockedEther in contract 'DataKYC':
    |}
    |
  > |contract DataKYC is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'DataKYC':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require(_to != address(0));
    |        require(_value <= balances[_from]);
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'DataKYC':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'DataKYC':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'DataKYC':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'DataKYC':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'DataKYC':
    |
    |    /* Approves and then calls the contract code*/
  > |    function approveAndCallcode(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'DataKYC':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'DataKYC':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require(_to != address(0));
    |        require(_value <= balances[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'DataKYC':
    |    }
    |
  > |    string public name = "Data Know Your Customer";                   //fancy name: eg Simon Bucks
    |    uint8 public decimals = 18;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol = "DKYC";                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'DataKYC':
    |
    |    string public name = "Data Know Your Customer";                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals = 18;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol = "DKYC";                 //An identifier: eg SBX
    |    string public version = 'v0.1';       //dkyc 0.1 standard. Just an arbitrary versioning scheme.
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'DataKYC':
    |    string public name = "Data Know Your Customer";                   //fancy name: eg Simon Bucks
    |    uint8 public decimals = 18;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol = "DKYC";                 //An identifier: eg SBX
    |    string public version = 'v0.1';       //dkyc 0.1 standard. Just an arbitrary versioning scheme.
    |
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'DataKYC':
    |    uint8 public decimals = 18;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol = "DKYC";                 //An identifier: eg SBX
  > |    string public version = 'v0.1';       //dkyc 0.1 standard. Just an arbitrary versioning scheme.
    |
    |    address public founder; // The address of the founder
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'DataKYC':
    |    string public version = 'v0.1';       //dkyc 0.1 standard. Just an arbitrary versioning scheme.
    |
  > |    address public founder; // The address of the founder
    |
    |    function DataKYC() {
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(109)

[33mWarning[0m for UnhandledException in contract 'DataKYC':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { revert(); }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(125)

[33mWarning[0m for UnhandledException in contract 'DataKYC':
    |
    |        //Call the contract code
  > |        if(!_spender.call(_extraData)) { revert(); }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(135)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DataKYC':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { revert(); }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(125)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DataKYC':
    |
    |        //Call the contract code
  > |        if(!_spender.call(_extraData)) { revert(); }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'DataKYC':
    |        require(balances[_to] + _value > balances[_to]);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(61)

[31mViolation[0m for UnrestrictedWrite in contract 'DataKYC':
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        require(balances[_to] + _value > balances[_to]);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'DataKYC':
    |        require(balances[_to] + _value > balances[_to]);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'DataKYC':
    |        //Replace the if with this one instead.
    |        require(balances[_to] + _value > balances[_to]);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'DataKYC':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'DataKYC':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'DataKYC':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'DataKYC':
    |    /* Approves and then calls the contract code*/
    |    function approveAndCallcode(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(131)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require(_to != address(0));
    |        require(_value <= balances[_from]);
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require(_to != address(0));
    |        require(_value <= balances[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_to] + _value > balances[_to]);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(61)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        require(balances[_to] + _value > balances[_to]);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_to] + _value > balances[_to]);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //Replace the if with this one instead.
    |        require(balances[_to] + _value > balances[_to]);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d1b0d157529bd5d936719a8a5f8379afb24faa.sol(84)


