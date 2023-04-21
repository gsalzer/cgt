Processing contract: /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol:GiftCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol:GiftToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol:Whitelist
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol:Whitelistable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(113)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |* @dev Token that can be irreversibly burned (destroyed).
    |*/
  > |contract BurnableToken is StandardToken, Ownable {
    |
    |    event Burn(address indexed burner, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_amount);
    |        totalSupply = totalSupply.sub(_amount);
    |        Transfer(burner, address(0), _amount);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_amount);
  > |        totalSupply = totalSupply.sub(_amount);
    |        Transfer(burner, address(0), _amount);
    |        Burn(burner, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |        balances[_from] = balances[_from].sub(_amount);
    |        totalSupply = totalSupply.sub(_amount);
    |        Transfer(_from, address(0), _amount);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        balances[_from] = balances[_from].sub(_amount);
  > |        totalSupply = totalSupply.sub(_amount);
    |        Transfer(_from, address(0), _amount);
    |        Burn(_from, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(42)

[33mWarning[0m for DAOConstantGas in contract 'GiftCrowdsale':
    |    function withdrawal (address _wallet) onlyOwner whenSaleHasEnded external {
    |        require(_wallet != address(0));
  > |        _wallet.transfer(this.balance);
    |
    |        token.transferOwnership(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(612)

[33mWarning[0m for DAOConstantGas in contract 'GiftCrowdsale':
    |        uint256 investment = investments[msg.sender];
    |        investments[msg.sender] = 0;
  > |        (msg.sender).transfer(investment);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(646)

[33mWarning[0m for LockedEther in contract 'GiftCrowdsale':
    |// File: contracts/GiftCrowdsale.sol
    |
  > |contract GiftCrowdsale is Pausable, Whitelistable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(496)

[31mViolation[0m for TODAmount in contract 'GiftCrowdsale':
    |    function withdrawal (address _wallet) onlyOwner whenSaleHasEnded external {
    |        require(_wallet != address(0));
  > |        _wallet.transfer(this.balance);
    |
    |        token.transferOwnership(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(612)

[33mWarning[0m for TODReceiver in contract 'GiftCrowdsale':
    |    function withdrawal (address _wallet) onlyOwner whenSaleHasEnded external {
    |        require(_wallet != address(0));
  > |        _wallet.transfer(this.balance);
    |
    |        token.transferOwnership(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(612)

[33mWarning[0m for TODReceiver in contract 'GiftCrowdsale':
    |        uint256 investment = investments[msg.sender];
    |        investments[msg.sender] = 0;
  > |        (msg.sender).transfer(investment);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(646)

[33mWarning[0m for UnhandledException in contract 'GiftCrowdsale':
    |
    |    modifier whenWhitelisted(address _wallet) {
  > |        require(whitelist.isWhitelisted(_wallet));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(483)

[33mWarning[0m for UnhandledException in contract 'GiftCrowdsale':
    |        uint256 tokensAmount = (msg.value).mul(exchangeRate).mul(_bonus.add(100)).div((100 - _discount));
    |
  > |        token.transferFromIco(msg.sender, tokensAmount);
    |
    |        tokensSold = tokensSold.add(tokensAmount);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(591)

[33mWarning[0m for UnhandledException in contract 'GiftCrowdsale':
    |    function withdrawal (address _wallet) onlyOwner whenSaleHasEnded external {
    |        require(_wallet != address(0));
  > |        _wallet.transfer(this.balance);
    |
    |        token.transferOwnership(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(612)

[33mWarning[0m for UnhandledException in contract 'GiftCrowdsale':
    |        _wallet.transfer(this.balance);
    |
  > |        token.transferOwnership(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(614)

[33mWarning[0m for UnhandledException in contract 'GiftCrowdsale':
    |    */
    |    function assignTokens (address _to, uint256 _value) onlyOwner external {
  > |        token.transferFromIco(_to, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(623)

[33mWarning[0m for UnhandledException in contract 'GiftCrowdsale':
    |        require(investments[msg.sender] > 0);
    |
  > |        token.burnFrom(msg.sender, token.balanceOf(msg.sender));
    |
    |        uint256 investment = investments[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(642)

[33mWarning[0m for UnhandledException in contract 'GiftCrowdsale':
    |        uint256 investment = investments[msg.sender];
    |        investments[msg.sender] = 0;
  > |        (msg.sender).transfer(investment);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(646)

[33mWarning[0m for UnhandledException in contract 'GiftCrowdsale':
    |    */
    |    function transferTokenOwnership(address _newOwner) onlyOwner public {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(654)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GiftCrowdsale':
    |
    |    modifier whenWhitelisted(address _wallet) {
  > |        require(whitelist.isWhitelisted(_wallet));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(483)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GiftCrowdsale':
    |        uint256 tokensAmount = (msg.value).mul(exchangeRate).mul(_bonus.add(100)).div((100 - _discount));
    |
  > |        token.transferFromIco(msg.sender, tokensAmount);
    |
    |        tokensSold = tokensSold.add(tokensAmount);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(591)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GiftCrowdsale':
    |    function withdrawal (address _wallet) onlyOwner whenSaleHasEnded external {
    |        require(_wallet != address(0));
  > |        _wallet.transfer(this.balance);
    |
    |        token.transferOwnership(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(612)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GiftCrowdsale':
    |        _wallet.transfer(this.balance);
    |
  > |        token.transferOwnership(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(614)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GiftCrowdsale':
    |    */
    |    function assignTokens (address _to, uint256 _value) onlyOwner external {
  > |        token.transferFromIco(_to, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(623)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GiftCrowdsale':
    |        require(investments[msg.sender] > 0);
    |
  > |        token.burnFrom(msg.sender, token.balanceOf(msg.sender));
    |
    |        uint256 investment = investments[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(642)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GiftCrowdsale':
    |    */
    |    function transferTokenOwnership(address _newOwner) onlyOwner public {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(654)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftCrowdsale':
    |        token.transferFromIco(msg.sender, tokensAmount);
    |
  > |        tokensSold = tokensSold.add(tokensAmount);
    |
    |        addInvestment(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(593)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftCrowdsale':
    |    */
    |    function addInvestment(address _from, uint256 _value) internal {
  > |        investments[_from] = investments[_from].add(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(632)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftCrowdsale':
    |
    |        uint256 investment = investments[msg.sender];
  > |        investments[msg.sender] = 0;
    |        (msg.sender).transfer(investment);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(645)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftCrowdsale':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftCrowdsale':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftCrowdsale':
    |
    |    function updateIcoEnding(uint256 _endTimestamp) onlyOwner public {
  > |        endTimestamp = _endTimestamp;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(658)

[33mWarning[0m for LockedEther in contract 'GiftToken':
    |// File: contracts/GiftToken.sol
    |
  > |contract GiftToken is BurnableToken, Pausable {
    |    string constant public name = "Giftcoin";
    |    string constant public symbol = "GIFT";
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_amount);
    |        totalSupply = totalSupply.sub(_amount);
    |        Transfer(burner, address(0), _amount);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_amount);
  > |        totalSupply = totalSupply.sub(_amount);
    |        Transfer(burner, address(0), _amount);
    |        Burn(burner, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |        balances[_from] = balances[_from].sub(_amount);
    |        totalSupply = totalSupply.sub(_amount);
    |        Transfer(_from, address(0), _amount);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftToken':
    |
    |        balances[_from] = balances[_from].sub(_amount);
  > |        totalSupply = totalSupply.sub(_amount);
    |        Transfer(_from, address(0), _amount);
    |        Burn(_from, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(319)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(42)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(284)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(288)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(310)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(319)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(53)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(223)

[31mViolation[0m for LockedEther in contract 'Whitelist':
    | * @dev Whitelist for wallets, with additional data for every wallet.
    |*/
  > |contract Whitelist is Ownable {
    |    struct WalletInfo {
    |        string data;
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(393)

[31mViolation[0m for UnrestrictedWrite in contract 'Whitelist':
    | * @dev Whitelist for wallets, with additional data for every wallet.
    |*/
  > |contract Whitelist is Ownable {
    |    struct WalletInfo {
    |        string data;
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(393)

[31mViolation[0m for UnrestrictedWrite in contract 'Whitelist':
    |        require(!isWhitelisted(_wallet));
    |        whitelist[_wallet].data = _data;
  > |        whitelist[_wallet].whitelisted = true;
    |        whitelistLength++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(431)

[31mViolation[0m for UnrestrictedWrite in contract 'Whitelist':
    |        whitelist[_wallet].data = _data;
    |        whitelist[_wallet].whitelisted = true;
  > |        whitelistLength++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    | * @dev Whitelist for wallets, with additional data for every wallet.
    |*/
  > |contract Whitelist is Ownable {
    |    struct WalletInfo {
    |        string data;
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |        require(_api != address(0));
    |
  > |        addressApi = _api;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |        require(_wallet != address(0));
    |        require(isWhitelisted(_wallet));
  > |        delete whitelist[_wallet];
    |        whitelistLength--;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(455)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |        require(isWhitelisted(_wallet));
    |        delete whitelist[_wallet];
  > |        whitelistLength--;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(456)

[33mWarning[0m for LockedEther in contract 'Whitelistable':
    |// File: contracts/Whitelistable.sol
    |
  > |contract Whitelistable {
    |    Whitelist public whitelist;
    |
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(479)

[33mWarning[0m for MissingInputValidation in contract 'Whitelistable':
    |
    |contract Whitelistable {
  > |    Whitelist public whitelist;
    |
    |    modifier whenWhitelisted(address _wallet) {
  at /home/jiaming/mavs_srcs/contract@0x6834ffe10a402560cc37033f06321b8a632041c5.sol(480)


