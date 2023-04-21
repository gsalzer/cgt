Processing contract: /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol:RockToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol:Token
[33mWarning[0m for LockedEther in contract 'RockToken':
    |}
    |
  > |contract RockToken is StandardToken {
    |
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(142)

[31mViolation[0m for UnrestrictedWrite in contract 'RockToken':
    |        require(transferEnabled);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'RockToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        require(transferEnabled);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'RockToken':
    |        require(transferEnabled);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'RockToken':
    |        require(balances[msg.sender] >= _value);
    |        require(transferEnabled);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'RockToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'RockToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'RockToken':
    |    function convertTokens(uint256 _amount, address _tokenReceiver) onlyMasterContract public {
    |        require(canConvertTokens);
  > |        balances[_tokenReceiver] = balances[_tokenReceiver].add(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'RockToken':
    |        require(canConvertTokens);
    |        Transfer(address(0), _address, _amount);
  > |        totalSupply = totalSupply.add(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'RockToken':
    |
    |    function stopConvertTokens() onlyOwner public {
  > |        canConvertTokens = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'RockToken':
    |    // Called by the token owner to block or unblock transfers
    |    function enableTransfers() onlyOwner public {
  > |        transferEnabled = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'RockToken':
    |    // Makes sure that the contract will have an owner
    |        require(_newOwner != address(0));
  > |        futureOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'RockToken':
    |    function claimOwnership() public {
    |        require(msg.sender == futureOwner);
  > |        contractOwner = msg.sender;
    |        futureOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'RockToken':
    |        require(msg.sender == futureOwner);
    |        contractOwner = msg.sender;
  > |        futureOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(222)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(100)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    bool transferEnabled = false;
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) view public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) view public returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(14)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(transferEnabled);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        require(transferEnabled);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(transferEnabled);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[msg.sender] >= _value);
    |        require(transferEnabled);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x106aa49295b525fcf959aa75ec3f7dcbf5352f1c.sol(87)


