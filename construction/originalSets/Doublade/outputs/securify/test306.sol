Processing contract: /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol:Base
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol:SWAP
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Base':
    |}
    |
  > |contract Base {
    |    modifier only(address allowed) {
    |        require(msg.sender == allowed);
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(29)

[33mWarning[0m for LockedEther in contract 'ERC20':
    |}
    |
  > |contract ERC20 is Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function approve_fixed(address _spender, uint _currentValue, uint _value) isStartedOnly public returns (bool success) {
    |        if(allowed[msg.sender][_spender] == _currentValue){
  > |            allowed[msg.sender][_spender] = _value;
    |            Approval(msg.sender, _spender, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    function approve(address _spender, uint _value) isStartedOnly public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    function transferOwnership(address _newOwner) only(owner) public {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function acceptOwnership() only(newOwner) public {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(51)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned is Base {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) only(owner) public {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned is Base {
    |
  > |    address public owner;
    |    address newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() only(newOwner) public {
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) only(owner) public {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function acceptOwnership() only(newOwner) public {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(51)

[33mWarning[0m for LockedEther in contract 'SWAP':
    |}
    |
  > |contract SWAP is ERC20 {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'SWAP':
    |    
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'SWAP':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'SWAP':
    |        require(_value <= allowed[_from][msg.sender]);
    |    
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'SWAP':
    |    
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'SWAP':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'SWAP':
    |    function approve_fixed(address _spender, uint _currentValue, uint _value) isStartedOnly public returns (bool success) {
    |        if(allowed[msg.sender][_spender] == _currentValue){
  > |            allowed[msg.sender][_spender] = _value;
    |            Approval(msg.sender, _spender, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'SWAP':
    |
    |    function approve(address _spender, uint _value) isStartedOnly public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'SWAP':
    |    returns(bool)
    |    {
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'SWAP':
    |    {
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'SWAP':
    |
    |    function transferOwnership(address _newOwner) only(owner) public {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'SWAP':
    |    function acceptOwnership() only(newOwner) public {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'SWAP':
    |    isNotStartedOnly
    |    {
  > |        isStarted = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(149)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.24;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x14a52cf6b4f68431bd5d9524e4fcd6f41ce4ade9.sol(3)


