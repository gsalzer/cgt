Processing contract: /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol:CanReclaimToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol:CappedBurnToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol:DetailedERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol:PDP
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(154)

[33mWarning[0m for LockedEther in contract 'CanReclaimToken':
    |}
    |
  > |contract CanReclaimToken is Ownable {
    |  using SafeERC20 for ERC20Basic;
    |
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(118)

[33mWarning[0m for UnhandledException in contract 'CanReclaimToken':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(106)

[33mWarning[0m for UnhandledException in contract 'CanReclaimToken':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(126)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanReclaimToken':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanReclaimToken':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(126)

[33mWarning[0m for LockedEther in contract 'CappedBurnToken':
    |// --- BEGIN Custom Code ---
    |// Up until here things have been stock from OpenZeppelin
  > |contract CappedBurnToken is StandardToken, Ownable {
    |
    |  uint256 public cap;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedBurnToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedBurnToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedBurnToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedBurnToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedBurnToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedBurnToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedBurnToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedBurnToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedBurnToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedBurnToken':
    |  function mint(address _to, uint256 _amount) onlyOwner external returns (bool) {
    |    require(totalSupply_.add(_amount) <= cap);
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedBurnToken':
    |    require(totalSupply_.add(_amount) <= cap);
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedBurnToken':
    |    address burner = msg.sender;
    |    require(_value <= balances[burner]);
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    cap = cap.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedBurnToken':
    |    require(_value <= balances[burner]);
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    cap = cap.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedBurnToken':
    |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
  > |    cap = cap.sub(_value);
    |    Burn(burner, _value);
    |    Transfer(msg.sender, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedBurnToken':
    |    address burner = msg.sender;
    |    require(_value <= balances[burner]);
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Unmint(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedBurnToken':
    |    require(_value <= balances[burner]);
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    Unmint(burner, _value);
    |    Transfer(msg.sender, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(269)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(70)

[33mWarning[0m for DAOConstantGas in contract 'PDP':
    |      saleSharesSold = saleSharesSold.add(shareTarget);
    |      Purchase(msg.sender, shareTarget);
  > |      saleWallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(314)

[33mWarning[0m for LockedEther in contract 'PDP':
    |}
    |
  > |contract PDP is CappedBurnToken(144200000), DetailedERC20, CanReclaimToken { 
    |  uint256 public saleMinShares;
    |  uint256 public salePriceWei;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(288)

[31mViolation[0m for TODReceiver in contract 'PDP':
    |      saleSharesSold = saleSharesSold.add(shareTarget);
    |      Purchase(msg.sender, shareTarget);
  > |      saleWallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(314)

[33mWarning[0m for UnhandledException in contract 'PDP':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(106)

[33mWarning[0m for UnhandledException in contract 'PDP':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(126)

[33mWarning[0m for UnhandledException in contract 'PDP':
    |      saleSharesSold = saleSharesSold.add(shareTarget);
    |      Purchase(msg.sender, shareTarget);
  > |      saleWallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(314)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PDP':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PDP':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(126)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PDP':
    |      saleSharesSold = saleSharesSold.add(shareTarget);
    |      Purchase(msg.sender, shareTarget);
  > |      saleWallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |  function mint(address _to, uint256 _amount) onlyOwner external returns (bool) {
    |    require(totalSupply_.add(_amount) <= cap);
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |    require(totalSupply_.add(_amount) <= cap);
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |    address burner = msg.sender;
    |    require(_value <= balances[burner]);
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    cap = cap.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |    require(_value <= balances[burner]);
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    cap = cap.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
  > |    cap = cap.sub(_value);
    |    Burn(burner, _value);
    |    Transfer(msg.sender, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |    address burner = msg.sender;
    |    require(_value <= balances[burner]);
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Unmint(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |    require(_value <= balances[burner]);
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    Unmint(burner, _value);
    |    Transfer(msg.sender, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |      require(shareTarget >= saleMinShares);
    |      require(shareTarget <= saleSharesAvail);
  > |      saleSharesAvail = saleSharesAvail.sub(shareTarget);
    |      saleSharesSold = saleSharesSold.add(shareTarget);
    |      Purchase(msg.sender, shareTarget);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |      require(shareTarget <= saleSharesAvail);
    |      saleSharesAvail = saleSharesAvail.sub(shareTarget);
  > |      saleSharesSold = saleSharesSold.add(shareTarget);
    |      Purchase(msg.sender, shareTarget);
    |      saleWallet.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |    if (newWallet == address(0)) {
    |      // End sale
  > |      saleWallet = address(0);
    |      salePriceWei = 0;
    |      saleSharesAvail = 0;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |      // End sale
    |      saleWallet = address(0);
  > |      salePriceWei = 0;
    |      saleSharesAvail = 0;
    |      saleMinShares = 0;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |      saleWallet = address(0);
    |      salePriceWei = 0;
  > |      saleSharesAvail = 0;
    |      saleMinShares = 0;
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |      salePriceWei = 0;
    |      saleSharesAvail = 0;
  > |      saleMinShares = 0;
    |    } else {
    |      // These checks are just to be a bit safer and avoid typo mistake
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |      require(newMinShares < 20000); // Min purchase should not be too high
    |      require(newPriceWei > 100000000000000); // At least around $0.10 / share
  > |      saleMinShares = newMinShares;
    |      salePriceWei = newPriceWei;
    |      saleSharesAvail = newSharesAvail;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |      require(newPriceWei > 100000000000000); // At least around $0.10 / share
    |      saleMinShares = newMinShares;
  > |      salePriceWei = newPriceWei;
    |      saleSharesAvail = newSharesAvail;
    |      saleWallet = newWallet;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |      saleMinShares = newMinShares;
    |      salePriceWei = newPriceWei;
  > |      saleSharesAvail = newSharesAvail;
    |      saleWallet = newWallet;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |      salePriceWei = newPriceWei;
    |      saleSharesAvail = newSharesAvail;
  > |      saleWallet = newWallet;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'PDP':
    |    // Next check is not perfect in light of multiple sale rounds but should work for main single round 
    |    require(totalSupply_ >= saleSharesSold); // All sold tokens must be distributed
  > |    saleSharesSold = 0;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(346)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    |}
    |
  > |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
    |    assert(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(104)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(37)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5afeda7e32c61b80c25f78ac7f6cfb5de613b509.sol(221)


