Processing contract: /home/jiaming/mavs_srcs/contract@0x5f2c5cfeb3e752c32a9d8224854fe0b6e523d78e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f2c5cfeb3e752c32a9d8224854fe0b6e523d78e.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f2c5cfeb3e752c32a9d8224854fe0b6e523d78e.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f2c5cfeb3e752c32a9d8224854fe0b6e523d78e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f2c5cfeb3e752c32a9d8224854fe0b6e523d78e.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |* @dev Math operations with safety checks that throw on error
    |*/
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x5f2c5cfeb3e752c32a9d8224854fe0b6e523d78e.sol(26)

[31mViolation[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, ERC223 {
    |    using SafeMath for uint;
    |    
  at /home/jiaming/mavs_srcs/contract@0x5f2c5cfeb3e752c32a9d8224854fe0b6e523d78e.sol(55)

[33mWarning[0m for UnhandledException in contract 'StandardToken':
    |        if(isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x5f2c5cfeb3e752c32a9d8224854fe0b6e523d78e.sol(147)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StandardToken':
    |        if(isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x5f2c5cfeb3e752c32a9d8224854fe0b6e523d78e.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_to != address(0));
    |        require(_value <= balances[msg.sender]);
  > |        balances[msg.sender] = SafeMath.sub(balances[msg.sender], _value);
    |        balances[_to] = SafeMath.add(balances[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5f2c5cfeb3e752c32a9d8224854fe0b6e523d78e.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = SafeMath.sub(balances[_from], _value);
    |        balances[_to] = SafeMath.add(balances[_to], _value);
  > |        allowed[_from][msg.sender] = SafeMath.sub(allowed[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f2c5cfeb3e752c32a9d8224854fe0b6e523d78e.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f2c5cfeb3e752c32a9d8224854fe0b6e523d78e.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = SafeMath.add(allowed[msg.sender][_spender], _addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f2c5cfeb3e752c32a9d8224854fe0b6e523d78e.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = SafeMath.sub(oldValue, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5f2c5cfeb3e752c32a9d8224854fe0b6e523d78e.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = SafeMath.sub(oldValue, _subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5f2c5cfeb3e752c32a9d8224854fe0b6e523d78e.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x5f2c5cfeb3e752c32a9d8224854fe0b6e523d78e.sol(149)


