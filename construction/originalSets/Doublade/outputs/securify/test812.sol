Processing contract: /home/jiaming/mavs_srcs/contract@0x342d47eb0eb5d36f0bf722c5151dc0b7b59917ce.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x342d47eb0eb5d36f0bf722c5151dc0b7b59917ce.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x342d47eb0eb5d36f0bf722c5151dc0b7b59917ce.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x342d47eb0eb5d36f0bf722c5151dc0b7b59917ce.sol:GST
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x342d47eb0eb5d36f0bf722c5151dc0b7b59917ce.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'GST':
    |}
    |
  > |contract GST is ERC20, ERC223 {
    |  using SafeMath for uint;
    |     
  at /home/jiaming/mavs_srcs/contract@0x342d47eb0eb5d36f0bf722c5151dc0b7b59917ce.sol(56)

[33mWarning[0m for UnhandledException in contract 'GST':
    |    if(isContract(_to)) {
    |        ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |    }
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x342d47eb0eb5d36f0bf722c5151dc0b7b59917ce.sol(159)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GST':
    |    if(isContract(_to)) {
    |        ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |    }
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x342d47eb0eb5d36f0bf722c5151dc0b7b59917ce.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'GST':
    |     require(_to != address(0));
    |     require(_value <= balances[msg.sender]);
  > |     balances[msg.sender] = SafeMath.sub(balances[msg.sender], _value);
    |     balances[_to] = SafeMath.add(balances[_to], _value);
    |     Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x342d47eb0eb5d36f0bf722c5151dc0b7b59917ce.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'GST':
    |    balances[_from] = SafeMath.sub(balances[_from], _value);
    |     balances[_to] = SafeMath.add(balances[_to], _value);
  > |     allowed[_from][msg.sender] = SafeMath.sub(allowed[_from][msg.sender], _value);
    |    Transfer(_from, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x342d47eb0eb5d36f0bf722c5151dc0b7b59917ce.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'GST':
    |
    |   function approve(address _spender, uint256 _value) public returns (bool) {
  > |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x342d47eb0eb5d36f0bf722c5151dc0b7b59917ce.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'GST':
    |
    |   function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |     allowed[msg.sender][_spender] = SafeMath.add(allowed[msg.sender][_spender], _addedValue);
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x342d47eb0eb5d36f0bf722c5151dc0b7b59917ce.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'GST':
    |     uint oldValue = allowed[msg.sender][_spender];
    |     if (_subtractedValue > oldValue) {
  > |       allowed[msg.sender][_spender] = 0;
    |     } else {
    |       allowed[msg.sender][_spender] = SafeMath.sub(oldValue, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x342d47eb0eb5d36f0bf722c5151dc0b7b59917ce.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'GST':
    |       allowed[msg.sender][_spender] = 0;
    |     } else {
  > |       allowed[msg.sender][_spender] = SafeMath.sub(oldValue, _subtractedValue);
    |    }
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x342d47eb0eb5d36f0bf722c5151dc0b7b59917ce.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'GST':
    |        receiver.tokenFallback(msg.sender, _value, _data);
    |    }
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x342d47eb0eb5d36f0bf722c5151dc0b7b59917ce.sol(161)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x342d47eb0eb5d36f0bf722c5151dc0b7b59917ce.sol(8)


