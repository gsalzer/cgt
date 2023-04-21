Processing contract: /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol:KSTToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol:TokenRecipient
[33mWarning[0m for LockedEther in contract 'KSTToken':
    |
    |
  > |contract KSTToken is ERC20, Ownable, Pausable {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(112)

[33mWarning[0m for UnhandledException in contract 'KSTToken':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(214)

[33mWarning[0m for UnhandledException in contract 'KSTToken':
    |
    |    function claimToken(ERC20 token, address _to, uint256 _value) public onlyOwner returns (bool) {
  > |        token.transfer(_to, _value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KSTToken':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(214)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KSTToken':
    |
    |    function claimToken(ERC20 token, address _to, uint256 _value) public onlyOwner returns (bool) {
  > |        token.transfer(_to, _value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |        
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |
    |    function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |        require(_amount.mul(_releaseRate).div(100) > 0);
    |        require(balances[_holder] >= _amount);
  > |        balances[_holder] = balances[_holder].sub(_amount);
    |        lockupInfo[_holder] = LockupInfo(_releaseStart, _termOfRound, _amount.mul(_releaseRate).div(100), _amount);
    |        
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |        require(balances[_holder] >= _amount);
    |        balances[_holder] = balances[_holder].sub(_amount);
  > |        lockupInfo[_holder] = LockupInfo(_releaseStart, _termOfRound, _amount.mul(_releaseRate).div(100), _amount);
    |        
    |        locks[_holder] = true;
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |        lockupInfo[_holder] = LockupInfo(_releaseStart, _termOfRound, _amount.mul(_releaseRate).div(100), _amount);
    |        
  > |        locks[_holder] = true;
    |        
    |        emit Lock(_holder, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |        uint256 releaseAmount = lockupInfo[_holder].lockupBalance;
    |
  > |        delete lockupInfo[_holder];
    |        locks[_holder] = false;
    |
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |
    |        delete lockupInfo[_holder];
  > |        locks[_holder] = false;
    |
    |        emit Unlock(_holder, releaseAmount);
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |
    |        emit Unlock(_holder, releaseAmount);
  > |        balances[_holder] = balances[_holder].add(releaseAmount);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |    function freezeAccount(address _holder) public onlyOwner returns (bool) {
    |        require(!frozen[_holder]);
  > |        frozen[_holder] = true;
    |        emit Freeze(_holder);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |    function unfreezeAccount(address _holder) public onlyOwner returns (bool) {
    |        require(frozen[_holder]);
  > |        frozen[_holder] = false;
    |        emit Unfreeze(_holder);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |        require(_value <= balances[owner]);
    |
  > |        balances[owner] = balances[owner].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(owner, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |
    |        balances[owner] = balances[owner].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(owner, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |        require(_value <= balances[msg.sender]);
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |
    |    function mint( uint256 _amount) onlyOwner public returns (bool) {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[owner] = balances[owner].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |    function mint( uint256 _amount) onlyOwner public returns (bool) {
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[owner] = balances[owner].add(_amount);
    |
    |        emit Transfer(address(0), owner, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |            if (lockupInfo[_holder].lockupBalance <= lockupInfo[_holder].unlockAmountPerRound) {   
    |                releaseAmount = releaseAmount.add(lockupInfo[_holder].lockupBalance);
  > |                delete lockupInfo[_holder];
    |                locks[_holder] = false;
    |                break;             
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |                releaseAmount = releaseAmount.add(lockupInfo[_holder].lockupBalance);
    |                delete lockupInfo[_holder];
  > |                locks[_holder] = false;
    |                break;             
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |            } else {
    |                releaseAmount = releaseAmount.add(lockupInfo[_holder].unlockAmountPerRound);
  > |                lockupInfo[_holder].lockupBalance = lockupInfo[_holder].lockupBalance.sub(lockupInfo[_holder].unlockAmountPerRound);
    |
    |                lockupInfo[_holder].releaseTime = lockupInfo[_holder].releaseTime.add(lockupInfo[_holder].termOfRound);
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |                lockupInfo[_holder].lockupBalance = lockupInfo[_holder].lockupBalance.sub(lockupInfo[_holder].unlockAmountPerRound);
    |
  > |                lockupInfo[_holder].releaseTime = lockupInfo[_holder].releaseTime.add(lockupInfo[_holder].termOfRound);
    |                
    |            }            
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'KSTToken':
    |
    |        emit Unlock(_holder, releaseAmount);
  > |        balances[_holder] = balances[_holder].add(releaseAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(348)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(63)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |  modifier whenNotPaused() {
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(89)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x2a3956fdced9a0f9ace46426e5cfaa0f1939247d.sol(4)


