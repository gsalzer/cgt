Processing contract: /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol:Donut
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol:ERC20Detailed
Processing contract: /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol:ERC20Mintable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol:MinterRole
Processing contract: /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Donut':
    |// File: contracts/Donut.sol
    |
  > |contract Donut is ERC20, ERC20Detailed, ERC20Mintable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(469)

[33mWarning[0m for UnrestrictedWrite in contract 'Donut':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'Donut':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'Donut':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'Donut':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'Donut':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'Donut':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'Donut':
    |  function _mint(address account, uint256 value) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(value);
    |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'Donut':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(value);
  > |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'Donut':
    |    require(value <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(value);
    |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'Donut':
    |
    |    _totalSupply = _totalSupply.sub(value);
  > |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'Donut':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      value);
    |    _burn(account, value);
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'Donut':
    |    require(!has(role, account));
    |
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'Donut':
    |    require(has(role, account));
    |
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(382)

[33mWarning[0m for LockedEther in contract 'ERC20':
    | * Originally based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract ERC20 is IERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(262)

[33mWarning[0m for LockedEther in contract 'ERC20Mintable':
    | * @dev ERC20 minting logic
    | */
  > |contract ERC20Mintable is ERC20, MinterRole {
    |  /**
    |   * @dev Function to mint tokens
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(447)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  function _mint(address account, uint256 value) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(value);
    |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(value);
  > |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(!has(role, account));
    |
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(has(role, account));
    |
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(382)

[33mWarning[0m for LockedEther in contract 'Roles':
    | * @dev Library for managing addresses assigned to a Role.
    | */
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(360)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa8f6d6be911d90782a78c52fb1b0afc4d085880f.sol(9)


