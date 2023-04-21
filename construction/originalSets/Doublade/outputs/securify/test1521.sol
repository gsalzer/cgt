Processing contract: /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol:GozToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol:TokenTimelock
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value > 0 && _value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(44)

[31mViolation[0m for LockedEther in contract 'GozToken':
    |}
    |
  > |contract GozToken is TokenTimelock {
    |  string public constant name = 'GOZ';
    |  string public constant symbol = 'GOZ';
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(207)

[31mViolation[0m for UnrestrictedWrite in contract 'GozToken':
    |pragma solidity ^0.4.18;
    |
  > |contract ERC20Basic {
    |  uint public totalSupply;
    |  function balanceOf(address who) public constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'GozToken':
    |          time: _releaseTime
    |      });
  > |      beneficiary[_to].push(temp);
    |    }
    |    balances[owner] = balances[owner].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'GozToken':
    |    require(_value > 0 && _value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'GozToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'GozToken':
    |
    |  function approve(address _spender, uint _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'GozToken':
    |
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'GozToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'GozToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'GozToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(123)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(123)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal pure returns (uint) {
    |    if (a == 0) return 0;
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(10)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20, BasicToken {
    |  mapping (address => mapping (address => uint)) internal allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value > 0 && _value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(99)

[31mViolation[0m for LockedEther in contract 'TokenTimelock':
    |}
    |
  > |contract TokenTimelock is StandardToken, Ownable {
    |  struct Ice {
    |    uint value;
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTimelock':
    |pragma solidity ^0.4.18;
    |
  > |contract ERC20Basic {
    |  uint public totalSupply;
    |  function balanceOf(address who) public constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTimelock':
    |          time: _releaseTime
    |      });
  > |      beneficiary[_to].push(temp);
    |    }
    |    balances[owner] = balances[owner].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelock':
    |    require(_value > 0 && _value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelock':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelock':
    |
    |  function approve(address _spender, uint _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelock':
    |
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelock':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelock':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelock':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x60c3dec97ceec639a83a5729835b577684287369.sol(123)


