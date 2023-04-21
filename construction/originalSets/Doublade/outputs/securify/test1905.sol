Processing contract: /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol:KHToken_StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol:KHToken_StandardToken_U
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol(101)

[33mWarning[0m for LockedEther in contract 'KHToken_StandardToken':
    |} 
    |
  > |contract KHToken_StandardToken is StandardToken { 
    |    
    |    // region{fields}
  at /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken':
    |        // avoid race condition 
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0), "reset allowance to 0 before change it's value.");
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol(188)

[33mWarning[0m for LockedEther in contract 'KHToken_StandardToken_U':
    |}
    |
  > |contract KHToken_StandardToken_U is StandardToken { 
    |    
    |    // region{fields}
  at /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken_U':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken_U':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'KHToken_StandardToken_U':
    |        // avoid race condition 
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0), "reset allowance to 0 before change it's value.");
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol(188)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol(12)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        // avoid race condition 
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0), "reset allowance to 0 before change it's value.");
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a04a2036b69fd196146dd7de1353ebe47db7a31.sol(188)


