Processing contract: /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol:ERC20Burnable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol:ERC20Mintable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol:HadacoinV18
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol:MinterRole
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(256)

[33mWarning[0m for LockedEther in contract 'ERC20Burnable':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract ERC20Burnable is ERC20, Ownable {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(488)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(value <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(value);
    |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _totalSupply = _totalSupply.sub(value);
  > |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      value);
    |    _burn(account, value);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(456)

[33mWarning[0m for LockedEther in contract 'ERC20Mintable':
    | * @dev ERC20 minting logic
    | */
  > |contract ERC20Mintable is ERC20, MinterRole {
    |  /**
    |   * @dev Function to mint tokens
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(464)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  function _mint(address account, uint256 value) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(value);
    |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(value);
  > |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  function remove(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  function add(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(321)

[33mWarning[0m for LockedEther in contract 'HadacoinV18':
    | * @title HadaCoinV18
    | */
  > |contract HadacoinV18 is ERC20Mintable, ERC20Burnable {
    |
    |  string public constant name = "Hada Coin";
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(511)

[33mWarning[0m for UnrestrictedWrite in contract 'HadacoinV18':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'HadacoinV18':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'HadacoinV18':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'HadacoinV18':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'HadacoinV18':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'HadacoinV18':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'HadacoinV18':
    |  function _mint(address account, uint256 value) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(value);
    |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'HadacoinV18':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(value);
  > |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'HadacoinV18':
    |    require(value <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(value);
    |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'HadacoinV18':
    |
    |    _totalSupply = _totalSupply.sub(value);
  > |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'HadacoinV18':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      value);
    |    _burn(account, value);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'HadacoinV18':
    |  function remove(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'HadacoinV18':
    |  function add(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'HadacoinV18':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'HadacoinV18':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(456)

[33mWarning[0m for LockedEther in contract 'MinterRole':
    |}
    |
  > |contract MinterRole {
    |  using Roles for Roles.Role;
    |
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'MinterRole':
    |  function remove(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'MinterRole':
    |  function add(Role storage role, address account) internal {
    |    require(account != address(0));
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(321)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address private _owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(391)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @return the address of the owner.
    |   */
  > |  function owner() public view returns(address) {
    |    return _owner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(411)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @return true if `msg.sender` is the owner of the contract.
    |   */
  > |  function isOwner() public view returns(bool) {
    |    return msg.sender == _owner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(426)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
    |    _owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(436)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    _transferOwnership(newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(445)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address newOwner) internal {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(453)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(456)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(456)

[33mWarning[0m for LockedEther in contract 'Roles':
    | * @dev Library for managing addresses assigned to a Role.
    | */
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(311)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x24edca5a57fc259427574e0c9cfdf630a3136d34.sol(7)


