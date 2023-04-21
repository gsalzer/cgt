Processing contract: /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol:AbstractToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol:KIDToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol:Token
[33mWarning[0m for LockedEther in contract 'KIDToken':
    | * Kiddo Coin smart contract.
    | */
  > |contract KIDToken is AbstractToken {
    |  /**
    |   * Maximum allowed number of tokens in circulation.
  at /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol(183)

[33mWarning[0m for UnhandledException in contract 'KIDToken':
    |    require(_token != address(this));
    |    AbstractToken token = AbstractToken(_token);
  > |    token.transfer(_refund, _value);
    |    RefundTokens(_token, _refund, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol(359)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KIDToken':
    |    require(_token != address(this));
    |    AbstractToken token = AbstractToken(_token);
  > |    token.transfer(_refund, _value);
    |    RefundTokens(_token, _refund, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'KIDToken':
    |    if (accounts [msg.sender] < _value) return false;
    |    if (_value > 0 && msg.sender != _to) {
  > |      accounts [msg.sender] = safeSub (accounts [msg.sender], _value);
    |      accounts [_to] = safeAdd (accounts [_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'KIDToken':
    |    if (_value > 0 && msg.sender != _to) {
    |      accounts [msg.sender] = safeSub (accounts [msg.sender], _value);
  > |      accounts [_to] = safeAdd (accounts [_to], _value);
    |    }
    |    Transfer (msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'KIDToken':
    |
    |    if (_value > 0 && _from != _to) {
  > |	  allowances [_from][msg.sender] = safeSub (allowances [_from][msg.sender], _value);
    |      accounts [_from] = safeSub (accounts [_from], _value);
    |      accounts [_to] = safeAdd (accounts [_to], _value);
  at /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'KIDToken':
    |    if (_value > 0 && _from != _to) {
    |	  allowances [_from][msg.sender] = safeSub (allowances [_from][msg.sender], _value);
  > |      accounts [_from] = safeSub (accounts [_from], _value);
    |      accounts [_to] = safeAdd (accounts [_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'KIDToken':
    |	  allowances [_from][msg.sender] = safeSub (allowances [_from][msg.sender], _value);
    |      accounts [_from] = safeSub (accounts [_from], _value);
  > |      accounts [_to] = safeAdd (accounts [_to], _value);
    |    }
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'KIDToken':
    |   */
    |   function approve (address _spender, uint256 _value) returns (bool success) {
  > |    allowances [msg.sender][_spender] = _value;
    |    Approval (msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'KIDToken':
    |      if (_value > safeSub (MAX_TOKEN_COUNT, tokenCount)) return false;
    |	  
  > |      accounts [msg.sender] = safeAdd (accounts [msg.sender], _value);
    |      tokenCount = safeAdd (tokenCount, _value);
    |	  
  at /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'KIDToken':
    |	  
    |      accounts [msg.sender] = safeAdd (accounts [msg.sender], _value);
  > |      tokenCount = safeAdd (tokenCount, _value);
    |	  
    |	  // adding transfer event and _from address as null address
  at /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'KIDToken':
    |    require (msg.sender == owner);
    |
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'KIDToken':
    |
    |    if (!frozen) {
  > |      frozen = true;
    |      Freeze ();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'KIDToken':
    |
    |    if (frozen) {
  > |      frozen = false;
    |      Unfreeze ();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'KIDToken':
    |      require (msg.sender == owner);
    |	  require (msg.sender != _target);
  > |      frozenAccount[_target] = freeze;
    |      FrozenFunds(_target, freeze);
    | }
  at /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol(370)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |contract SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xeae5791bd6a3827520176abe778b7d619a09bddf.sol(18)


