Processing contract: /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol:ERC20Detailed
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol:ERC20Mintable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol:MinterRole
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol:UFC
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
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(262)

[33mWarning[0m for LockedEther in contract 'ERC20Mintable':
    | * @dev ERC20 minting logic
    | */
  > |contract ERC20Mintable is ERC20, MinterRole {
    |  /**
    |   * @dev Function to mint tokens
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(447)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  function _mint(address account, uint256 value) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(value);
    |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(value);
  > |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(!has(role, account));
    |
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(has(role, account));
    |
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(382)

[33mWarning[0m for LockedEther in contract 'Roles':
    | * @dev Library for managing addresses assigned to a Role.
    | */
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(360)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(44)

[33mWarning[0m for LockedEther in contract 'UFC':
    | * @title UFC
    | */
  > |contract UFC is ERC20, ERC20Detailed, ERC20Mintable {
    |    
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'UFC':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'UFC':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'UFC':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'UFC':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'UFC':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'UFC':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'UFC':
    |  function _mint(address account, uint256 value) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(value);
    |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'UFC':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(value);
  > |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'UFC':
    |    require(!has(role, account));
    |
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'UFC':
    |    require(has(role, account));
    |
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d2cafcb2aba19e3a09d3e82ab91e37c77cc5dde.sol(382)


