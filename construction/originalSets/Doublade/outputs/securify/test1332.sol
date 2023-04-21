Processing contract: /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol:AbstractToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol:XPTToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |contract SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol(18)

[33mWarning[0m for LockedEther in contract 'XPTToken':
    | * Palatincoin token smart contract.
    | */
  > |contract XPTToken is AbstractToken {
    |  /**
    |   * Maximum allowed number of tokens in circulation.
  at /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol(183)

[33mWarning[0m for UnhandledException in contract 'XPTToken':
    |    require(_token != address(this));
    |    AbstractToken token = AbstractToken(_token);
  > |    token.transfer(_refund, _value);
    |    emit RefundTokens(_token, _refund, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol(359)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XPTToken':
    |    require(_token != address(this));
    |    AbstractToken token = AbstractToken(_token);
  > |    token.transfer(_refund, _value);
    |    emit RefundTokens(_token, _refund, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'XPTToken':
    |    if (accounts [msg.sender] < _value) return false;
    |    if (_value > 0 && msg.sender != _to) {
  > |      accounts [msg.sender] = safeSub (accounts [msg.sender], _value);
    |      accounts [_to] = safeAdd (accounts [_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'XPTToken':
    |    if (_value > 0 && msg.sender != _to) {
    |      accounts [msg.sender] = safeSub (accounts [msg.sender], _value);
  > |      accounts [_to] = safeAdd (accounts [_to], _value);
    |    }
    |    emit Transfer (msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'XPTToken':
    |
    |    if (_value > 0 && _from != _to) {
  > |	  allowances [_from][msg.sender] = safeSub (allowances [_from][msg.sender], _value);
    |      accounts [_from] = safeSub (accounts [_from], _value);
    |      accounts [_to] = safeAdd (accounts [_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'XPTToken':
    |    if (_value > 0 && _from != _to) {
    |	  allowances [_from][msg.sender] = safeSub (allowances [_from][msg.sender], _value);
  > |      accounts [_from] = safeSub (accounts [_from], _value);
    |      accounts [_to] = safeAdd (accounts [_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'XPTToken':
    |	  allowances [_from][msg.sender] = safeSub (allowances [_from][msg.sender], _value);
    |      accounts [_from] = safeSub (accounts [_from], _value);
  > |      accounts [_to] = safeAdd (accounts [_to], _value);
    |    }
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'XPTToken':
    |   */
    |   function approve (address _spender, uint256 _value) returns (bool success) {
  > |    allowances [msg.sender][_spender] = _value;
    |    emit Approval (msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'XPTToken':
    |      if (_value > safeSub (MAX_TOKEN_COUNT, tokenCount)) return false;
    |	  
  > |      accounts [msg.sender] = safeAdd (accounts [msg.sender], _value);
    |      tokenCount = safeAdd (tokenCount, _value);
    |	  
  at /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'XPTToken':
    |	  
    |      accounts [msg.sender] = safeAdd (accounts [msg.sender], _value);
  > |      tokenCount = safeAdd (tokenCount, _value);
    |	  
    |	  // adding transfer event and _from address as null address
  at /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'XPTToken':
    |    require (msg.sender == owner);
    |
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'XPTToken':
    |
    |    if (!frozen) {
  > |      frozen = true;
    |      emit Freeze ();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'XPTToken':
    |
    |    if (frozen) {
  > |      frozen = false;
    |      emit Unfreeze ();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'XPTToken':
    |      require (msg.sender == owner);
    |	  require (msg.sender != _target);
  > |      frozenAccount[_target] = freeze;
    |      emit FrozenFunds(_target, freeze);
    | }
  at /home/jiaming/mavs_srcs/contract@0x541ac3dbde0712b1a121bdd5e8c506ae594a4631.sol(370)


