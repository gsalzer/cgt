Processing contract: /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol:BToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol:ERC20Burnable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol:ERC20Detailed
Processing contract: /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BToken':
    |
    |
  > |contract BToken is ERC20Burnable, ERC20Detailed {
    |  uint constant private INITIAL_SUPPLY = 10 * 1e24;
    |  
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(385)

[33mWarning[0m for UnrestrictedWrite in contract 'BToken':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'BToken':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'BToken':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'BToken':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'BToken':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'BToken':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'BToken':
    |    require(value <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(value);
    |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'BToken':
    |
    |    _totalSupply = _totalSupply.sub(value);
  > |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'BToken':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      value);
    |    _burn(account, value);
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(310)

[33mWarning[0m for LockedEther in contract 'ERC20':
    | * Originally based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract ERC20 is IERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(265)

[33mWarning[0m for LockedEther in contract 'ERC20Burnable':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract ERC20Burnable is ERC20 {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(value <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(value);
    |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _totalSupply = _totalSupply.sub(value);
  > |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      value);
    |    _burn(account, value);
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(310)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe0dd75da07c10d0a904e79e9ac95b360a06a4bb9.sol(48)


