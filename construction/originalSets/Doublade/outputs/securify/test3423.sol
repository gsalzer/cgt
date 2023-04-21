Processing contract: /home/jiaming/mavs_srcs/contract@0xe0228936b4f4c79899a7f7cac3ba0bc8f89b2842.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe0228936b4f4c79899a7f7cac3ba0bc8f89b2842.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe0228936b4f4c79899a7f7cac3ba0bc8f89b2842.sol:StudentCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe0228936b4f4c79899a7f7cac3ba0bc8f89b2842.sol(18)

[33mWarning[0m for DAOConstantGas in contract 'StudentCoin':
    |        balances[msg.sender] = balances[msg.sender].add(tokens);
    |        
  > |        owner.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe0228936b4f4c79899a7f7cac3ba0bc8f89b2842.sol(98)

[33mWarning[0m for LockedEther in contract 'StudentCoin':
    |}
    |
  > |contract StudentCoin is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xe0228936b4f4c79899a7f7cac3ba0bc8f89b2842.sol(64)

[33mWarning[0m for UnhandledException in contract 'StudentCoin':
    |        balances[msg.sender] = balances[msg.sender].add(tokens);
    |        
  > |        owner.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe0228936b4f4c79899a7f7cac3ba0bc8f89b2842.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'StudentCoin':
    |        
    |        uint256 tokens = msg.value.mul(RATE);
  > |        balances[msg.sender] = balances[msg.sender].add(tokens);
    |        
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xe0228936b4f4c79899a7f7cac3ba0bc8f89b2842.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'StudentCoin':
    |           && _value > 0
    |        );
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe0228936b4f4c79899a7f7cac3ba0bc8f89b2842.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'StudentCoin':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe0228936b4f4c79899a7f7cac3ba0bc8f89b2842.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'StudentCoin':
    |    
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe0228936b4f4c79899a7f7cac3ba0bc8f89b2842.sol(134)


