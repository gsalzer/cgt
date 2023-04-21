Processing contract: /home/jiaming/mavs_srcs/contract@0x3edd235c3e840c1f29286b2e39370a255c7b6fdb.sol:CMBToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3edd235c3e840c1f29286b2e39370a255c7b6fdb.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3edd235c3e840c1f29286b2e39370a255c7b6fdb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CMBToken':
    |
    |
  > |contract CMBToken is IERC20 {
    |
    |using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x3edd235c3e840c1f29286b2e39370a255c7b6fdb.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'CMBToken':
    |		&& _value > 0
    |	);
  > |	balances[msg.sender] = balances[msg.sender].sub(_value);
    |	balances [_to] = balances[_to].add(_value);
    |	Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3edd235c3e840c1f29286b2e39370a255c7b6fdb.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'CMBToken':
    |	balances[_from] = balances[msg.sender].sub(_value);
    |	balances[_to] = balances[_to].add(_value);
  > |	allowed[_from][msg.sender] = balances[msg.sender].sub(_value);
    |	Transfer(_from, _to, _value);
    |	return true;
  at /home/jiaming/mavs_srcs/contract@0x3edd235c3e840c1f29286b2e39370a255c7b6fdb.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'CMBToken':
    |
    |function approve(address _spender, uint256 _value) returns (bool success) {
  > |	allowed[msg.sender][_spender] = _value;
    |	Approval(msg.sender, _spender, _value);
    |	return true;	
  at /home/jiaming/mavs_srcs/contract@0x3edd235c3e840c1f29286b2e39370a255c7b6fdb.sol(117)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x3edd235c3e840c1f29286b2e39370a255c7b6fdb.sol(17)


