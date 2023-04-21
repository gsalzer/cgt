Processing contract: /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol:FMToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol:TokenRecipient
[33mWarning[0m for LockedEther in contract 'FMToken':
    |
    |
  > |contract FMToken is ERC20, Ownable, Pausable {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(112)

[33mWarning[0m for UnhandledException in contract 'FMToken':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(214)

[33mWarning[0m for UnhandledException in contract 'FMToken':
    |
    |    function claimToken(ERC20 token, address _to, uint256 _value) public onlyOwner returns (bool) {
  > |        token.transfer(_to, _value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMToken':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(214)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMToken':
    |
    |    function claimToken(ERC20 token, address _to, uint256 _value) public onlyOwner returns (bool) {
  > |        token.transfer(_to, _value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |        
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |
    |    function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |        require(_amount.mul(_releaseRate).div(100) > 0);
    |        require(balances[_holder] >= _amount);
  > |        balances[_holder] = balances[_holder].sub(_amount);
    |        lockupInfo[_holder] = LockupInfo(_releaseStart, _termOfRound, _amount.mul(_releaseRate).div(100), _amount);
    |        
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |        require(balances[_holder] >= _amount);
    |        balances[_holder] = balances[_holder].sub(_amount);
  > |        lockupInfo[_holder] = LockupInfo(_releaseStart, _termOfRound, _amount.mul(_releaseRate).div(100), _amount);
    |        
    |        locks[_holder] = true;
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |        lockupInfo[_holder] = LockupInfo(_releaseStart, _termOfRound, _amount.mul(_releaseRate).div(100), _amount);
    |        
  > |        locks[_holder] = true;
    |        
    |        emit Lock(_holder, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |        uint256 releaseAmount = lockupInfo[_holder].lockupBalance;
    |
  > |        delete lockupInfo[_holder];
    |        locks[_holder] = false;
    |
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |
    |        delete lockupInfo[_holder];
  > |        locks[_holder] = false;
    |
    |        emit Unlock(_holder, releaseAmount);
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |
    |        emit Unlock(_holder, releaseAmount);
  > |        balances[_holder] = balances[_holder].add(releaseAmount);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |    function freezeAccount(address _holder) public onlyOwner returns (bool) {
    |        require(!frozen[_holder]);
  > |        frozen[_holder] = true;
    |        emit Freeze(_holder);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |    function unfreezeAccount(address _holder) public onlyOwner returns (bool) {
    |        require(frozen[_holder]);
  > |        frozen[_holder] = false;
    |        emit Unfreeze(_holder);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |        require(_value <= balances[owner]);
    |
  > |        balances[owner] = balances[owner].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(owner, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |
    |        balances[owner] = balances[owner].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(owner, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |        require(_value <= balances[msg.sender]);
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |
    |    function mint( uint256 _amount) onlyOwner public returns (bool) {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[owner] = balances[owner].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |    function mint( uint256 _amount) onlyOwner public returns (bool) {
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[owner] = balances[owner].add(_amount);
    |
    |        emit Transfer(address(0), owner, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |            if (lockupInfo[_holder].lockupBalance <= lockupInfo[_holder].unlockAmountPerRound) {   
    |                releaseAmount = releaseAmount.add(lockupInfo[_holder].lockupBalance);
  > |                delete lockupInfo[_holder];
    |                locks[_holder] = false;
    |                break;             
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |                releaseAmount = releaseAmount.add(lockupInfo[_holder].lockupBalance);
    |                delete lockupInfo[_holder];
  > |                locks[_holder] = false;
    |                break;             
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |            } else {
    |                releaseAmount = releaseAmount.add(lockupInfo[_holder].unlockAmountPerRound);
  > |                lockupInfo[_holder].lockupBalance = lockupInfo[_holder].lockupBalance.sub(lockupInfo[_holder].unlockAmountPerRound);
    |
    |                lockupInfo[_holder].releaseTime = lockupInfo[_holder].releaseTime.add(lockupInfo[_holder].termOfRound);
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |                lockupInfo[_holder].lockupBalance = lockupInfo[_holder].lockupBalance.sub(lockupInfo[_holder].unlockAmountPerRound);
    |
  > |                lockupInfo[_holder].releaseTime = lockupInfo[_holder].releaseTime.add(lockupInfo[_holder].termOfRound);
    |                
    |            }            
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'FMToken':
    |
    |        emit Unlock(_holder, releaseAmount);
  > |        balances[_holder] = balances[_holder].add(releaseAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(348)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(63)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |  modifier whenNotPaused() {
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(89)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xf136322552040c2be4b478b00d0d1a84299c3a5a.sol(4)


