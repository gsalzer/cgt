Processing contract: /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol:ONYXToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol:TokenRecipient
[33mWarning[0m for LockedEther in contract 'ONYXToken':
    |
    |
  > |contract ONYXToken is ERC20, Ownable, Pausable {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(112)

[33mWarning[0m for UnhandledException in contract 'ONYXToken':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(210)

[33mWarning[0m for UnhandledException in contract 'ONYXToken':
    |
    |    function claimToken(ERC20 token, address _to, uint256 _value) public onlyOwner returns (bool) {
  > |        token.transfer(_to, _value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(284)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ONYXToken':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ONYXToken':
    |
    |    function claimToken(ERC20 token, address _to, uint256 _value) public onlyOwner returns (bool) {
  > |        token.transfer(_to, _value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |        
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |
    |    function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |        require(locks[_holder] == false);
    |        require(balances[_holder] >= _amount);
  > |        balances[_holder] = balances[_holder].sub(_amount);
    |        lockupInfo[_holder] = LockupInfo(_releaseStart, _termOfRound, _amount.div(100).mul(_releaseRate), _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |        require(balances[_holder] >= _amount);
    |        balances[_holder] = balances[_holder].sub(_amount);
  > |        lockupInfo[_holder] = LockupInfo(_releaseStart, _termOfRound, _amount.div(100).mul(_releaseRate), _amount);
    |
    |        locks[_holder] = true;
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |        lockupInfo[_holder] = LockupInfo(_releaseStart, _termOfRound, _amount.div(100).mul(_releaseRate), _amount);
    |
  > |        locks[_holder] = true;
    |
    |        emit Lock(_holder, _amount);
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |        uint256 releaseAmount = lockupInfo[_holder].lockupBalance;
    |
  > |        delete lockupInfo[_holder];
    |        locks[_holder] = false;
    |
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |
    |        delete lockupInfo[_holder];
  > |        locks[_holder] = false;
    |
    |        emit Unlock(_holder, releaseAmount);
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |
    |        emit Unlock(_holder, releaseAmount);
  > |        balances[_holder] = balances[_holder].add(releaseAmount);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |    function freezeAccount(address _holder) public onlyOwner returns (bool) {
    |        require(!frozen[_holder]);
  > |        frozen[_holder] = true;
    |        emit Freeze(_holder);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |    function unfreezeAccount(address _holder) public onlyOwner returns (bool) {
    |        require(frozen[_holder]);
  > |        frozen[_holder] = false;
    |        emit Unfreeze(_holder);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |        require(_value <= balances[owner]);
    |
  > |        balances[owner] = balances[owner].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(owner, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |
    |        balances[owner] = balances[owner].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(owner, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |        require(_value <= balances[msg.sender]);
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |
    |    function mint( uint256 _amount) onlyOwner public returns (bool) {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[owner] = balances[owner].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |    function mint( uint256 _amount) onlyOwner public returns (bool) {
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[owner] = balances[owner].add(_amount);
    |
    |        emit Transfer(address(0), owner, _amount);
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |            if (lockupInfo[_holder].lockupBalance <= lockupInfo[_holder].unlockAmountPerRound) {   
    |                releaseAmount = releaseAmount.add(lockupInfo[_holder].lockupBalance);
  > |                delete lockupInfo[_holder];
    |                locks[_holder] = false;
    |                break;             
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |                releaseAmount = releaseAmount.add(lockupInfo[_holder].lockupBalance);
    |                delete lockupInfo[_holder];
  > |                locks[_holder] = false;
    |                break;             
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |            } else {
    |                releaseAmount = releaseAmount.add(lockupInfo[_holder].unlockAmountPerRound);
  > |                lockupInfo[_holder].lockupBalance = lockupInfo[_holder].lockupBalance.sub(lockupInfo[_holder].unlockAmountPerRound);
    |
    |                lockupInfo[_holder].releaseTime = lockupInfo[_holder].releaseTime.add(lockupInfo[_holder].termOfRound);
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |                lockupInfo[_holder].lockupBalance = lockupInfo[_holder].lockupBalance.sub(lockupInfo[_holder].unlockAmountPerRound);
    |
  > |                lockupInfo[_holder].releaseTime = lockupInfo[_holder].releaseTime.add(lockupInfo[_holder].termOfRound);
    |                
    |            }            
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'ONYXToken':
    |
    |        emit Unlock(_holder, releaseAmount);
  > |        balances[_holder] = balances[_holder].add(releaseAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(340)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(63)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |  modifier whenNotPaused() {
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(89)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x46bf185867dc7e39ebfb9796a63b9be8a7caeed9.sol(4)


