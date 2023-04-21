Processing contract: /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol:ERC20Burnable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol:ERC20Detailed
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20':
    | * Originally based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract ERC20 is IERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(303)

[33mWarning[0m for LockedEther in contract 'ERC20Burnable':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract ERC20Burnable is ERC20 {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(value <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(value);
    |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _totalSupply = _totalSupply.sub(value);
  > |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      value);
    |    _burn(account, value);
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(348)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(85)

[33mWarning[0m for LockedEther in contract 'Token':
    |
    |
  > |contract Token is ERC20Detailed, ERC20Burnable {
    |    string public name = "GGCOIN";
    |    string public symbol = "GGC";
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(390)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    require(value <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(value);
    |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    _totalSupply = _totalSupply.sub(value);
  > |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      value);
    |    _burn(account, value);
  at /home/jiaming/mavs_srcs/contract@0x7f969c4d388ca0ae39a4fddb1a6f89878ca2fbf8.sol(348)


