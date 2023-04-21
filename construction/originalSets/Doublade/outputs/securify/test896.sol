Processing contract: /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol:EmeraldToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol:TokenDistribution
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EmeraldToken':
    |
    |
  > |contract EmeraldToken is StandardToken, Ownable {
    |
    |  string public name;
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool) {
    |    require(balances[msg.sender] >= _value);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |    require(balances[msg.sender] >= _value);
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |  function transferFrom(address _from, address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool) {
    |    require(balances[_from] >= _value && allowed[_from][_to] >= _value);
  > |    allowed[_from][_to] = allowed[_from][_to].sub(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |    require(balances[_from] >= _value && allowed[_from][_to] >= _value);
    |    allowed[_from][_to] = allowed[_from][_to].sub(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |    allowed[_from][_to] = allowed[_from][_to].sub(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |  */
    |  function setProducer(address _addr, bool _status) onlyOwner {
  > |    producers[_addr] = _status;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |  */
    |  function produceEmeralds(address _receiver, uint _amount) onlyProducer inProduction {
  > |    balances[_receiver] = balances[_receiver].add(_amount);
    |    totalSupply = totalSupply.add(_amount);
    |    Transfer(0, _receiver, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |  function produceEmeralds(address _receiver, uint _amount) onlyProducer inProduction {
    |    balances[_receiver] = balances[_receiver].add(_amount);
  > |    totalSupply = totalSupply.add(_amount);
    |    Transfer(0, _receiver, _amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'EmeraldToken':
    |   */
    |  function releaseTokenTransfer() onlyOwner {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(245)

[33mWarning[0m for LockedEther in contract 'Haltable':
    | * Originally envisioned in FirstBlood ICO contract.
    | */
  > |contract Haltable is Ownable {
    |  bool public halted = false;
    |
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(269)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Ownable {
  > |  address public owner = msg.sender;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(173)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Haltable is Ownable {
  > |  bool public halted = false;
    |
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(270)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function halt() external onlyOwner {
    |    halted = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(283)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function unhalt() external onlyOwner onlyInEmergency {
    |    halted = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(289)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner = msg.sender;
    |
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner = msg.sender;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(175)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(10)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20 {
    |
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) returns (bool) {
    |    require(balances[msg.sender] >= _value);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(134)

[31mViolation[0m for DAOConstantGas in contract 'TokenDistribution':
    |    uint weiValue = contributors[msg.sender];
    |    require(weiValue <= loadedRefund && weiValue <= this.balance);
  > |    msg.sender.transfer(weiValue);
    |    contributors[msg.sender] = 0;
    |    weiRefunded = weiRefunded.add(weiValue);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(416)

[33mWarning[0m for LockedEther in contract 'TokenDistribution':
    |*/
    |
  > |contract TokenDistribution is Haltable {
    |
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(298)

[33mWarning[0m for TODAmount in contract 'TokenDistribution':
    |    token.produceEmeralds(_receiver, _tokenAmount);
    |    if (_weiAmount > 0) 
  > |      wallet.transfer(_weiAmount);
    |    if (contributors[_receiver] == 0) contributorsCount++;
    |    tokensSold = tokensSold.add(_tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(403)

[33mWarning[0m for TODReceiver in contract 'TokenDistribution':
    |    uint weiValue = contributors[msg.sender];
    |    require(weiValue <= loadedRefund && weiValue <= this.balance);
  > |    msg.sender.transfer(weiValue);
    |    contributors[msg.sender] = 0;
    |    weiRefunded = weiRefunded.add(weiValue);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(416)

[33mWarning[0m for UnhandledException in contract 'TokenDistribution':
    |  */
    |  function preallocate(address _receiver, uint _tokenAmountNoDecimals) onlyOwner stopInEmergency {
  > |    require(getState() != States.Failure && getState() != States.Refunding && !token.released());
    |    uint tokenAmount = _tokenAmountNoDecimals * 10 ** token.decimals();
    |    contributeInternal(_receiver, 0, tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(371)

[33mWarning[0m for UnhandledException in contract 'TokenDistribution':
    |  function preallocate(address _receiver, uint _tokenAmountNoDecimals) onlyOwner stopInEmergency {
    |    require(getState() != States.Failure && getState() != States.Refunding && !token.released());
  > |    uint tokenAmount = _tokenAmountNoDecimals * 10 ** token.decimals();
    |    contributeInternal(_receiver, 0, tokenAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(372)

[33mWarning[0m for UnhandledException in contract 'TokenDistribution':
    |  */
    |  function contributeInternal(address _receiver, uint _weiAmount, uint _tokenAmount) internal {
  > |    require(token.totalSupply().add(_tokenAmount) <= maxCap);
    |    token.produceEmeralds(_receiver, _tokenAmount);
    |    if (_weiAmount > 0) 
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(400)

[33mWarning[0m for UnhandledException in contract 'TokenDistribution':
    |  function contributeInternal(address _receiver, uint _weiAmount, uint _tokenAmount) internal {
    |    require(token.totalSupply().add(_tokenAmount) <= maxCap);
  > |    token.produceEmeralds(_receiver, _tokenAmount);
    |    if (_weiAmount > 0) 
    |      wallet.transfer(_weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(401)

[33mWarning[0m for UnhandledException in contract 'TokenDistribution':
    |    token.produceEmeralds(_receiver, _tokenAmount);
    |    if (_weiAmount > 0) 
  > |      wallet.transfer(_weiAmount);
    |    if (contributors[_receiver] == 0) contributorsCount++;
    |    tokensSold = tokensSold.add(_tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(403)

[33mWarning[0m for UnhandledException in contract 'TokenDistribution':
    |    uint weiValue = contributors[msg.sender];
    |    require(weiValue <= loadedRefund && weiValue <= this.balance);
  > |    msg.sender.transfer(weiValue);
    |    contributors[msg.sender] = 0;
    |    weiRefunded = weiRefunded.add(weiValue);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(416)

[33mWarning[0m for UnhandledException in contract 'TokenDistribution':
    |  */
    |  function getTokenAmount(uint _weiAmount) internal constant returns (uint) {
  > |    uint rate = 1000 * 10 ** 18 / 10 ** token.decimals(); // 1000 EMR = 1 ETH
    |    uint tokenAmount = _weiAmount * rate;
    |    if (getState() == States.Presale)
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(440)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDistribution':
    |  */
    |  function preallocate(address _receiver, uint _tokenAmountNoDecimals) onlyOwner stopInEmergency {
  > |    require(getState() != States.Failure && getState() != States.Refunding && !token.released());
    |    uint tokenAmount = _tokenAmountNoDecimals * 10 ** token.decimals();
    |    contributeInternal(_receiver, 0, tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(371)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDistribution':
    |  function preallocate(address _receiver, uint _tokenAmountNoDecimals) onlyOwner stopInEmergency {
    |    require(getState() != States.Failure && getState() != States.Refunding && !token.released());
  > |    uint tokenAmount = _tokenAmountNoDecimals * 10 ** token.decimals();
    |    contributeInternal(_receiver, 0, tokenAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(372)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDistribution':
    |  */
    |  function contributeInternal(address _receiver, uint _weiAmount, uint _tokenAmount) internal {
  > |    require(token.totalSupply().add(_tokenAmount) <= maxCap);
    |    token.produceEmeralds(_receiver, _tokenAmount);
    |    if (_weiAmount > 0) 
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(400)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDistribution':
    |  function contributeInternal(address _receiver, uint _weiAmount, uint _tokenAmount) internal {
    |    require(token.totalSupply().add(_tokenAmount) <= maxCap);
  > |    token.produceEmeralds(_receiver, _tokenAmount);
    |    if (_weiAmount > 0) 
    |      wallet.transfer(_weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(401)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDistribution':
    |    token.produceEmeralds(_receiver, _tokenAmount);
    |    if (_weiAmount > 0) 
  > |      wallet.transfer(_weiAmount);
    |    if (contributors[_receiver] == 0) contributorsCount++;
    |    tokensSold = tokensSold.add(_tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(403)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDistribution':
    |    uint weiValue = contributors[msg.sender];
    |    require(weiValue <= loadedRefund && weiValue <= this.balance);
  > |    msg.sender.transfer(weiValue);
    |    contributors[msg.sender] = 0;
    |    weiRefunded = weiRefunded.add(weiValue);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(416)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDistribution':
    |  */
    |  function getTokenAmount(uint _weiAmount) internal constant returns (uint) {
  > |    uint rate = 1000 * 10 ** 18 / 10 ** token.decimals(); // 1000 EMR = 1 ETH
    |    uint tokenAmount = _weiAmount * rate;
    |    if (getState() == States.Presale)
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistribution':
    |    require(msg.value > 0);
    |    if (getState() == States.Presale)
  > |      presale[msg.sender] = presale[msg.sender].add(msg.value);
    |    else {
    |      contributors[msg.sender] = contributors[msg.sender].add(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistribution':
    |      presale[msg.sender] = presale[msg.sender].add(msg.value);
    |    else {
  > |      contributors[msg.sender] = contributors[msg.sender].add(msg.value);
    |      weiDistributed = weiDistributed.add(msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistribution':
    |    else {
    |      contributors[msg.sender] = contributors[msg.sender].add(msg.value);
  > |      weiDistributed = weiDistributed.add(msg.value);
    |    }
    |    contributeInternal(msg.sender, msg.value, getTokenAmount(msg.value));
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistribution':
    |    require(getState() == States.Failure || getState() == States.Refunding);
    |    require(msg.value > 0);
  > |    loadedRefund = loadedRefund.add(msg.value);
    |    LoadedRefund(msg.sender, msg.value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistribution':
    |    if (_weiAmount > 0) 
    |      wallet.transfer(_weiAmount);
  > |    if (contributors[_receiver] == 0) contributorsCount++;
    |    tokensSold = tokensSold.add(_tokenAmount);
    |    weiTotal = weiTotal.add(_weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistribution':
    |      wallet.transfer(_weiAmount);
    |    if (contributors[_receiver] == 0) contributorsCount++;
  > |    tokensSold = tokensSold.add(_tokenAmount);
    |    weiTotal = weiTotal.add(_weiAmount);
    |    Contributed(_receiver, _weiAmount, _tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(405)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistribution':
    |    if (contributors[_receiver] == 0) contributorsCount++;
    |    tokensSold = tokensSold.add(_tokenAmount);
  > |    weiTotal = weiTotal.add(_weiAmount);
    |    Contributed(_receiver, _weiAmount, _tokenAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistribution':
    |    require(weiValue <= loadedRefund && weiValue <= this.balance);
    |    msg.sender.transfer(weiValue);
  > |    contributors[msg.sender] = 0;
    |    weiRefunded = weiRefunded.add(weiValue);
    |    loadedRefund = loadedRefund.sub(weiValue);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistribution':
    |    msg.sender.transfer(weiValue);
    |    contributors[msg.sender] = 0;
  > |    weiRefunded = weiRefunded.add(weiValue);
    |    loadedRefund = loadedRefund.sub(weiValue);
    |    Refund(msg.sender, weiValue);
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistribution':
    |    contributors[msg.sender] = 0;
    |    weiRefunded = weiRefunded.add(weiValue);
  > |    loadedRefund = loadedRefund.sub(weiValue);
    |    Refund(msg.sender, weiValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistribution':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistribution':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistribution':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistribution':
    |  function setDates(uint _presaleStart, uint _start, uint _end) onlyOwner {
    |    require(_presaleStart > 0 && _start > _presaleStart && _end > _start);
  > |    presaleStart = _presaleStart;
    |    start = _start;
    |    end = _end;
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistribution':
    |    require(_presaleStart > 0 && _start > _presaleStart && _end > _start);
    |    presaleStart = _presaleStart;
  > |    start = _start;
    |    end = _end;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistribution':
    |    presaleStart = _presaleStart;
    |    start = _start;
  > |    end = _end;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3912a58e372f1cd53560529eff1e9b9bc0b52021.sol(393)


