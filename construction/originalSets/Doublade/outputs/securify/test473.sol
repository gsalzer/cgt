Processing contract: /home/jiaming/mavs_srcs/contract@0x1e3fe98d1c89865b6b819bbfd532dadab3b34d2d.sol:DETToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e3fe98d1c89865b6b819bbfd532dadab3b34d2d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e3fe98d1c89865b6b819bbfd532dadab3b34d2d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DETToken':
    | */
    |
  > |contract DETToken is ERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x1e3fe98d1c89865b6b819bbfd532dadab3b34d2d.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'DETToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1e3fe98d1c89865b6b819bbfd532dadab3b34d2d.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'DETToken':
    |    require(_spender != address(0));
    |	
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1e3fe98d1c89865b6b819bbfd532dadab3b34d2d.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'DETToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1e3fe98d1c89865b6b819bbfd532dadab3b34d2d.sol(234)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x1e3fe98d1c89865b6b819bbfd532dadab3b34d2d.sol(40)


