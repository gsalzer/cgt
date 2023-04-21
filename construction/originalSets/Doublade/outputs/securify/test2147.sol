Processing contract: /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol:FunctionXToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol:TokenRecipient
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(102)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |
    |
  > |contract BurnableToken is StandardToken {
    |
    |    event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(290)

[31mViolation[0m for LockedEther in contract 'FunctionXToken':
    |
    |
  > |contract FunctionXToken is MintableToken, BurnableToken, PausableToken {
    |
    |    string public constant name = "Function X";
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(341)

[33mWarning[0m for UnhandledException in contract 'FunctionXToken':
    |        balances[_recipient] = balances[_recipient].add(_amount);
    |
  > |        require(TokenRecipient(_recipient).tokenFallback(msg.sender, _amount, _data));
    |        Transfer(msg.sender, _recipient, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(401)

[33mWarning[0m for UnhandledException in contract 'FunctionXToken':
    |
    |    function transferERCToken(address _tokenContractAddress, address _to, uint256 _amount) onlyOwner {
  > |        require(ERC20(_tokenContractAddress).transfer(_to, _amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(407)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FunctionXToken':
    |        balances[_recipient] = balances[_recipient].add(_amount);
    |
  > |        require(TokenRecipient(_recipient).tokenFallback(msg.sender, _amount, _data));
    |        Transfer(msg.sender, _recipient, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(401)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FunctionXToken':
    |
    |    function transferERCToken(address _tokenContractAddress, address _to, uint256 _amount) onlyOwner {
  > |        require(ERC20(_tokenContractAddress).transfer(_to, _amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |
    |    function setStopReceive(bool stop) {
  > |        stopReceive[msg.sender] = stop;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |        require(_amount <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_recipient] = balances[_recipient].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_recipient] = balances[_recipient].add(_amount);
    |
    |        require(TokenRecipient(_recipient).tokenFallback(msg.sender, _amount, _data));
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'FunctionXToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(268)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(268)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(65)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(221)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(230)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    |
    |
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(230)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(4)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(187)

[33mWarning[0m for LockedEther in contract 'TokenRecipient':
    |
    |
  > |contract TokenRecipient {
    |
    |    function tokenFallback(address sender, uint256 _value, bytes _extraData) returns (bool) {}
  at /home/jiaming/mavs_srcs/contract@0x8c15ef5b4b21951d50e53e4fbda8298ffad25057.sol(322)


