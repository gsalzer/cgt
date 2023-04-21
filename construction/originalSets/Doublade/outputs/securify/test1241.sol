Processing contract: /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol:ERC20Burnable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol:ERC20Mintable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol:HumanPlus
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol:MinterRole
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |    _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |    _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(260)

[33mWarning[0m for LockedEther in contract 'ERC20Burnable':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract ERC20Burnable is ERC20 {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(422)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |    _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |    _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(value <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(value);
    |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _totalSupply = _totalSupply.sub(value);
  > |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      value);
    |    _burn(account, value);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(305)

[33mWarning[0m for LockedEther in contract 'ERC20Mintable':
    | * @dev ERC20 minting logic
    | */
  > |contract ERC20Mintable is ERC20, MinterRole {
    |  /**
    |   * @dev Function to mint tokens
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |    _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |    _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  function _mint(address account, uint256 value) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(value);
    |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(value);
  > |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  function remove(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  function add(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(326)

[33mWarning[0m for LockedEther in contract 'HumanPlus':
    | * `ERC20` functions.
    | */
  > |contract HumanPlus is ERC20Burnable, ERC20Mintable {
    |
    |  string public constant name = "Human Plus";
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanPlus':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanPlus':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanPlus':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |    _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanPlus':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |    _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanPlus':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanPlus':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanPlus':
    |  function _mint(address account, uint256 value) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(value);
    |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanPlus':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(value);
  > |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanPlus':
    |    require(value <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(value);
    |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanPlus':
    |
    |    _totalSupply = _totalSupply.sub(value);
  > |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanPlus':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      value);
    |    _burn(account, value);
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanPlus':
    |  function remove(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanPlus':
    |  function add(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(326)

[33mWarning[0m for LockedEther in contract 'MinterRole':
    |
    |
  > |contract MinterRole {
    |  using Roles for Roles.Role;
    |
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'MinterRole':
    |  function remove(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'MinterRole':
    |  function add(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(326)

[33mWarning[0m for LockedEther in contract 'Roles':
    | * @dev Library for managing addresses assigned to a Role.
    | */
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(316)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x4e79b8b218e3cb0e534051dcf2b6bd62c0bed063.sol(7)


