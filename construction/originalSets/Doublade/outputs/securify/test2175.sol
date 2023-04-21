Processing contract: /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol:Zerk
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Zerk':
    |
    |
  > |contract Zerk {
    |    
    |    uint public constant _totalSupply = 20000000;
  at /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'Zerk':
    |    }
    |    
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |        
  at /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'Zerk':
    |    }
    |    
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require(
    |            balances[msg.sender] >= _value
  at /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'Zerk':
    |        }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require (
    |             allowed[_from][msg.sender] >= _value
  at /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'Zerk':
    |             
    |    }
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'Zerk':
    |        return true;
    |    }
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining)
    |{
    |    return allowed[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Zerk':
    |contract Zerk {
    |    
  > |    uint public constant _totalSupply = 20000000;
    |    
    |    string public constant symbol ="ZRK";
  at /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Zerk':
    |    uint public constant _totalSupply = 20000000;
    |    
  > |    string public constant symbol ="ZRK";
    |    string public constant name ="Zerk";
    |    uint8 public constant decimals =0;
  at /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Zerk':
    |    
    |    string public constant symbol ="ZRK";
  > |    string public constant name ="Zerk";
    |    uint8 public constant decimals =0;
    |    
  at /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Zerk':
    |    string public constant symbol ="ZRK";
    |    string public constant name ="Zerk";
  > |    uint8 public constant decimals =0;
    |    
    |        
  at /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Zerk':
    |        balances[msg.sender] = _totalSupply;
    |    }
  > |    function totalSupply() constant returns (uint256 totalSupply) {
    |        return _totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol(23)

[31mViolation[0m for UnrestrictedWrite in contract 'Zerk':
    |            && _value > 0);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to,  _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'Zerk':
    |             && _value >0
    |             );
  > |             balances[_from] -= _value;
    |             balances[_to] += _value;
    |             allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'Zerk':
    |             );
    |             balances[_from] -= _value;
  > |             balances[_to] += _value;
    |             allowed[_from][msg.sender] -= _value;
    |             Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Zerk':
    |            balances[msg.sender] >= _value
    |            && _value > 0);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to,  _value);
  at /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Zerk':
    |             balances[_from] -= _value;
    |             balances[_to] += _value;
  > |             allowed[_from][msg.sender] -= _value;
    |             Transfer(_from, _to, _value);
    |             return true;
  at /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Zerk':
    |    }
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8dc67fcd39298982832f3302a9f975caa53eaec6.sol(58)


