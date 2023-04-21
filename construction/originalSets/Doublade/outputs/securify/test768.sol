Processing contract: /home/jiaming/mavs_srcs/contract@0x30e3d799a4abacde2b24fb1614fc4c2d9cfe7c95.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x30e3d799a4abacde2b24fb1614fc4c2d9cfe7c95.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x30e3d799a4abacde2b24fb1614fc4c2d9cfe7c95.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x30e3d799a4abacde2b24fb1614fc4c2d9cfe7c95.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30e3d799a4abacde2b24fb1614fc4c2d9cfe7c95.sol:Strings
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.10;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x30e3d799a4abacde2b24fb1614fc4c2d9cfe7c95.sol(3)

[31mViolation[0m for LockedEther in contract 'Strings':
    |}
    |
  > |contract Strings is ERC20, ERC223 {
    |  using SafeMath for uint;
    |     
  at /home/jiaming/mavs_srcs/contract@0x30e3d799a4abacde2b24fb1614fc4c2d9cfe7c95.sol(51)

[33mWarning[0m for UnhandledException in contract 'Strings':
    |    if(isContract(_to)) {
    |        ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |    }
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x30e3d799a4abacde2b24fb1614fc4c2d9cfe7c95.sol(154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Strings':
    |    if(isContract(_to)) {
    |        ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |    }
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x30e3d799a4abacde2b24fb1614fc4c2d9cfe7c95.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'Strings':
    |     require(_to != address(0));
    |     require(_value <= balances[msg.sender]);
  > |     balances[msg.sender] = SafeMath.sub(balances[msg.sender], _value);
    |     balances[_to] = SafeMath.add(balances[_to], _value);
    |     Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x30e3d799a4abacde2b24fb1614fc4c2d9cfe7c95.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'Strings':
    |    balances[_from] = SafeMath.sub(balances[_from], _value);
    |     balances[_to] = SafeMath.add(balances[_to], _value);
  > |     allowed[_from][msg.sender] = SafeMath.sub(allowed[_from][msg.sender], _value);
    |    Transfer(_from, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x30e3d799a4abacde2b24fb1614fc4c2d9cfe7c95.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'Strings':
    |
    |   function approve(address _spender, uint256 _value) public returns (bool) {
  > |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x30e3d799a4abacde2b24fb1614fc4c2d9cfe7c95.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'Strings':
    |
    |   function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |     allowed[msg.sender][_spender] = SafeMath.add(allowed[msg.sender][_spender], _addedValue);
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x30e3d799a4abacde2b24fb1614fc4c2d9cfe7c95.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Strings':
    |     uint oldValue = allowed[msg.sender][_spender];
    |     if (_subtractedValue > oldValue) {
  > |       allowed[msg.sender][_spender] = 0;
    |     } else {
    |       allowed[msg.sender][_spender] = SafeMath.sub(oldValue, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x30e3d799a4abacde2b24fb1614fc4c2d9cfe7c95.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'Strings':
    |       allowed[msg.sender][_spender] = 0;
    |     } else {
  > |       allowed[msg.sender][_spender] = SafeMath.sub(oldValue, _subtractedValue);
    |    }
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x30e3d799a4abacde2b24fb1614fc4c2d9cfe7c95.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'Strings':
    |        receiver.tokenFallback(msg.sender, _value, _data);
    |    }
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x30e3d799a4abacde2b24fb1614fc4c2d9cfe7c95.sol(156)


