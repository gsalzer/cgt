Processing contract: /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol:PALToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol:TokenRecipient
[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(63)

[33mWarning[0m for LockedEther in contract 'PALToken':
    |
    |
  > |contract PALToken is ERC20, Ownable, Pausable {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(112)

[33mWarning[0m for UnhandledException in contract 'PALToken':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(214)

[33mWarning[0m for UnhandledException in contract 'PALToken':
    |
    |    function claimToken(ERC20 token, address _to, uint256 _value) public onlyOwner returns (bool) {
  > |        token.transfer(_to, _value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PALToken':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(214)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PALToken':
    |
    |    function claimToken(ERC20 token, address _to, uint256 _value) public onlyOwner returns (bool) {
  > |        token.transfer(_to, _value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |        
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |
    |    function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |        require(_amount.mul(_releaseRate).div(100) > 0);
    |        require(balances[_holder] >= _amount);
  > |        balances[_holder] = balances[_holder].sub(_amount);
    |        lockupInfo[_holder] = LockupInfo(_releaseStart, _termOfRound, _amount.mul(_releaseRate).div(100), _amount);
    |        
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |        require(balances[_holder] >= _amount);
    |        balances[_holder] = balances[_holder].sub(_amount);
  > |        lockupInfo[_holder] = LockupInfo(_releaseStart, _termOfRound, _amount.mul(_releaseRate).div(100), _amount);
    |        
    |        locks[_holder] = true;
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |        lockupInfo[_holder] = LockupInfo(_releaseStart, _termOfRound, _amount.mul(_releaseRate).div(100), _amount);
    |        
  > |        locks[_holder] = true;
    |        
    |        emit Lock(_holder, _amount);
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |        uint256 releaseAmount = lockupInfo[_holder].lockupBalance;
    |
  > |        delete lockupInfo[_holder];
    |        locks[_holder] = false;
    |
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |
    |        delete lockupInfo[_holder];
  > |        locks[_holder] = false;
    |
    |        emit Unlock(_holder, releaseAmount);
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |
    |        emit Unlock(_holder, releaseAmount);
  > |        balances[_holder] = balances[_holder].add(releaseAmount);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |    function freezeAccount(address _holder) public onlyOwner returns (bool) {
    |        require(!frozen[_holder]);
  > |        frozen[_holder] = true;
    |        emit Freeze(_holder);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |    function unfreezeAccount(address _holder) public onlyOwner returns (bool) {
    |        require(frozen[_holder]);
  > |        frozen[_holder] = false;
    |        emit Unfreeze(_holder);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |        require(_value <= balances[owner]);
    |
  > |        balances[owner] = balances[owner].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(owner, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |
    |        balances[owner] = balances[owner].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(owner, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |        require(_value <= balances[msg.sender]);
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |            if (lockupInfo[_holder].lockupBalance <= lockupInfo[_holder].unlockAmountPerRound) {   
    |                releaseAmount = releaseAmount.add(lockupInfo[_holder].lockupBalance);
  > |                delete lockupInfo[_holder];
    |                locks[_holder] = false;
    |                break;             
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |                releaseAmount = releaseAmount.add(lockupInfo[_holder].lockupBalance);
    |                delete lockupInfo[_holder];
  > |                locks[_holder] = false;
    |                break;             
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |            } else {
    |                releaseAmount = releaseAmount.add(lockupInfo[_holder].unlockAmountPerRound);
  > |                lockupInfo[_holder].lockupBalance = lockupInfo[_holder].lockupBalance.sub(lockupInfo[_holder].unlockAmountPerRound);
    |
    |                lockupInfo[_holder].releaseTime = lockupInfo[_holder].releaseTime.add(lockupInfo[_holder].termOfRound);
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |                lockupInfo[_holder].lockupBalance = lockupInfo[_holder].lockupBalance.sub(lockupInfo[_holder].unlockAmountPerRound);
    |
  > |                lockupInfo[_holder].releaseTime = lockupInfo[_holder].releaseTime.add(lockupInfo[_holder].termOfRound);
    |                
    |            }            
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'PALToken':
    |
    |        emit Unlock(_holder, releaseAmount);
  > |        balances[_holder] = balances[_holder].add(releaseAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(340)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |  modifier whenNotPaused() {
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(89)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x4d3e79440595eb872aacdf2769c1e5e3d4a2707c.sol(4)


