Processing contract: /home/jiaming/mavs_srcs/contract@0x4f3adf55f9a65d7d14ae3e7f4920a4d1904e39ba.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4f3adf55f9a65d7d14ae3e7f4920a4d1904e39ba.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x4f3adf55f9a65d7d14ae3e7f4920a4d1904e39ba.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x4f3adf55f9a65d7d14ae3e7f4920a4d1904e39ba.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4f3adf55f9a65d7d14ae3e7f4920a4d1904e39ba.sol:TPS
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |	function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |		if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x4f3adf55f9a65d7d14ae3e7f4920a4d1904e39ba.sol(119)

[33mWarning[0m for LockedEther in contract 'TPS':
    |}
    |
  > |contract TPS is ERC223, ERC20 {
    |    
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x4f3adf55f9a65d7d14ae3e7f4920a4d1904e39ba.sol(23)

[33mWarning[0m for UnhandledException in contract 'TPS':
    |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		ERC223ReceivingContract(_to).tokenFallback(msg.sender, _value, _data);
    |		emit Transfer(msg.sender, _to, _value, _data);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x4f3adf55f9a65d7d14ae3e7f4920a4d1904e39ba.sol(66)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TPS':
    |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		ERC223ReceivingContract(_to).tokenFallback(msg.sender, _value, _data);
    |		emit Transfer(msg.sender, _to, _value, _data);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x4f3adf55f9a65d7d14ae3e7f4920a4d1904e39ba.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'TPS':
    |			!isContract(_to)
    |		);
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4f3adf55f9a65d7d14ae3e7f4920a4d1904e39ba.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'TPS':
    |			isContract(_to)
    |		);
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		ERC223ReceivingContract(_to).tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x4f3adf55f9a65d7d14ae3e7f4920a4d1904e39ba.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'TPS':
    |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |		emit Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x4f3adf55f9a65d7d14ae3e7f4920a4d1904e39ba.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'TPS':
    |			(_value == 0) || (allowed[msg.sender][_spender] == 0)
    |		);
  > |		allowed[msg.sender][_spender] = _value;
    |		emit Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x4f3adf55f9a65d7d14ae3e7f4920a4d1904e39ba.sol(96)


