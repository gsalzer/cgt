Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol:BlacklistAdminRole
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol:BlacklistedRole
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol:ERC20Burnable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol:ERC20Detailed
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol:ERC20Mintable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol:GiniCon
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol:GiniConTokenPausable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol:MinterRole
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol:Pausable
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol:PauserRole
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BlacklistedRole':
    |  
    |
  > |contract BlacklistedRole is BlacklistAdminRole { 
    |
    |    using Roles for Roles.Role; 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(1175)

[33mWarning[0m for UnrestrictedWrite in contract 'BlacklistedRole':
    |  
    |
  > |        role.bearer[account] = true; 
    |
    |    } 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(591)

[33mWarning[0m for UnrestrictedWrite in contract 'BlacklistedRole':
    |  
    |
  > |        role.bearer[account] = false; 
    |
    |    } 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(611)

[33mWarning[0m for LockedEther in contract 'ERC20':
    | */ 
    |
  > |contract ERC20 is IERC20 { 
    |
    |    using SafeMath for uint256; 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |  
    |
  > |        _allowed[msg.sender][spender] = value; 
    |
    |        emit Approval(msg.sender, spender, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) { 
    |
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value); 
    |
    |        _transfer(from, to, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |  
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue); 
    |
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |  
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue); 
    |
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(429)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |  
    |
  > |        _balances[from] = _balances[from].sub(value); 
    |
    |        _balances[to] = _balances[to].add(value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(457)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        _balances[from] = _balances[from].sub(value); 
    |
  > |        _balances[to] = _balances[to].add(value); 
    |
    |        emit Transfer(from, to, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(459)

[33mWarning[0m for LockedEther in contract 'ERC20Burnable':
    | */ 
    |
  > |contract ERC20Burnable is ERC20 { 
    |
    |    /** 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(771)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |  
    |
  > |        _allowed[msg.sender][spender] = value; 
    |
    |        emit Approval(msg.sender, spender, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) { 
    |
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value); 
    |
    |        _transfer(from, to, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |  
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue); 
    |
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |  
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue); 
    |
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(429)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |  
    |
  > |        _balances[from] = _balances[from].sub(value); 
    |
    |        _balances[to] = _balances[to].add(value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(457)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |        _balances[from] = _balances[from].sub(value); 
    |
  > |        _balances[to] = _balances[to].add(value); 
    |
    |        emit Transfer(from, to, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(459)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |  
    |
  > |        _totalSupply = _totalSupply.sub(value); 
    |
    |        _balances[account] = _balances[account].sub(value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(515)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |        _totalSupply = _totalSupply.sub(value); 
    |
  > |        _balances[account] = _balances[account].sub(value); 
    |
    |        emit Transfer(account, address(0), value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(517)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    function _burnFrom(address account, uint256 value) internal { 
    |
  > |        _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(value); 
    |
    |        _burn(account, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(543)

[33mWarning[0m for LockedEther in contract 'ERC20Mintable':
    | */ 
    |
  > |contract ERC20Mintable is ERC20, MinterRole { 
    |
    |    /** 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(733)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  
    |
  > |        _allowed[msg.sender][spender] = value; 
    |
    |        emit Approval(msg.sender, spender, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) { 
    |
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value); 
    |
    |        _transfer(from, to, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue); 
    |
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue); 
    |
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(429)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  
    |
  > |        _balances[from] = _balances[from].sub(value); 
    |
    |        _balances[to] = _balances[to].add(value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(457)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |        _balances[from] = _balances[from].sub(value); 
    |
  > |        _balances[to] = _balances[to].add(value); 
    |
    |        emit Transfer(from, to, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(459)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  
    |
  > |        _totalSupply = _totalSupply.add(value); 
    |
    |        _balances[account] = _balances[account].add(value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |        _totalSupply = _totalSupply.add(value); 
    |
  > |        _balances[account] = _balances[account].add(value); 
    |
    |        emit Transfer(address(0), account, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  
    |
  > |        role.bearer[account] = true; 
    |
    |    } 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(591)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  
    |
  > |        role.bearer[account] = false; 
    |
    |    } 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(611)

[33mWarning[0m for LockedEther in contract 'GiniCon':
    |  
    |
  > |contract GiniCon is ERC20Detailed, ERC20Burnable, ERC20Mintable, GiniConTokenPausable { 
    |
    |    uint8 public constant DECIMALS = 0; 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(1325)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniCon':
    |  
    |
  > |        _allowed[msg.sender][spender] = value; 
    |
    |        emit Approval(msg.sender, spender, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniCon':
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) { 
    |
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value); 
    |
    |        _transfer(from, to, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniCon':
    |  
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue); 
    |
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniCon':
    |  
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue); 
    |
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(429)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniCon':
    |  
    |
  > |        _balances[from] = _balances[from].sub(value); 
    |
    |        _balances[to] = _balances[to].add(value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(457)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniCon':
    |        _balances[from] = _balances[from].sub(value); 
    |
  > |        _balances[to] = _balances[to].add(value); 
    |
    |        emit Transfer(from, to, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(459)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniCon':
    |  
    |
  > |        _totalSupply = _totalSupply.add(value); 
    |
    |        _balances[account] = _balances[account].add(value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniCon':
    |        _totalSupply = _totalSupply.add(value); 
    |
  > |        _balances[account] = _balances[account].add(value); 
    |
    |        emit Transfer(address(0), account, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniCon':
    |  
    |
  > |        _totalSupply = _totalSupply.sub(value); 
    |
    |        _balances[account] = _balances[account].sub(value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(515)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniCon':
    |        _totalSupply = _totalSupply.sub(value); 
    |
  > |        _balances[account] = _balances[account].sub(value); 
    |
    |        emit Transfer(account, address(0), value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(517)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniCon':
    |    function _burnFrom(address account, uint256 value) internal { 
    |
  > |        _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(value); 
    |
    |        _burn(account, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(543)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniCon':
    |  
    |
  > |        role.bearer[account] = true; 
    |
    |    } 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(591)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniCon':
    |  
    |
  > |        role.bearer[account] = false; 
    |
    |    } 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(611)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniCon':
    |    function pause() public onlyPauser whenNotPaused { 
    |
  > |        _paused = true; 
    |
    |        emit Paused(msg.sender); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(1061)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniCon':
    |    function unpause() public onlyPauser whenPaused { 
    |
  > |        _paused = false; 
    |
    |        emit Unpaused(msg.sender); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(1077)

[33mWarning[0m for LockedEther in contract 'GiniConTokenPausable':
    | **/ 
    |
  > |contract GiniConTokenPausable is ERC20, Pausable, BlacklistedRole { 
    |
    |    function transfer(address to, uint256 value) public whenNotPaused onlyNotBlacklisted returns (bool) { 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(1277)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniConTokenPausable':
    |  
    |
  > |        _allowed[msg.sender][spender] = value; 
    |
    |        emit Approval(msg.sender, spender, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniConTokenPausable':
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) { 
    |
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value); 
    |
    |        _transfer(from, to, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniConTokenPausable':
    |  
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue); 
    |
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniConTokenPausable':
    |  
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue); 
    |
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(429)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniConTokenPausable':
    |  
    |
  > |        _balances[from] = _balances[from].sub(value); 
    |
    |        _balances[to] = _balances[to].add(value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(457)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniConTokenPausable':
    |        _balances[from] = _balances[from].sub(value); 
    |
  > |        _balances[to] = _balances[to].add(value); 
    |
    |        emit Transfer(from, to, value); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(459)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniConTokenPausable':
    |  
    |
  > |        role.bearer[account] = true; 
    |
    |    } 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(591)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniConTokenPausable':
    |  
    |
  > |        role.bearer[account] = false; 
    |
    |    } 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(611)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniConTokenPausable':
    |    function pause() public onlyPauser whenNotPaused { 
    |
  > |        _paused = true; 
    |
    |        emit Paused(msg.sender); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(1061)

[33mWarning[0m for UnrestrictedWrite in contract 'GiniConTokenPausable':
    |    function unpause() public onlyPauser whenPaused { 
    |
  > |        _paused = false; 
    |
    |        emit Unpaused(msg.sender); 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(1077)

[33mWarning[0m for LockedEther in contract 'Roles':
    | */ 
    |
  > |library Roles { 
    |
    |    struct Role { 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(567)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */ 
    |
  > |library SafeMath { 
    |
    |    /** 
  at /home/jiaming/mavs_srcs/contract@0xdb2abcbe02515b9e3a923b4a95f8103f72509069.sol(65)


