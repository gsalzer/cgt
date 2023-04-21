Processing contract: /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol:DRCTestToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(147)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is BasicToken {
    |
    |    event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(178)

[33mWarning[0m for LockedEther in contract 'DRCTestToken':
    |}
    |
  > |contract DRCTestToken is BurnableToken, MintableToken, PausableToken {    
    |
    |    string public name = 'DRC Test Token 1';
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(339)

[33mWarning[0m for UnhandledException in contract 'DRCTestToken':
    |        if (approve(_spender, _value)) {
    |
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(511)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCTestToken':
    |        if (approve(_spender, _value)) {
    |
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(511)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_values[i]);
    |        balances[_toMulti[i]] = balances[_toMulti[i]].add(_values[i]);
    |        Transfer(msg.sender, _toMulti[i], _values[i]);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_values[i]);
  > |        balances[_toMulti[i]] = balances[_toMulti[i]].add(_values[i]);
    |        Transfer(msg.sender, _toMulti[i], _values[i]);
    |
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(416)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[_from] = balances[_from].sub(_values[i]);
    |        balances[_toMulti[i]] = balances[_toMulti[i]].add(_values[i]);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_values[i]);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(441)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[_from] = balances[_from].sub(_values[i]);
  > |        balances[_toMulti[i]] = balances[_toMulti[i]].add(_values[i]);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_values[i]);
    |        Transfer(_from, _toMulti[i], _values[i]);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |        balances[_from] = balances[_from].sub(_values[i]);
    |        balances[_toMulti[i]] = balances[_toMulti[i]].add(_values[i]);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_values[i]);
    |        Transfer(_from, _toMulti[i], _values[i]);
    |
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(443)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |        require(_value <= allowed[_from][msg.sender]);    // Check allowance
    |
  > |        balances[_from] = balances[_from].sub(_value);                         // Subtract from the targeted balance
    |
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);             // Subtract from the sender's allowance
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |        balances[_from] = balances[_from].sub(_value);                         // Subtract from the targeted balance
    |
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);             // Subtract from the sender's allowance
    |
    |        totalSupply = totalSupply.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(475)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);             // Subtract from the sender's allowance
    |
  > |        totalSupply = totalSupply.sub(_value);
    |
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(477)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCTestToken':
    |     */
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(377)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |}
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(310)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(80)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(120)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    |}
    |
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(120)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(19)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa11b7b74f5ebc096f2bd4e1661a112cb857b62bb.sol(271)


