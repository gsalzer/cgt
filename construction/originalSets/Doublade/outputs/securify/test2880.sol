Processing contract: /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol:Burnable
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol:ContractReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol:FinTabToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol:IOwned
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol:ISmartToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol:ITokenHolder
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol:SmartToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol:StandardToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol:TokenHolder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol:Utils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FinTabToken':
    | * Bancor SmartToken protocol
    | */
  > |contract FinTabToken is SmartToken {
    |
    |  uint public constant INITIAL_SUPPLY = 3079387 * (10 ** 8);
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(487)

[33mWarning[0m for UnhandledException in contract 'FinTabToken':
    |    {
    |        require(_to != address(this));
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(365)

[33mWarning[0m for UnhandledException in contract 'FinTabToken':
    |    balances[_to] = safeAdd(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(607)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FinTabToken':
    |    {
    |        require(_to != address(this));
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(365)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FinTabToken':
    |    balances[_to] = safeAdd(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(607)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |  function burn(uint _value) public returns (bool success) {
    |    require(_value > 0 && balances[msg.sender] >= _value);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |    require(_value > 0 && balances[msg.sender] >= _value);
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(msg.sender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |    require(_from != 0x0 && _value > 0 && balances[_from] >= _value);
    |    require(_value <= allowed[_from][msg.sender]);
  > |    balances[_from] = balances[_from].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |    balances[_from] = balances[_from].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Burn(_from, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |    */
    |    function disableTransfers(bool _disable) public onlyOwner {
  > |        transfersEnabled = !_disable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |        notThis(_to)
    |    {
  > |        totalSupply_ = safeAdd(totalSupply_, _amount);
    |        balances[_to] = safeAdd(balances[_to], _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |    {
    |        totalSupply_ = safeAdd(totalSupply_, _amount);
  > |        balances[_to] = safeAdd(balances[_to], _amount);
    |
    |        Issuance(_amount);
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |        require(msg.sender == _from || msg.sender == owner); // validate input
    |
  > |        balances[_from] = safeSub(balances[_from], _amount);
    |        totalSupply_ = safeSub(totalSupply_, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(436)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |
    |        balances[_from] = safeSub(balances[_from], _amount);
  > |        totalSupply_ = safeSub(totalSupply_, _amount);
    |
    |        Transfer(_from, this, _amount);
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |  function setTeamAddress(address addr, bool state) onlyOwner public {
    |    require(addr != 0x0);
  > |    teamAddresses[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(533)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |  function setBurner(address addr, bool state) onlyOwner public {
    |    require(addr != 0x0);
  > |    tokenBurners[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(538)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |  function transferToAddress(address _to, uint _value, bytes _data) private canTransfer(msg.sender) returns (bool success) {
    |    require(balanceOf(msg.sender) >= _value);
  > |    balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |    balances[_to] = safeAdd(balanceOf(_to), _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(595)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |    require(balanceOf(msg.sender) >= _value);
    |    balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  > |    balances[_to] = safeAdd(balanceOf(_to), _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(596)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |  function transferToContract(address _to, uint _value, bytes _data) private canTransfer(msg.sender) returns (bool success) {
    |    require(balanceOf(msg.sender) >= _value);
  > |    balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |    balances[_to] = safeAdd(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(604)

[33mWarning[0m for UnrestrictedWrite in contract 'FinTabToken':
    |    require(balanceOf(msg.sender) >= _value);
    |    balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  > |    balances[_to] = safeAdd(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
    |    receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(605)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(306)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(307)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(336)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(25)

[33mWarning[0m for LockedEther in contract 'TokenHolder':
    |    the owner to send tokens that were sent to the contract by mistake back to their sender.
    |*/
  > |contract TokenHolder is ITokenHolder, Ownable, Utils {
    |
    |    // @dev constructor
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(348)

[31mViolation[0m for MissingInputValidation in contract 'TokenHolder':
    |    // @param _to      account to receive the new amount
    |    // @param _amount  amount to withdraw
  > |    function withdrawTokens(IERC20Token _token, address _to, uint _amount) public
    |    onlyOwner
    |    validAddress(_to)
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(360)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(307)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(333)

[33mWarning[0m for UnhandledException in contract 'TokenHolder':
    |    {
    |        require(_to != address(this));
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(365)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenHolder':
    |    {
    |        require(_to != address(this));
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(336)

[33mWarning[0m for LockedEther in contract 'Utils':
    |    Utilities & Common Modifiers
    |*/
  > |contract Utils {
    |    /**
    |        constructor
  at /home/jiaming/mavs_srcs/contract@0xbd4b60a138b3fce3584ea01f50c0908c18f9677a.sol(210)


