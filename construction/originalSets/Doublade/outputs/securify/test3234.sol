Processing contract: /home/jiaming/mavs_srcs/contract@0xd3fd0c2417e450f49200167874da542773bd116d.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3fd0c2417e450f49200167874da542773bd116d.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3fd0c2417e450f49200167874da542773bd116d.sol:STMC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3fd0c2417e450f49200167874da542773bd116d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'STMC':
    |// File: contracts/STMC.sol
    |
  > |contract STMC is IERC20, Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd3fd0c2417e450f49200167874da542773bd116d.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'STMC':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd3fd0c2417e450f49200167874da542773bd116d.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'STMC':
    |        require(value <= _allowed[from][msg.sender]);
    |
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd3fd0c2417e450f49200167874da542773bd116d.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'STMC':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = (
    |        _allowed[msg.sender][spender].add(addedValue));
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xd3fd0c2417e450f49200167874da542773bd116d.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'STMC':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = (
    |        _allowed[msg.sender][spender].sub(subtractedValue));
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xd3fd0c2417e450f49200167874da542773bd116d.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'STMC':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xd3fd0c2417e450f49200167874da542773bd116d.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'STMC':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd3fd0c2417e450f49200167874da542773bd116d.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'STMC':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3fd0c2417e450f49200167874da542773bd116d.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'STMC':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd3fd0c2417e450f49200167874da542773bd116d.sol(110)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xd3fd0c2417e450f49200167874da542773bd116d.sol(120)


