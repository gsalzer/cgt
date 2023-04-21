Processing contract: /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol:AEToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol:HumanStandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol:PrefilledToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol:Token
[33mWarning[0m for LockedEther in contract 'AEToken':
    |}
    |
  > |contract AEToken is PrefilledToken {
    |
    |  // Date when the tokens won't be transferable anymore
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(220)

[31mViolation[0m for MissingInputValidation in contract 'AEToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'AEToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'AEToken':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'AEToken':
    |  }
    |
  > |  function approve(address _spender, uint256 _value) returns (bool success) {
    |		assert(prefilled);
    |
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(203)

[31mViolation[0m for MissingInputValidation in contract 'AEToken':
    |  }
    |
  > |  function transfer(address _to, uint256 _value) only_transferable returns (bool success) {
    |    return super.transfer(_to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(239)

[31mViolation[0m for MissingInputValidation in contract 'AEToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) only_transferable returns (bool success) {
    |    return super.transferFrom(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(243)

[33mWarning[0m for MissingInputValidation in contract 'AEToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'AEToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'AEToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'AEToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'AEToken':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'AEToken':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H0.1';       //human 0.1 standard. Just an arbitrary versioning scheme.
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'AEToken':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H0.1';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'AEToken':
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  > |    string public version = 'H0.1';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
    |    function HumanStandardToken(
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'AEToken':
    |contract PrefilledToken is HumanStandardToken {
    |
  > |  bool public prefilled = false;
    |  address public creator = msg.sender;
    |
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'AEToken':
    |
    |  bool public prefilled = false;
  > |  address public creator = msg.sender;
    |
    |  function prefill (address[] _addresses, uint[] _values)
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'AEToken':
    |  }
    |
  > |  function launch ()
    |    only_not_prefilled
    |    only_creator
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'AEToken':
    |   */
    |
  > |  function transfer(address _to, uint256 _value) returns (bool success) {
    |		assert(prefilled);
    |
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(191)

[33mWarning[0m for MissingInputValidation in contract 'AEToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |		assert(prefilled);
    |
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'AEToken':
    |
    |  // Date when the tokens won't be transferable anymore
  > |  uint public transferableUntil;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(223)

[33mWarning[0m for UnhandledException in contract 'AEToken':
    |        // it is assumed that when does this that the call *should* succeed, otherwise
    |        // one would use vanilla approve instead.
  > |				require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(147)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AEToken':
    |        // it is assumed that when does this that the call *should* succeed, otherwise
    |        // one would use vanilla approve instead.
  > |				require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'AEToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |				require(balances[msg.sender] >= _value && _value >= 0);
  > |				balances[msg.sender] -= _value;
    |				balances[_to] += _value;
    |				Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'AEToken':
    |				require(balances[msg.sender] >= _value && _value >= 0);
    |				balances[msg.sender] -= _value;
  > |				balances[_to] += _value;
    |				Transfer(msg.sender, _to, _value);
    |				return true;
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'AEToken':
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |				require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value >= 0);
  > |				balances[_to] += _value;
    |				balances[_from] -= _value;
    |				allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'AEToken':
    |				require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value >= 0);
    |				balances[_to] += _value;
  > |				balances[_from] -= _value;
    |				allowed[_from][msg.sender] -= _value;
    |				Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'AEToken':
    |				balances[_to] += _value;
    |				balances[_from] -= _value;
  > |				allowed[_from][msg.sender] -= _value;
    |				Transfer(_from, _to, _value);
    |				return true;
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'AEToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'AEToken':
    |        total -= balances[who];
    |
  > |        balances[who] = val;
    |        total += val;
    |				Transfer(0x0, who, val);
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(170)

[31mViolation[0m for UnrestrictedWrite in contract 'AEToken':
    |    }
    |
  > |    totalSupply = total;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'AEToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |				require(balances[msg.sender] >= _value && _value >= 0);
  > |				balances[msg.sender] -= _value;
    |				balances[_to] += _value;
    |				Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'AEToken':
    |				balances[_to] += _value;
    |				balances[_from] -= _value;
  > |				allowed[_from][msg.sender] -= _value;
    |				Transfer(_from, _to, _value);
    |				return true;
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'AEToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'AEToken':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'AEToken':
    |    only_creator
    |  {
  > |    prefilled = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(183)

[33mWarning[0m for LockedEther in contract 'HumanStandardToken':
    |
    |
  > |contract HumanStandardToken is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H0.1';       //human 0.1 standard. Just an arbitrary versioning scheme.
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H0.1';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  > |    string public version = 'H0.1';       //human 0.1 standard. Just an arbitrary versioning scheme.
    |
    |    function HumanStandardToken(
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(121)

[33mWarning[0m for UnhandledException in contract 'HumanStandardToken':
    |        // it is assumed that when does this that the call *should* succeed, otherwise
    |        // one would use vanilla approve instead.
  > |				require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(147)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HumanStandardToken':
    |        // it is assumed that when does this that the call *should* succeed, otherwise
    |        // one would use vanilla approve instead.
  > |				require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |				require(balances[msg.sender] >= _value && _value >= 0);
    |				balances[msg.sender] -= _value;
  > |				balances[_to] += _value;
    |				Transfer(msg.sender, _to, _value);
    |				return true;
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |				require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value >= 0);
  > |				balances[_to] += _value;
    |				balances[_from] -= _value;
    |				allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |				require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value >= 0);
    |				balances[_to] += _value;
  > |				balances[_from] -= _value;
    |				allowed[_from][msg.sender] -= _value;
    |				Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |				require(balances[msg.sender] >= _value && _value >= 0);
  > |				balances[msg.sender] -= _value;
    |				balances[_to] += _value;
    |				Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |				balances[_to] += _value;
    |				balances[_from] -= _value;
  > |				allowed[_from][msg.sender] -= _value;
    |				Transfer(_from, _to, _value);
    |				return true;
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(138)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |.*/
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(16)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |				require(balances[msg.sender] >= _value && _value >= 0);
    |				balances[msg.sender] -= _value;
  > |				balances[_to] += _value;
    |				Transfer(msg.sender, _to, _value);
    |				return true;
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |				require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value >= 0);
  > |				balances[_to] += _value;
    |				balances[_from] -= _value;
    |				allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |				require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value >= 0);
    |				balances[_to] += _value;
  > |				balances[_from] -= _value;
    |				allowed[_from][msg.sender] -= _value;
    |				Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |				require(balances[msg.sender] >= _value && _value >= 0);
  > |				balances[msg.sender] -= _value;
    |				balances[_to] += _value;
    |				Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |				balances[_to] += _value;
    |				balances[_from] -= _value;
  > |				allowed[_from][msg.sender] -= _value;
    |				Transfer(_from, _to, _value);
    |				return true;
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2fdfaf17ccc5cbcdaa85be9462105fdafffab63d.sol(89)


