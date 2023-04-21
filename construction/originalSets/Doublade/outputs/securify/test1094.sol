Processing contract: /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |//----X-----
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol(98)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// SafeMath library
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol(52)

[31mViolation[0m for LockedEther in contract 'StandardToken':
    |
    |// standard token contract 
  > |contract StandardToken is ERC20, ERC223, Ownable {
    |  using SafeMath for uint;
    |     
  at /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol(105)

[33mWarning[0m for UnhandledException in contract 'StandardToken':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        emit Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StandardToken':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        emit Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   function transfer(address _to, uint256 _value) public returns (bool) {
    |     require(_to != address(0));
  > |     balances[msg.sender] = SafeMath.sub(balances[msg.sender], _value);
    |     balances[_to] = SafeMath.add(balances[_to], _value);
    |     Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = SafeMath.sub(balances[_from], _value);
    |     balances[_to] = SafeMath.add(balances[_to], _value);
  > |     allowed[_from][msg.sender] = SafeMath.sub(allowed[_from][msg.sender], _value);
    |    Transfer(_from, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |   function approve(address _spender, uint256 _value) public returns (bool) {
  > |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |   function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |     allowed[msg.sender][_spender] = SafeMath.add(allowed[msg.sender][_spender], _addedValue);
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     uint oldValue = allowed[msg.sender][_spender];
    |     if (_subtractedValue > oldValue) {
  > |       allowed[msg.sender][_spender] = 0;
    |     } else {
    |       allowed[msg.sender][_spender] = SafeMath.sub(oldValue, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |       allowed[msg.sender][_spender] = 0;
    |     } else {
  > |       allowed[msg.sender][_spender] = SafeMath.sub(oldValue, _subtractedValue);
    |    }
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        }
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        if(codeLength>0) {
  at /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x449c640b6c7fce4f8ad2e3dcd900d13be40174af.sol(98)


