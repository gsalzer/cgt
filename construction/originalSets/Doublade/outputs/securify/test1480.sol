Processing contract: /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol:CappedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol:CryptoControlToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(_to != address(0));
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(171)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is StandardToken, Ownable {
    |    event Burn(address indexed burner, uint256 value);
    |
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        require(_to != address(0));
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        returns (bool)
    |    {
  > |        allowed[msg.sender][_spender] = (
    |            allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue >= oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(76)

[33mWarning[0m for LockedEther in contract 'CappedToken':
    | * @dev Mintable token with a token cap.
    | */
  > |contract CappedToken is MintableToken {
    |    uint256 public cap;
    |
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(544)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        require(_to != address(0));
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        require(_to != address(0));
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        returns (bool)
    |    {
  > |        allowed[msg.sender][_spender] = (
    |            allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue >= oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        returns (bool)
    |    {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(520)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    {
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(521)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |     */
    |    function finishMinting() public onlyOwner canMint returns (bool) {
  > |        mintingFinished = true;
    |        emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(532)

[33mWarning[0m for LockedEther in contract 'CryptoControlToken':
    |
    |
  > |contract CryptoControlToken is BurnableToken, PausableToken, CappedToken {
    |    string public name = "CryptoControl";
    |    string public symbol = "CCIO";
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(573)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoControlToken':
    |        require(_to != address(0));
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoControlToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoControlToken':
    |        require(_to != address(0));
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoControlToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoControlToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoControlToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoControlToken':
    |        returns (bool)
    |    {
  > |        allowed[msg.sender][_spender] = (
    |            allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoControlToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue >= oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoControlToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoControlToken':
    |        returns (bool)
    |    {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(520)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoControlToken':
    |    {
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(521)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoControlToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoControlToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoControlToken':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoControlToken':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoControlToken':
    |     */
    |    function finishMinting() public onlyOwner canMint returns (bool) {
  > |        mintingFinished = true;
    |        emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(532)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |    event Mint(address indexed to, uint256 amount);
    |    event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(488)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(_to != address(0));
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(_to != address(0));
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        returns (bool)
    |    {
  > |        allowed[msg.sender][_spender] = (
    |            allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue >= oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        returns (bool)
    |    {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(520)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    {
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(521)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function finishMinting() public onlyOwner canMint returns (bool) {
  > |        mintingFinished = true;
    |        emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(532)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(76)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(371)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(375)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() public onlyOwner whenNotPaused {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(397)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() public onlyOwner whenPaused {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(405)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(406)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |    function transfer(
    |        address _to,
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        require(_to != address(0));
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        returns (bool)
    |    {
  > |        allowed[msg.sender][_spender] = (
    |            allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue >= oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(406)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(96)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |    mapping (address => mapping (address => uint256)) internal allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_to != address(0));
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        returns (bool)
    |    {
  > |        allowed[msg.sender][_spender] = (
    |            allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue >= oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5e4c3057518bcd6b1276b4e6e85d43a1996d1c6e.sol(324)


