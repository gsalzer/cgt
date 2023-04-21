Processing contract: /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol:ERC20Mintable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol:ERC20Pausable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol:MinterRole
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol:Pausable
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol:PauserRole
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol:SLC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20':
    |}
    |
  > |contract ERC20 is IERC20 {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        emit Approval(from, msg.sender, _allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(342)

[33mWarning[0m for LockedEther in contract 'ERC20Mintable':
    | * @dev ERC20 minting logic
    | */
  > |contract ERC20Mintable is ERC20, MinterRole {
    |    /**
    |     * @dev Function to mint tokens
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(515)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |        require(!has(role, account));
    |
  > |        role.bearer[account] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |        require(has(role, account));
    |
  > |        role.bearer[account] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        emit Approval(from, msg.sender, _allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |        require(account != address(0));
    |
  > |        _totalSupply = _totalSupply.add(value);
    |        _balances[account] = _balances[account].add(value);
    |        emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |
    |        _totalSupply = _totalSupply.add(value);
  > |        _balances[account] = _balances[account].add(value);
    |        emit Transfer(address(0), account, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(357)

[33mWarning[0m for LockedEther in contract 'ERC20Pausable':
    | * @dev ERC20 modified with pausable transfers.
    | **/
  > |contract ERC20Pausable is ERC20, Pausable {
    |    function transfer(address to, uint256 value) public whenNotPaused returns (bool) {
    |        return super.transfer(to, value);
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |        require(!has(role, account));
    |
  > |        role.bearer[account] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |        require(has(role, account));
    |
  > |        role.bearer[account] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        emit Approval(from, msg.sender, _allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |     */
    |    function pause() public onlyPauser whenNotPaused {
  > |        _paused = true;
    |        emit Paused(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |     */
    |    function unpause() public onlyPauser whenPaused {
  > |        _paused = false;
    |        emit Unpaused(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(480)

[33mWarning[0m for LockedEther in contract 'Roles':
    | * @dev Library for managing addresses assigned to a Role.
    | */
  > |library Roles {
    |    struct Role {
    |        mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(123)

[33mWarning[0m for LockedEther in contract 'SLC':
    |
    | 
  > |contract SLC is  ERC20Mintable,ERC20Pausable{
    |    string public name="super club coin";
    |    uint8  public decimals=18;
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(529)

[33mWarning[0m for UnrestrictedWrite in contract 'SLC':
    |        require(!has(role, account));
    |
  > |        role.bearer[account] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'SLC':
    |        require(has(role, account));
    |
  > |        role.bearer[account] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'SLC':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'SLC':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        emit Approval(from, msg.sender, _allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'SLC':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'SLC':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'SLC':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'SLC':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'SLC':
    |        require(account != address(0));
    |
  > |        _totalSupply = _totalSupply.add(value);
    |        _balances[account] = _balances[account].add(value);
    |        emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'SLC':
    |
    |        _totalSupply = _totalSupply.add(value);
  > |        _balances[account] = _balances[account].add(value);
    |        emit Transfer(address(0), account, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'SLC':
    |     */
    |    function pause() public onlyPauser whenNotPaused {
  > |        _paused = true;
    |        emit Paused(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'SLC':
    |     */
    |    function unpause() public onlyPauser whenPaused {
  > |        _paused = false;
    |        emit Unpaused(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(480)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |    int256 constant private INT256_MIN = -2**255;
    |
  at /home/jiaming/mavs_srcs/contract@0x3bbb2f7dd62f6094cafab15abc11ca4a2f5a031e.sol(5)


