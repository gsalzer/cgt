Processing contract: /home/jiaming/mavs_srcs/contract@0x84d6698181b3da41b220cb63ae64ded1bff7822e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x84d6698181b3da41b220cb63ae64ded1bff7822e.sol:RCCTToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x84d6698181b3da41b220cb63ae64ded1bff7822e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'RCCTToken':
    | */
    |
  > |contract RCCTToken is ERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x84d6698181b3da41b220cb63ae64ded1bff7822e.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'RCCTToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x84d6698181b3da41b220cb63ae64ded1bff7822e.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'RCCTToken':
    |    require(_spender != address(0));
    |	
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x84d6698181b3da41b220cb63ae64ded1bff7822e.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'RCCTToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x84d6698181b3da41b220cb63ae64ded1bff7822e.sol(234)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x84d6698181b3da41b220cb63ae64ded1bff7822e.sol(40)


