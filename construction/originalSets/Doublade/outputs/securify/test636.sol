Processing contract: /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol:BasicToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol:BlackList
Processing contract: /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol:SPAYToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol:StandardToken
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * @title Ownable
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |   
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(55)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(201)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |   
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(236)

[33mWarning[0m for LockedEther in contract 'SPAYToken':
    |
    |
  > |contract SPAYToken is Pausable, StandardToken, BlackList {
    |
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |        require(balances[msg.sender] >= _value);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |      require(_value > 0 && balances[msg.sender] >= amount);
    |  
  > |      balances[msg.sender] = balances[msg.sender].sub(amount);
    |      
    |      for (uint i = 0; i < cnt; i++) {
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |      
    |      for (uint i = 0; i < cnt; i++) {
  > |          balances[_receivers[i]] = balances[_receivers[i]].add(_value);
    |          emit Transfer(msg.sender, _receivers[i], _value);
    |      }
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |
    |        if (_allowance < MAX_UINT) {
  > |            allowed[_from][msg.sender] = _allowance.sub(_value);
    |        }
    |        balances[_from] = balances[_from].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |            allowed[_from][msg.sender] = _allowance.sub(_value);
    |        }
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |        }
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
    |        
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |        require(!((_value != 0) && (allowed[msg.sender][_spender] != 0)));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |    
    |    function addBlackList (address _evilUser) public onlyOwner {
  > |        isBlackListed[_evilUser] = true;
    |        emit AddedBlackList(_evilUser);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |
    |    function removeBlackList (address _clearedUser) public onlyOwner {
  > |        isBlackListed[_clearedUser] = false;
    |        emit RemovedBlackList(_clearedUser);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |        require(isBlackListed[_blackListedUser]);
    |        uint dirtyFunds = balanceOf(_blackListedUser);
  > |        balances[_blackListedUser] = 0;
    |        _totalSupply -= dirtyFunds;
    |        emit DestroyedBlackFunds(_blackListedUser, dirtyFunds);
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |        uint dirtyFunds = balanceOf(_blackListedUser);
    |        balances[_blackListedUser] = 0;
  > |        _totalSupply -= dirtyFunds;
    |        emit DestroyedBlackFunds(_blackListedUser, dirtyFunds);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |        require(balances[owner] + amount > balances[owner]);
    |
  > |        balances[owner] += amount;
    |        _totalSupply += amount;
    |        emit Issue(amount);
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |
    |        balances[owner] += amount;
  > |        _totalSupply += amount;
    |        emit Issue(amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |        require(balances[owner] >= amount);
    |
  > |        _totalSupply -= amount;
    |        balances[owner] -= amount;
    |        emit Redeem(amount);
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAYToken':
    |
    |        _totalSupply -= amount;
  > |        balances[owner] -= amount;
    |        emit Redeem(amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(348)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @title SafeMath
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x28a3fc44e4f0e39a5350d8eb991773914075510e.sol(6)


