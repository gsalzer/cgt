Processing contract: /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol:ERC20Burnable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol:ERC20Detailed
Processing contract: /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol:ERC20Mintable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol:ERC20Pausable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol:MinterRole
Processing contract: /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol:NETToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol:Pausable
Processing contract: /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol:PauserRole
Processing contract: /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(262)

[33mWarning[0m for LockedEther in contract 'ERC20Burnable':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract ERC20Burnable is ERC20 {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(value <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(value);
    |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _totalSupply = _totalSupply.sub(value);
  > |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      value);
    |    _burn(account, value);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(307)

[33mWarning[0m for LockedEther in contract 'ERC20Mintable':
    | * @dev ERC20 minting logic
    | */
  > |contract ERC20Mintable is ERC20, MinterRole {
    |  /**
    |   * @dev Function to mint tokens
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  function _mint(address account, uint256 value) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(value);
    |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(value);
  > |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(!has(role, account));
    |
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(has(role, account));
    |
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(408)

[33mWarning[0m for LockedEther in contract 'ERC20Pausable':
    | * @dev ERC20 modified with pausable transfers.
    | **/
  > |contract ERC20Pausable is ERC20, Pausable {
    |
    |  function transfer(
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(597)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(!has(role, account));
    |
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(has(role, account));
    |
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(408)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |   */
    |  function pause() public onlyPauser whenNotPaused {
  > |    _paused = true;
    |    emit Paused(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(578)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |   */
    |  function unpause() public onlyPauser whenPaused {
  > |    _paused = false;
    |    emit Unpaused(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(586)

[33mWarning[0m for LockedEther in contract 'NETToken':
    |// File: contracts/NETToken.sol
    |
  > |contract NETToken is ERC20Detailed, ERC20Pausable, ERC20Mintable, ERC20Burnable {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(658)

[33mWarning[0m for UnrestrictedWrite in contract 'NETToken':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'NETToken':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'NETToken':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'NETToken':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'NETToken':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'NETToken':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'NETToken':
    |  function _mint(address account, uint256 value) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(value);
    |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'NETToken':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(value);
  > |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'NETToken':
    |    require(value <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(value);
    |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'NETToken':
    |
    |    _totalSupply = _totalSupply.sub(value);
  > |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'NETToken':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      value);
    |    _burn(account, value);
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'NETToken':
    |    require(!has(role, account));
    |
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'NETToken':
    |    require(has(role, account));
    |
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(408)

[33mWarning[0m for UnrestrictedWrite in contract 'NETToken':
    |   */
    |  function pause() public onlyPauser whenNotPaused {
  > |    _paused = true;
    |    emit Paused(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(578)

[33mWarning[0m for UnrestrictedWrite in contract 'NETToken':
    |   */
    |  function unpause() public onlyPauser whenPaused {
  > |    _paused = false;
    |    emit Unpaused(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(586)

[33mWarning[0m for LockedEther in contract 'Roles':
    | * @dev Library for managing addresses assigned to a Role.
    | */
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(386)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x038886d16ed8591636a7994290965e22666975a3.sol(9)


