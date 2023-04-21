Processing contract: /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol:ERC20Burnable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol:ERC20Mintable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol:ETHER_CASH
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol:MinterRole
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |    _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |    _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(260)

[33mWarning[0m for LockedEther in contract 'ERC20Burnable':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract ERC20Burnable is ERC20 {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(422)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |    _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |    _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(value <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(value);
    |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _totalSupply = _totalSupply.sub(value);
  > |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      value);
    |    _burn(account, value);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(305)

[33mWarning[0m for LockedEther in contract 'ERC20Mintable':
    | * @dev ERC20 minting logic
    | */
  > |contract ERC20Mintable is ERC20, MinterRole {
    |  /**
    |   * @dev Function to mint tokens
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |    _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |    _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  function _mint(address account, uint256 value) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(value);
    |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(value);
  > |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  function remove(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  function add(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(326)

[33mWarning[0m for LockedEther in contract 'ETHER_CASH':
    | * `ERC20` functions.
    | */
  > |contract ETHER_CASH is ERC20Burnable, ERC20Mintable {
    |
    |  string public constant name = "ETHER CASH";
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHER_CASH':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHER_CASH':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHER_CASH':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |    _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHER_CASH':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |    _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHER_CASH':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHER_CASH':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHER_CASH':
    |  function _mint(address account, uint256 value) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(value);
    |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHER_CASH':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(value);
  > |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHER_CASH':
    |    require(value <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(value);
    |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHER_CASH':
    |
    |    _totalSupply = _totalSupply.sub(value);
  > |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHER_CASH':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      value);
    |    _burn(account, value);
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHER_CASH':
    |  function remove(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHER_CASH':
    |  function add(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(326)

[33mWarning[0m for LockedEther in contract 'MinterRole':
    |
    |
  > |contract MinterRole {
    |  using Roles for Roles.Role;
    |
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'MinterRole':
    |  function remove(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'MinterRole':
    |  function add(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(326)

[33mWarning[0m for LockedEther in contract 'Roles':
    | * @dev Library for managing addresses assigned to a Role.
    | */
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(316)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x70e14cd4d6e71775580124c139df842b11c3ac3b.sol(7)


