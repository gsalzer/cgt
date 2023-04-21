Processing contract: /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol:YunKaiCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic, Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender].amount = balances[msg.sender].amount.sub(_value);
    |    balances[_to].amount = balances[_to].amount.add(_value);
    |    if(!isExist(_to) && _to != owner){
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(21)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.18;
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(21)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(26)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender].amount = balances[msg.sender].amount.sub(_value);
    |    balances[_to].amount = balances[_to].amount.add(_value);
    |    if(!isExist(_to) && _to != owner){
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from].amount = balances[_from].amount.sub(_value);
    |    balances[_to].amount = balances[_to].amount.add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(21)

[33mWarning[0m for LockedEther in contract 'YunKaiCoin':
    |}
    |
  > |contract YunKaiCoin is StandardToken {
    |  string public symbol;
    |  string public  name;
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'YunKaiCoin':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender].amount = balances[msg.sender].amount.sub(_value);
    |    balances[_to].amount = balances[_to].amount.add(_value);
    |    if(!isExist(_to) && _to != owner){
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'YunKaiCoin':
    |    balances[_from].amount = balances[_from].amount.sub(_value);
    |    balances[_to].amount = balances[_to].amount.add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'YunKaiCoin':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'YunKaiCoin':
    |
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'YunKaiCoin':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'YunKaiCoin':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'YunKaiCoin':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa300ac099775bb545c3e284e6a5ab3017650cb36.sol(21)


