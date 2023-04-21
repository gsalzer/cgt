Processing contract: /home/jiaming/mavs_srcs/contract@0x9e5fa9927ac3c06046ae6c40e032b8d26195ed7f.sol:BroFistCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9e5fa9927ac3c06046ae6c40e032b8d26195ed7f.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x9e5fa9927ac3c06046ae6c40e032b8d26195ed7f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BroFistCoin':
    |        _totalSupply = _totalSupply.add(tokens);
    |        
  > |        owner.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9e5fa9927ac3c06046ae6c40e032b8d26195ed7f.sol(129)

[33mWarning[0m for LockedEther in contract 'BroFistCoin':
    |
    |
  > |contract BroFistCoin is IERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x9e5fa9927ac3c06046ae6c40e032b8d26195ed7f.sol(66)

[33mWarning[0m for UnhandledException in contract 'BroFistCoin':
    |        _totalSupply = _totalSupply.add(tokens);
    |        
  > |        owner.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9e5fa9927ac3c06046ae6c40e032b8d26195ed7f.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'BroFistCoin':
    |        uint256 tokens = msg.value.mul(RATE); 
    |        tokens = applyBonus(tokens); 
  > |        balances[msg.sender] = balances[msg.sender].add(tokens);
    |        _totalSupply = _totalSupply.add(tokens);
    |        
  at /home/jiaming/mavs_srcs/contract@0x9e5fa9927ac3c06046ae6c40e032b8d26195ed7f.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'BroFistCoin':
    |            && _value > 0
    |        );
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9e5fa9927ac3c06046ae6c40e032b8d26195ed7f.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'BroFistCoin':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9e5fa9927ac3c06046ae6c40e032b8d26195ed7f.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'BroFistCoin':
    |    
    |    function approve(address _spender, uint256 _value) returns (bool success){
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9e5fa9927ac3c06046ae6c40e032b8d26195ed7f.sol(165)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x9e5fa9927ac3c06046ae6c40e032b8d26195ed7f.sol(22)


