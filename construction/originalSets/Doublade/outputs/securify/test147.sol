Processing contract: /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol:AlttexToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AlttexToken':
    |}
    |
  > |contract AlttexToken is BurnableToken {
    |    string public constant name = "Alttex";
    |    string public constant symbol = "ALTX";
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |  onlyPayloadSize(2)
    |  returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |   */
    |  function mint(address _to, uint256 _amount) public onlyAdmin whenNotPaused canMint returns  (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |  function mint(address _to, uint256 _amount) public onlyAdmin whenNotPaused canMint returns  (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(this), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
    |    Transfer(burner, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |    require(balances[_from] >= _value);// Check if the targeted balance is enough
    |    require(_value <= allowed[_from][msg.sender]);// Check allowance
  > |    balances[_from] = balances[_from].sub(_value); // Subtract from the targeted balance
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); // Subtract from the sender's allowance
    |    totalSupply = totalSupply.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |    require(_value <= allowed[_from][msg.sender]);// Check allowance
    |    balances[_from] = balances[_from].sub(_value); // Subtract from the targeted balance
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); // Subtract from the sender's allowance
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(388)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |    balances[_from] = balances[_from].sub(_value); // Subtract from the targeted balance
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); // Subtract from the sender's allowance
  > |    totalSupply = totalSupply.sub(_value);
    |    Burn(_from, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(389)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |  function setSaleAgent(address newSaleAgent) onlyOwner public {
    |    require(newSaleAgent != address(0)); 
  > |    saleAgent = newSaleAgent;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |  function setPartner(address newPartner) onlyOwner public {
    |    require(newPartner != address(0)); 
  > |    partner = newPartner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |
    |  function setStorageTime(uint256 _time) public onlyOwner {
  > |    storageTime = _time;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'AlttexToken':
    |   */
    |  function finishMinting() public onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(352)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances. 
    | */
  > |contract BasicToken is ERC20Basic, Pausable {
    |    
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function setSaleAgent(address newSaleAgent) onlyOwner public {
    |    require(newSaleAgent != address(0)); 
  > |    saleAgent = newSaleAgent;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function setPartner(address newPartner) onlyOwner public {
    |    require(newPartner != address(0)); 
  > |    partner = newPartner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |  function setStorageTime(uint256 _time) public onlyOwner {
  > |    storageTime = _time;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(180)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is MintableToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  onlyPayloadSize(2)
    |  returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function mint(address _to, uint256 _amount) public onlyAdmin whenNotPaused canMint returns  (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function mint(address _to, uint256 _amount) public onlyAdmin whenNotPaused canMint returns  (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(this), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
    |    Transfer(burner, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(balances[_from] >= _value);// Check if the targeted balance is enough
    |    require(_value <= allowed[_from][msg.sender]);// Check allowance
  > |    balances[_from] = balances[_from].sub(_value); // Subtract from the targeted balance
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); // Subtract from the sender's allowance
    |    totalSupply = totalSupply.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= allowed[_from][msg.sender]);// Check allowance
    |    balances[_from] = balances[_from].sub(_value); // Subtract from the targeted balance
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); // Subtract from the sender's allowance
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(388)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value); // Subtract from the targeted balance
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); // Subtract from the sender's allowance
  > |    totalSupply = totalSupply.sub(_value);
    |    Burn(_from, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(389)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function setSaleAgent(address newSaleAgent) onlyOwner public {
    |    require(newSaleAgent != address(0)); 
  > |    saleAgent = newSaleAgent;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function setPartner(address newPartner) onlyOwner public {
    |    require(newPartner != address(0)); 
  > |    partner = newPartner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |  function setStorageTime(uint256 _time) public onlyOwner {
  > |    storageTime = _time;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function finishMinting() public onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(352)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken{
    |    
    |  event Mint(address indexed to, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  onlyPayloadSize(2)
    |  returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) public onlyAdmin whenNotPaused canMint returns  (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) public onlyAdmin whenNotPaused canMint returns  (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(this), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function setSaleAgent(address newSaleAgent) onlyOwner public {
    |    require(newSaleAgent != address(0)); 
  > |    saleAgent = newSaleAgent;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function setPartner(address newPartner) onlyOwner public {
    |    require(newPartner != address(0)); 
  > |    partner = newPartner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function setStorageTime(uint256 _time) public onlyOwner {
  > |    storageTime = _time;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() public onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(352)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    
  > |  address public owner;
    |  
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(91)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  address public saleAgent;
    |  address public partner;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |    
  > |  address public owner;
    |  
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Pausable is Ownable {
  > |  address public saleAgent;
    |  address public partner;
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Pausable is Ownable {
    |  address public saleAgent;
  > |  address public partner;
    |
    |  modifier onlyAdmin() {
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function setSaleAgent(address newSaleAgent) onlyOwner public {
    |    require(newSaleAgent != address(0)); 
    |    saleAgent = newSaleAgent;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function setPartner(address newPartner) onlyOwner public {
    |    require(newPartner != address(0)); 
    |    partner = newPartner;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function setSaleAgent(address newSaleAgent) onlyOwner public {
    |    require(newSaleAgent != address(0)); 
  > |    saleAgent = newSaleAgent;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function setPartner(address newPartner) onlyOwner public {
    |    require(newPartner != address(0)); 
  > |    partner = newPartner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(152)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(30)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  onlyPayloadSize(2)
    |  returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function setSaleAgent(address newSaleAgent) onlyOwner public {
    |    require(newSaleAgent != address(0)); 
  > |    saleAgent = newSaleAgent;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function setPartner(address newPartner) onlyOwner public {
    |    require(newPartner != address(0)); 
  > |    partner = newPartner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function setStorageTime(uint256 _time) public onlyOwner {
  > |    storageTime = _time;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x09b510a0e0fa1886eed0e17ba9b42c001cfeb7f7.sol(180)


