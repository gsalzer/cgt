Processing contract: /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol:AbstractToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol:LIDToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol:Token
[33mWarning[0m for LockedEther in contract 'LIDToken':
    | * LUXID token smart contract.
    | */
  > |contract LIDToken is AbstractToken {
    |  /**
    |   * Maximum allowed number of tokens in circulation.
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(183)

[33mWarning[0m for UnhandledException in contract 'LIDToken':
    |    require(_token != address(this));
    |    AbstractToken token = AbstractToken(_token);
  > |    token.transfer(_refund, _value);
    |    RefundTokens(_token, _refund, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(385)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LIDToken':
    |    require(_token != address(this));
    |    AbstractToken token = AbstractToken(_token);
  > |    token.transfer(_refund, _value);
    |    RefundTokens(_token, _refund, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(385)

[33mWarning[0m for UnrestrictedWrite in contract 'LIDToken':
    |    if (accounts [msg.sender] < _value) return false;
    |    if (_value > 0 && msg.sender != _to) {
  > |      accounts [msg.sender] = safeSub (accounts [msg.sender], _value);
    |      accounts [_to] = safeAdd (accounts [_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'LIDToken':
    |    if (_value > 0 && msg.sender != _to) {
    |      accounts [msg.sender] = safeSub (accounts [msg.sender], _value);
  > |      accounts [_to] = safeAdd (accounts [_to], _value);
    |    }
    |    Transfer (msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'LIDToken':
    |
    |    if (_value > 0 && _from != _to) {
  > |	  allowances [_from][msg.sender] = safeSub (allowances [_from][msg.sender], _value);
    |      accounts [_from] = safeSub (accounts [_from], _value);
    |      accounts [_to] = safeAdd (accounts [_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'LIDToken':
    |    if (_value > 0 && _from != _to) {
    |	  allowances [_from][msg.sender] = safeSub (allowances [_from][msg.sender], _value);
  > |      accounts [_from] = safeSub (accounts [_from], _value);
    |      accounts [_to] = safeAdd (accounts [_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'LIDToken':
    |	  allowances [_from][msg.sender] = safeSub (allowances [_from][msg.sender], _value);
    |      accounts [_from] = safeSub (accounts [_from], _value);
  > |      accounts [_to] = safeAdd (accounts [_to], _value);
    |    }
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'LIDToken':
    |   */
    |   function approve (address _spender, uint256 _value) returns (bool success) {
  > |    allowances [msg.sender][_spender] = _value;
    |    Approval (msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'LIDToken':
    |      if (_value > safeSub (MAX_TOKEN_COUNT, tokenCount)) return false;
    |	  
  > |      accounts [msg.sender] = safeAdd (accounts [msg.sender], _value);
    |      tokenCount = safeAdd (tokenCount, _value);
    |	  
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'LIDToken':
    |	  
    |      accounts [msg.sender] = safeAdd (accounts [msg.sender], _value);
  > |      tokenCount = safeAdd (tokenCount, _value);
    |	  
    |	  // adding transfer event and _from address as null address
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'LIDToken':
    |      if (mintedAmount > 0) {
    |	  
  > |      accounts [target] = safeAdd (accounts [target], mintedAmount);
    |      tokenCount = safeAdd (tokenCount, mintedAmount);
    |	  
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'LIDToken':
    |	  
    |      accounts [target] = safeAdd (accounts [target], mintedAmount);
  > |      tokenCount = safeAdd (tokenCount, mintedAmount);
    |	  
    |	  // adding transfer event and _from address as null address
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'LIDToken':
    |    require (msg.sender == owner);
    |
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'LIDToken':
    |
    |    if (!frozen) {
  > |      frozen = true;
    |      Freeze ();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'LIDToken':
    |
    |    if (frozen) {
  > |      frozen = false;
    |      Unfreeze ();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'LIDToken':
    |      require (msg.sender == owner);
    |	  require (msg.sender != _target);
  > |      frozenAccount[_target] = freeze;
    |      FrozenFunds(_target, freeze);
    | }
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(396)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |contract SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x0f71fda4987069d5cc1d0e6c234fd01675947b5e.sol(18)


