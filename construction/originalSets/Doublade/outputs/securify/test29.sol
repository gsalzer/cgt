Processing contract: /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol:DncToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol:ERC20Burnable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol:ERC20Capped
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol:ERC20Detailed
Processing contract: /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol:ERC20Mintable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol:ERC20Pausable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol:MinterRole
Processing contract: /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol:Pausable
Processing contract: /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol:PauserRole
Processing contract: /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol:ReentrancyGuard
Processing contract: /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'DncToken':
    |    }
    |    function _forwardFunds() internal {
  > |        _wallet.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(744)

[33mWarning[0m for LockedEther in contract 'DncToken':
    |  }
    |}
  > |contract DncToken is ERC20, ERC20Detailed , ERC20Pausable, ERC20Capped , ERC20Burnable, Ownable , ReentrancyGuard {
    |    constructor(string _name, string _symbol, uint8 _decimals, uint256 _cap) 
    |        ERC20Detailed(_name, _symbol, _decimals)
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(671)

[33mWarning[0m for UnhandledException in contract 'DncToken':
    |    }
    |    function _forwardFunds() internal {
  > |        _wallet.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(744)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DncToken':
    |    }
    |    function _forwardFunds() internal {
  > |        _wallet.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(744)

[31mViolation[0m for UnrestrictedWrite in contract 'DncToken':
    |   */
    |  modifier nonReentrant() {
  > |    _guardCounter += 1;
    |    uint256 localCounter = _guardCounter;
    |    _;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(665)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |    require(account != address(0));
    |    require(!has(role, account));
  > |    role.bearer[account] = true;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |    require(account != address(0));
    |    require(has(role, account));
  > |    role.bearer[account] = false;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |    require(spender != address(0));
    |    value = value.mul(1 finney);
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |     value = value.mul(1 finney);
    |    require(value <= _allowed[from][msg.sender]);
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |    require(spender != address(0));
    |    addedValue = addedValue.mul(1 finney);
  > |    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |    require(spender != address(0));
    |    subtractedValue = subtractedValue.mul(1 finney);
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |    require(value <= _balances[from]);
    |    require(to != address(0));
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |    require(to != address(0));
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |  function _mint(address account, uint256 value) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(value);
    |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(value);
  > |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |    require(account != 0);
    |    require(value <= _balances[account]);
  > |    _totalSupply = _totalSupply.sub(value);
    |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |    require(value <= _balances[account]);
    |    _totalSupply = _totalSupply.sub(value);
  > |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      value);
    |    _burn(account, value);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |   */
    |  function pause() public onlyPauser whenNotPaused {
  > |    _paused = true;
    |    emit Paused(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |   */
    |  function unpause() public onlyPauser whenPaused {
  > |    _paused = false;
    |    emit Unpaused(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(444)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |        uint256 tokens = _getTokenAmount(weiAmount);
    |        // update state
  > |        _weiRaised = _weiRaised.add(weiAmount);
    |        _preValidatePurchase(beneficiary, weiAmount);
    |        _processPurchase(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(703)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(624)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(640)

[33mWarning[0m for UnrestrictedWrite in contract 'DncToken':
    |    }
    |    function ChangeRate(uint256 newRate) public onlyOwner whenNotPaused{
  > |        _rate = newRate;
    |    }
    |    function _getTokenAmount(uint256 weiAmount) internal view returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(690)

[33mWarning[0m for LockedEther in contract 'ERC20':
    | * Originally based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract ERC20 is IERC20 {
    |  using SafeMath for uint256;
    |  mapping (address => uint256) private _balances;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |    value = value.mul(1 finney);
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |     value = value.mul(1 finney);
    |    require(value <= _allowed[from][msg.sender]);
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |    addedValue = addedValue.mul(1 finney);
  > |    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |    subtractedValue = subtractedValue.mul(1 finney);
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(value <= _balances[from]);
    |    require(to != address(0));
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(to != address(0));
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(355)

[33mWarning[0m for LockedEther in contract 'ERC20Burnable':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract ERC20Burnable is ERC20, ERC20Pausable {
    |  /**
    |   * @dev Burns a specific amount of tokens.
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(559)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(account != address(0));
    |    require(!has(role, account));
  > |    role.bearer[account] = true;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(account != address(0));
    |    require(has(role, account));
  > |    role.bearer[account] = false;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |    value = value.mul(1 finney);
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |     value = value.mul(1 finney);
    |    require(value <= _allowed[from][msg.sender]);
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |    addedValue = addedValue.mul(1 finney);
  > |    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |    subtractedValue = subtractedValue.mul(1 finney);
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(value <= _balances[from]);
    |    require(to != address(0));
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(to != address(0));
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(account != 0);
    |    require(value <= _balances[account]);
  > |    _totalSupply = _totalSupply.sub(value);
    |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(value <= _balances[account]);
    |    _totalSupply = _totalSupply.sub(value);
  > |    _balances[account] = _balances[account].sub(value);
    |    emit Transfer(account, address(0), value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      value);
    |    _burn(account, value);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |   */
    |  function pause() public onlyPauser whenNotPaused {
  > |    _paused = true;
    |    emit Paused(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |   */
    |  function unpause() public onlyPauser whenPaused {
  > |    _paused = false;
    |    emit Unpaused(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(444)

[33mWarning[0m for LockedEther in contract 'ERC20Capped':
    | * @dev Mintable token with a token cap.
    | */
  > |contract ERC20Capped is ERC20Mintable {
    |  uint256 private _cap;
    |  constructor(uint256 cap)
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(531)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    require(account != address(0));
    |    require(!has(role, account));
  > |    role.bearer[account] = true;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    require(account != address(0));
    |    require(has(role, account));
  > |    role.bearer[account] = false;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    require(spender != address(0));
    |    value = value.mul(1 finney);
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |     value = value.mul(1 finney);
    |    require(value <= _allowed[from][msg.sender]);
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    require(spender != address(0));
    |    addedValue = addedValue.mul(1 finney);
  > |    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    require(spender != address(0));
    |    subtractedValue = subtractedValue.mul(1 finney);
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    require(value <= _balances[from]);
    |    require(to != address(0));
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    require(to != address(0));
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |  function _mint(address account, uint256 value) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(value);
    |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(value);
  > |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |   */
    |  function pause() public onlyPauser whenNotPaused {
  > |    _paused = true;
    |    emit Paused(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |   */
    |  function unpause() public onlyPauser whenPaused {
  > |    _paused = false;
    |    emit Unpaused(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(444)

[33mWarning[0m for LockedEther in contract 'ERC20Mintable':
    | * @dev ERC20 minting logic
    | */
  > |contract ERC20Mintable is ERC20, MinterRole, ERC20Pausable {
    |  /**
    |   * @dev Function to mint tokens
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(account != address(0));
    |    require(!has(role, account));
  > |    role.bearer[account] = true;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(account != address(0));
    |    require(has(role, account));
  > |    role.bearer[account] = false;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |    value = value.mul(1 finney);
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |     value = value.mul(1 finney);
    |    require(value <= _allowed[from][msg.sender]);
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |    addedValue = addedValue.mul(1 finney);
  > |    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |    subtractedValue = subtractedValue.mul(1 finney);
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(value <= _balances[from]);
    |    require(to != address(0));
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(to != address(0));
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |   */
    |  function pause() public onlyPauser whenNotPaused {
  > |    _paused = true;
    |    emit Paused(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |   */
    |  function unpause() public onlyPauser whenPaused {
  > |    _paused = false;
    |    emit Unpaused(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(444)

[33mWarning[0m for LockedEther in contract 'ERC20Pausable':
    | * @dev ERC20 modified with pausable transfers.
    | **/
  > |contract ERC20Pausable is ERC20, Pausable {
    |  function transfer(
    |    address to,
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(account != address(0));
    |    require(!has(role, account));
  > |    role.bearer[account] = true;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(account != address(0));
    |    require(has(role, account));
  > |    role.bearer[account] = false;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(spender != address(0));
    |    value = value.mul(1 finney);
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |     value = value.mul(1 finney);
    |    require(value <= _allowed[from][msg.sender]);
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(spender != address(0));
    |    addedValue = addedValue.mul(1 finney);
  > |    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(spender != address(0));
    |    subtractedValue = subtractedValue.mul(1 finney);
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(value <= _balances[from]);
    |    require(to != address(0));
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |    require(to != address(0));
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |   */
    |  function pause() public onlyPauser whenNotPaused {
  > |    _paused = true;
    |    emit Paused(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Pausable':
    |   */
    |  function unpause() public onlyPauser whenPaused {
  > |    _paused = false;
    |    emit Unpaused(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(444)

[33mWarning[0m for LockedEther in contract 'Roles':
    | * @dev Library for managing addresses assigned to a Role.
    | */
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(6)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |  /**
    |  * @dev Multiplies two numbers, reverts on overflow.
  at /home/jiaming/mavs_srcs/contract@0x0212f052cbf41b91cb6daf0735325102e5f4ab76.sol(162)


