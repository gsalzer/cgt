Processing contract: /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol:ERC20Burnable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol:ERC20Detailed
Processing contract: /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol:ERC20Mintable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol:ERC20Pausable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol:MinterRole
Processing contract: /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol:Pausable
Processing contract: /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol:PauserRole
Processing contract: /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol:SignerRole
Processing contract: /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol:Tokenmom
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20':
    | * compliant implementations may not do it.
    | */
  > |contract ERC20 is IERC20, Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(476)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(533)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        emit Approval(from, msg.sender, _allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(547)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(566)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(584)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(598)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(599)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipTransferred(_owner, address(0));
  > |        _owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(84)

[33mWarning[0m for LockedEther in contract 'ERC20Burnable':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract ERC20Burnable is ERC20 {
    |    /**
    |     * @dev Burns a specific amount of tokens.
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(707)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(533)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        emit Approval(from, msg.sender, _allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(547)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(566)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(584)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(598)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(599)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |        require(account != address(0));
    |
  > |        _totalSupply = _totalSupply.sub(value);
    |        _balances[account] = _balances[account].sub(value);
    |        emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(627)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |        _totalSupply = _totalSupply.sub(value);
  > |        _balances[account] = _balances[account].sub(value);
    |        emit Transfer(account, address(0), value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(628)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |     */
    |    function _burnFrom(address account, uint256 value) internal {
  > |        _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(value);
    |        _burn(account, value);
    |        emit Approval(account, msg.sender, _allowed[account][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(641)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipTransferred(_owner, address(0));
  > |        _owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(84)

[33mWarning[0m for LockedEther in contract 'ERC20Mintable':
    | * @dev ERC20 minting logic
    | */
  > |contract ERC20Mintable is ERC20, MinterRole {
    |    /**
    |     * @dev Function to mint tokens
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(757)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipTransferred(_owner, address(0));
  > |        _owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |        require(!has(role, account));
    |
  > |        role.bearer[account] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |        require(has(role, account));
    |
  > |        role.bearer[account] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(533)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        emit Approval(from, msg.sender, _allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(547)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(566)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(584)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(598)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(599)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |        require(account != address(0));
    |
  > |        _totalSupply = _totalSupply.add(value);
    |        _balances[account] = _balances[account].add(value);
    |        emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(613)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |
    |        _totalSupply = _totalSupply.add(value);
  > |        _balances[account] = _balances[account].add(value);
    |        emit Transfer(address(0), account, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(614)

[33mWarning[0m for LockedEther in contract 'ERC20Pausable':
    | * @dev ERC20 modified with pausable transfers.
    | **/
  > |contract ERC20Pausable is ERC20, Pausable {
    |    function transfer(address to, uint256 value) public whenNotPaused returns (bool) {
    |        return super.transfer(to, value);
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(731)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |        require(!has(role, account));
    |
  > |        role.bearer[account] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |        require(has(role, account));
    |
  > |        role.bearer[account] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(533)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        emit Approval(from, msg.sender, _allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(547)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(566)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(584)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(598)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(599)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipTransferred(_owner, address(0));
  > |        _owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |     */
    |    function pause() public onlyPauser whenNotPaused {
  > |        _paused = true;
    |        emit Paused(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(689)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |     */
    |    function unpause() public onlyPauser whenPaused {
  > |        _paused = false;
    |        emit Unpaused(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(697)

[33mWarning[0m for LockedEther in contract 'Roles':
    | * @dev Library for managing addresses assigned to a Role.
    | */
  > |library Roles {
    |    struct Role {
    |        mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(308)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(235)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |    int256 constant private INT256_MIN = -2**255;
    |
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(93)

[33mWarning[0m for LockedEther in contract 'Tokenmom':
    |}
    |
  > |contract Tokenmom is ERC20Pausable, ERC20Burnable, ERC20Mintable, ERC20Detailed {
    |    uint256 public constant INITIAL_SUPPLY = 2000000000 * (10 ** uint256(decimals()));
    |
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(770)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenmom':
    |        require(!has(role, account));
    |
  > |        role.bearer[account] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenmom':
    |        require(has(role, account));
    |
  > |        role.bearer[account] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenmom':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(533)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenmom':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        emit Approval(from, msg.sender, _allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(547)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenmom':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(566)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenmom':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(584)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenmom':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(598)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenmom':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(599)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenmom':
    |        require(account != address(0));
    |
  > |        _totalSupply = _totalSupply.add(value);
    |        _balances[account] = _balances[account].add(value);
    |        emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(613)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenmom':
    |
    |        _totalSupply = _totalSupply.add(value);
  > |        _balances[account] = _balances[account].add(value);
    |        emit Transfer(address(0), account, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(614)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenmom':
    |        require(account != address(0));
    |
  > |        _totalSupply = _totalSupply.sub(value);
    |        _balances[account] = _balances[account].sub(value);
    |        emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(627)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenmom':
    |
    |        _totalSupply = _totalSupply.sub(value);
  > |        _balances[account] = _balances[account].sub(value);
    |        emit Transfer(account, address(0), value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(628)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenmom':
    |     */
    |    function _burnFrom(address account, uint256 value) internal {
  > |        _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(value);
    |        _burn(account, value);
    |        emit Approval(account, msg.sender, _allowed[account][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(641)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenmom':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipTransferred(_owner, address(0));
  > |        _owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenmom':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenmom':
    |     */
    |    function pause() public onlyPauser whenNotPaused {
  > |        _paused = true;
    |        emit Paused(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(689)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenmom':
    |     */
    |    function unpause() public onlyPauser whenPaused {
  > |        _paused = false;
    |        emit Unpaused(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x554b520b298be389f0d87bf3376eb4d6510456ec.sol(697)


