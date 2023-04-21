Processing contract: /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol:ERC20Burnable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol:ERC20Pausable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol:Pausable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol:PauserRole
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol:XEXToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20':
    |}
    |
  > |contract ERC20 is IERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(_spender != address(0));
    |    
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(_spender != address(0));
    |
  > |    allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(_spender != address(0));
    |
  > |    allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].sub(_subtractedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(134)

[33mWarning[0m for LockedEther in contract 'ERC20Burnable':
    |}
    |
  > |contract ERC20Burnable is ERC20 {
    |  function burn(uint256 value) public {
    |    _burn(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(_spender != address(0));
    |    
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(_spender != address(0));
    |
  > |    allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(_spender != address(0));
    |
  > |    allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].sub(_subtractedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(_amount <= balances[_account]);
    |
  > |    totalSupply_ = totalSupply_.sub(_amount);
    |    balances[_account] = balances[_account].sub(_amount);
    |    emit Transfer(_account, address(0), _amount);
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    totalSupply_ = totalSupply_.sub(_amount);
  > |    balances[_account] = balances[_account].sub(_amount);
    |    emit Transfer(_account, address(0), _amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(152)

[33mWarning[0m for LockedEther in contract 'ERC20Pausable':
    |}
    |
  > |contract ERC20Pausable is ERC20, Pausable {
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
    |    return super.transfer(_to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |  function remove(Role storage _role, address _account) internal {
    |    require(_account != address(0));
  > |    _role.bearer[_account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(_spender != address(0));
    |    
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(_spender != address(0));
    |
  > |    allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(_spender != address(0));
    |
  > |    allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].sub(_subtractedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |  function add(Role storage _role, address _account) internal {
    |    require(_account != address(0));
  > |    _role.bearer[_account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |
    |  function pause() public onlyPauser whenNotPaused {
  > |    paused_ = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |
    |  function unpause() public onlyPauser whenPaused {
  > |    paused_ = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(223)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is PauserRole {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function remove(Role storage _role, address _account) internal {
    |    require(_account != address(0));
  > |    _role.bearer[_account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function add(Role storage _role, address _account) internal {
    |    require(_account != address(0));
  > |    _role.bearer[_account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function pause() public onlyPauser whenNotPaused {
  > |    paused_ = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function unpause() public onlyPauser whenPaused {
  > |    paused_ = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(223)

[33mWarning[0m for LockedEther in contract 'PauserRole':
    |}
    |
  > |contract PauserRole {
    |  using Roles for Roles.Role;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'PauserRole':
    |  function remove(Role storage _role, address _account) internal {
    |    require(_account != address(0));
  > |    _role.bearer[_account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'PauserRole':
    |  function add(Role storage _role, address _account) internal {
    |    require(_account != address(0));
  > |    _role.bearer[_account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(39)

[33mWarning[0m for LockedEther in contract 'Roles':
    |}
    |
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(32)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.25;
    |
  > |library SafeMath {
    |  function mul(uint256 _a, uint256 _b) internal pure returns (uint256) {
    |    if (_a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(3)

[33mWarning[0m for LockedEther in contract 'XEXToken':
    |}
    |
  > |contract XEXToken is ERC20Pausable, ERC20Burnable {
    |  string public constant name = "CROSS exchange token";
    |  string public constant symbol = "XEX";
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXToken':
    |  function remove(Role storage _role, address _account) internal {
    |    require(_account != address(0));
  > |    _role.bearer[_account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXToken':
    |    require(_spender != address(0));
    |    
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXToken':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXToken':
    |    require(_spender != address(0));
    |
  > |    allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXToken':
    |    require(_spender != address(0));
    |
  > |    allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].sub(_subtractedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXToken':
    |    require(_amount <= balances[_account]);
    |
  > |    totalSupply_ = totalSupply_.sub(_amount);
    |    balances[_account] = balances[_account].sub(_amount);
    |    emit Transfer(_account, address(0), _amount);
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXToken':
    |
    |    totalSupply_ = totalSupply_.sub(_amount);
  > |    balances[_account] = balances[_account].sub(_amount);
    |    emit Transfer(_account, address(0), _amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXToken':
    |  function add(Role storage _role, address _account) internal {
    |    require(_account != address(0));
  > |    _role.bearer[_account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXToken':
    |
    |  function pause() public onlyPauser whenNotPaused {
  > |    paused_ = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXToken':
    |
    |  function unpause() public onlyPauser whenPaused {
  > |    paused_ = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbf68b3756f82b522588511da682dfd7e3bf34dee.sol(223)


