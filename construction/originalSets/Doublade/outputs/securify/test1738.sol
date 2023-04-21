Processing contract: /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol:ETVRToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol:TokenVesting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is StandardToken {
    |    event Burn(address indexed burner, uint256 value);
    |
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        require(_value > 0 && _value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        require(_value > 0 && _value <= balances[_from] && _value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        require(_value <= balances[_who]);
    |
  > |        balances[_who] = balances[_who].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        balances[_who] = balances[_who].sub(_value);
  > |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(_who, _value);
    |        emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        _burn(_from, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(195)

[33mWarning[0m for LockedEther in contract 'ETVRToken':
    |}
    |
  > |contract ETVRToken is PausableToken, BurnableToken, MintableToken {
    |    string public constant name     = "ETVR TOKEN";
    |    string public constant symbol   = "ETVR";
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |        require(_value > 0 && _value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |        require(_value > 0 && _value <= balances[_from] && _value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |        require(_value <= balances[_who]);
    |
  > |        balances[_who] = balances[_who].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |
    |        balances[_who] = balances[_who].sub(_value);
  > |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(_who, _value);
    |        emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        _burn(_from, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'ETVRToken':
    |
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(220)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |}
    |
  > |contract MintableToken is StandardToken, Ownable {
    |    event Mint(address indexed to, uint256 amount);
    |    event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(_value > 0 && _value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(_value > 0 && _value <= balances[_from] && _value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(220)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(46)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    modifier whenNotPaused() {
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(149)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    |}
    |
  > |contract PausableToken is StandardToken, Pausable {
    |    function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
    |        return super.transfer(_to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        require(_value > 0 && _value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(149)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    |}
    |
  > |library SafeERC20 {
    |    function safeTransfer(ERC20Interface token, address to, uint256 value) internal {
    |        assert(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(226)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.21;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20Interface {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_value > 0 && _value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(120)

[33mWarning[0m for LockedEther in contract 'TokenVesting':
    |}
    |
  > |contract TokenVesting is Ownable {
    |    using SafeMath for uint256;
    |    using SafeERC20 for ERC20Interface;
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(240)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |library SafeERC20 {
    |    function safeTransfer(ERC20Interface token, address to, uint256 value) internal {
  > |        assert(token.transfer(to, value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(228)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |        require(!revoked[token]);
    |
  > |        uint256 balance = token.balanceOf(this);
    |
    |        uint256 unreleased = releasableAmount(token);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(285)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |
    |    function vestedAmount(ERC20Interface token) public view returns (uint256) {
  > |        uint256 currentBalance = token.balanceOf(this);
    |        uint256 totalBalance = currentBalance.add(released[token]);
    |
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(302)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |library SafeERC20 {
    |    function safeTransfer(ERC20Interface token, address to, uint256 value) internal {
  > |        assert(token.transfer(to, value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(228)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |        require(!revoked[token]);
    |
  > |        uint256 balance = token.balanceOf(this);
    |
    |        uint256 unreleased = releasableAmount(token);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(285)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |
    |    function vestedAmount(ERC20Interface token) public view returns (uint256) {
  > |        uint256 currentBalance = token.balanceOf(this);
    |        uint256 totalBalance = currentBalance.add(released[token]);
    |
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |        require(unreleased > 0);
    |
  > |        released[token] = released[token].add(unreleased);
    |
    |        token.safeTransfer(beneficiary, unreleased);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |        uint256 refund = balance.sub(unreleased);
    |
  > |        revoked[token] = true;
    |
    |        token.safeTransfer(owner, refund);
  at /home/jiaming/mavs_srcs/contract@0x6ed8c49228397cbd0b62db04beaf0b7e9a4da93a.sol(290)


