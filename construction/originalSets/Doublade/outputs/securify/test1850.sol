Processing contract: /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol:SunPower
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipRenounced(address indexed previousOwner);
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(48)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Paused();
    |  event Unpaused();
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipRenounced(address indexed previousOwner);
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpaused();
    |
  > |  bool public paused = false;
    |
    |  modifier whenNotPaused() {
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function pause() public onlyOwner whenNotPaused {
    |    paused = true;
    |    emit Paused();
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function unpause() public onlyOwner whenPaused {
    |    paused = false;
    |    emit Unpaused();
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Paused();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpaused();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(76)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  
    |  function sub(uint256 _a, uint256 _b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(81)

[33mWarning[0m for LockedEther in contract 'SunPower':
    |}
    |
  > |contract SunPower is ERC20, Pausable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'SunPower':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'SunPower':
    |    require(_spender != address(0));
    |    require(allowed[msg.sender][_spender] ==_fromValue);
  > |    allowed[msg.sender][_spender] = _toValue;
    |    emit Approval(msg.sender, _spender, _toValue);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'SunPower':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'SunPower':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'SunPower':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'SunPower':
    |
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Paused();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'SunPower':
    |
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpaused();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7659c6c0e62ea050434ce9b5a687d5259eb3c7f3.sol(76)


