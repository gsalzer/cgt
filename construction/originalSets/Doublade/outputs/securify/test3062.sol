Processing contract: /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol:ChinaDreamCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol:ERC223Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ChinaDreamCoin':
    |}
    |
  > |contract ChinaDreamCoin is ERC223Interface, Pausable {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(188)

[33mWarning[0m for UnhandledException in contract 'ChinaDreamCoin':
    |        if(isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(262)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ChinaDreamCoin':
    |        if(isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaDreamCoin':
    |        require(!frozenAccount[_to]);
    |        require(!frozenAccount[msg.sender]);
  > |        balances[msg.sender] = SafeMath.sub(balances[msg.sender], _value);
    |        balances[_to] = SafeMath.add(balances[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaDreamCoin':
    |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaDreamCoin':
    |        balances[_from] = SafeMath.sub(balances[_from], _value);
    |        balances[_to] = SafeMath.add(balances[_to], _value);
  > |        allowed[_from][msg.sender] = SafeMath.sub(allowed[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaDreamCoin':
    |    returns (bool) 
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaDreamCoin':
    |    returns (bool) 
    |    {
  > |        allowed[msg.sender][_spender] = SafeMath.add(allowed[msg.sender][_spender], _addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaDreamCoin':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = SafeMath.sub(oldValue, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaDreamCoin':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = SafeMath.sub(oldValue, _subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaDreamCoin':
    |            emit Transfer(msg.sender, addresses[i], amount, empty);
    |        }
  > |        balances[msg.sender] = balances[msg.sender].sub(totalAmount);
    |        
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaDreamCoin':
    |            emit Transfer(msg.sender, addresses[i], amounts[i], empty);
    |        }
  > |        balances[msg.sender] = balances[msg.sender].sub(totalAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(388)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaDreamCoin':
    |            emit Transfer(addresses[j], msg.sender, amounts[j], empty);
    |        }
  > |        balances[msg.sender] = balances[msg.sender].add(totalAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaDreamCoin':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaDreamCoin':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaDreamCoin':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaDreamCoin':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaDreamCoin':
    |    onlyOwner
    |    {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(234)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(89)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() public onlyOwner whenNotPaused {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() public onlyOwner whenPaused {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(133)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xc860ab73f8ac50e433808bca53c0618ee5359478.sol(142)


