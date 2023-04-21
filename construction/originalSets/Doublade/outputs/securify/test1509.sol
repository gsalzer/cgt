Processing contract: /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol:ERC20Burnable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol:ERC20Detailed
Processing contract: /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol:ERC20Mintable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol:MinterRole
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol:XRT
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
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(to != address(0));
    |
  > |    _balances[msg.sender] = _balances[msg.sender].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    emit Transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(254)

[33mWarning[0m for LockedEther in contract 'ERC20Burnable':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract ERC20Burnable is ERC20 {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(to != address(0));
    |
  > |    _balances[msg.sender] = _balances[msg.sender].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _balances[msg.sender] = _balances[msg.sender].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(msg.sender, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    emit Transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(amount <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(amount);
    |    _balances[account] = _balances[account].sub(amount);
    |    emit Transfer(account, address(0), amount);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _totalSupply = _totalSupply.sub(amount);
  > |    _balances[account] = _balances[account].sub(amount);
    |    emit Transfer(account, address(0), amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      amount);
    |    _burn(account, amount);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(301)

[33mWarning[0m for LockedEther in contract 'ERC20Mintable':
    | * @dev ERC20 minting logic
    | */
  > |contract ERC20Mintable is ERC20, MinterRole {
    |  event MintingFinished();
    |
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(to != address(0));
    |
  > |    _balances[msg.sender] = _balances[msg.sender].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |
    |    _balances[msg.sender] = _balances[msg.sender].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(msg.sender, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    emit Transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  function _mint(address account, uint256 amount) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(amount);
    |    _balances[account] = _balances[account].add(amount);
    |    emit Transfer(address(0), account, amount);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(amount);
  > |    _balances[account] = _balances[account].add(amount);
    |    emit Transfer(address(0), account, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  function remove(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  function add(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    returns (bool)
    |  {
  > |    _mintingFinished = true;
    |    emit MintingFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(438)

[33mWarning[0m for LockedEther in contract 'MinterRole':
    |// File: openzeppelin-solidity/contracts/access/roles/MinterRole.sol
    |
  > |contract MinterRole {
    |  using Roles for Roles.Role;
    |
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'MinterRole':
    |  function remove(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'MinterRole':
    |  function add(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(323)

[33mWarning[0m for LockedEther in contract 'Roles':
    | * @dev Library for managing addresses assigned to a Role.
    | */
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(313)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(44)

[33mWarning[0m for LockedEther in contract 'XRT':
    |// File: contracts/robonomics/XRT.sol
    |
  > |contract XRT is ERC20Mintable, ERC20Burnable, ERC20Detailed {
    |    constructor() public ERC20Detailed("XRT", "Robonomics Beta", 9) {
    |        uint256 INITIAL_SUPPLY = 1000 * (10 ** 9);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(521)

[33mWarning[0m for UnrestrictedWrite in contract 'XRT':
    |    require(to != address(0));
    |
  > |    _balances[msg.sender] = _balances[msg.sender].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'XRT':
    |
    |    _balances[msg.sender] = _balances[msg.sender].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(msg.sender, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'XRT':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'XRT':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'XRT':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'XRT':
    |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    emit Transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'XRT':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'XRT':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'XRT':
    |  function _mint(address account, uint256 amount) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(amount);
    |    _balances[account] = _balances[account].add(amount);
    |    emit Transfer(address(0), account, amount);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'XRT':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(amount);
  > |    _balances[account] = _balances[account].add(amount);
    |    emit Transfer(address(0), account, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'XRT':
    |    require(amount <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(amount);
    |    _balances[account] = _balances[account].sub(amount);
    |    emit Transfer(account, address(0), amount);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'XRT':
    |
    |    _totalSupply = _totalSupply.sub(amount);
  > |    _balances[account] = _balances[account].sub(amount);
    |    emit Transfer(account, address(0), amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'XRT':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      amount);
    |    _burn(account, amount);
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'XRT':
    |  function add(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'XRT':
    |  function remove(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'XRT':
    |    returns (bool)
    |  {
  > |    _mintingFinished = true;
    |    emit MintingFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60270f0be920009ba0fe32d81d63d1f498f42731.sol(438)


