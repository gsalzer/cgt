Processing contract: /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol:AgrocoinToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol:ERC20Burnable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol:ERC20Detailed
Processing contract: /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AgrocoinToken':
    |// File: contracts/AgrocoinToken.sol
    |
  > |contract AgrocoinToken is Ownable, ERC20Burnable, ERC20Detailed {
    |  string internal NAME = 'Agrocoin';
    |  string internal SYMBOL = 'AGRO';
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(458)

[33mWarning[0m for UnrestrictedWrite in contract 'AgrocoinToken':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'AgrocoinToken':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'AgrocoinToken':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'AgrocoinToken':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'AgrocoinToken':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'AgrocoinToken':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'AgrocoinToken':
    |    require(value <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(value);
    |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'AgrocoinToken':
    |
    |    _totalSupply = _totalSupply.sub(value);
  > |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'AgrocoinToken':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      value);
    |    _burn(account, value);
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'AgrocoinToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'AgrocoinToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(75)

[33mWarning[0m for LockedEther in contract 'ERC20':
    | * Originally based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract ERC20 is IERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(338)

[33mWarning[0m for LockedEther in contract 'ERC20Burnable':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract ERC20Burnable is ERC20 {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(value <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(value);
    |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _totalSupply = _totalSupply.sub(value);
  > |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      value);
    |    _burn(account, value);
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(383)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x1fd27f0cfc6f273b87a5e0f6fcf063422e7bcd6a.sol(120)


