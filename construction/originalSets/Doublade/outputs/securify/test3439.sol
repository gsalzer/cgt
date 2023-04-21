Processing contract: /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol:HTHToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol:TokenRecipient
[33mWarning[0m for LockedEther in contract 'HTHToken':
    |
    |
  > |contract HTHToken is ERC20, Ownable, Pausable {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(112)

[33mWarning[0m for UnhandledException in contract 'HTHToken':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(192)

[33mWarning[0m for UnhandledException in contract 'HTHToken':
    |
    |    function claimToken(ERC20 token, address _to, uint256 _value) public onlyOwner returns (bool) {
  > |        token.transfer(_to, _value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(220)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HTHToken':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(192)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HTHToken':
    |
    |    function claimToken(ERC20 token, address _to, uint256 _value) public onlyOwner returns (bool) {
  > |        token.transfer(_to, _value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'HTHToken':
    |        
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'HTHToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'HTHToken':
    |        
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'HTHToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'HTHToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'HTHToken':
    |
    |    function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'HTHToken':
    |        require(_value <= balances[msg.sender]);
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'HTHToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'HTHToken':
    |
    |    function mint( uint256 _amount) onlyOwner public returns (bool) {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[owner] = balances[owner].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'HTHToken':
    |    function mint( uint256 _amount) onlyOwner public returns (bool) {
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[owner] = balances[owner].add(_amount);
    |
    |        emit Transfer(address(0), owner, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'HTHToken':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'HTHToken':
    |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'HTHToken':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'HTHToken':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'HTHToken':
    |    function freezeAccount(address _holder) public onlyOwner returns (bool) {
    |        require(!frozen[_holder]);
  > |        frozen[_holder] = true;
    |        emit Freeze(_holder);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'HTHToken':
    |    function unfreezeAccount(address _holder) public onlyOwner returns (bool) {
    |        require(frozen[_holder]);
  > |        frozen[_holder] = false;
    |        emit Unfreeze(_holder);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(210)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(63)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |  modifier whenNotPaused() {
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(89)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xe15ca699d0c788c783b6d165853c0a0474c8ec59.sol(4)


