Processing contract: /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol:AbstractToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol:INSToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol:Token
[33mWarning[0m for LockedEther in contract 'INSToken':
    | * INS token smart contract.
    | */
  > |contract INSToken is AbstractToken {
    |  /**
    |   * Maximum allowed number of tokens in circulation.
  at /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'INSToken':
    |    if (accounts [msg.sender] < _value) return false;
    |    if (_value > 0 && msg.sender != _to) {
  > |      accounts [msg.sender] = safeSub (accounts [msg.sender], _value);
    |      accounts [_to] = safeAdd (accounts [_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'INSToken':
    |    if (_value > 0 && msg.sender != _to) {
    |      accounts [msg.sender] = safeSub (accounts [msg.sender], _value);
  > |      accounts [_to] = safeAdd (accounts [_to], _value);
    |    }
    |    Transfer (msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'INSToken':
    |    if (accounts [_from] < _value) return false;
    |
  > |    allowances [_from][msg.sender] =
    |      safeSub (allowances [_from][msg.sender], _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'INSToken':
    |
    |    if (_value > 0 && _from != _to) {
  > |      accounts [_from] = safeSub (accounts [_from], _value);
    |      accounts [_to] = safeAdd (accounts [_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'INSToken':
    |    if (_value > 0 && _from != _to) {
    |      accounts [_from] = safeSub (accounts [_from], _value);
  > |      accounts [_to] = safeAdd (accounts [_to], _value);
    |    }
    |    Transfer (_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'INSToken':
    |   */
    |  function approve (address _spender, uint256 _value) returns (bool success) {
  > |    allowances [msg.sender][_spender] = _value;
    |    Approval (msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'INSToken':
    |    if (_value > 0) {
    |      if (_value > safeSub (MAX_TOKEN_COUNT, tokenCount)) return false;
  > |      accounts [msg.sender] = safeAdd (accounts [msg.sender], _value);
    |      tokenCount = safeAdd (tokenCount, _value);
    |      totalCollected = safeAdd(totalCollected, _collected);
  at /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'INSToken':
    |      if (_value > safeSub (MAX_TOKEN_COUNT, tokenCount)) return false;
    |      accounts [msg.sender] = safeAdd (accounts [msg.sender], _value);
  > |      tokenCount = safeAdd (tokenCount, _value);
    |      totalCollected = safeAdd(totalCollected, _collected);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol(408)

[33mWarning[0m for UnrestrictedWrite in contract 'INSToken':
    |      accounts [msg.sender] = safeAdd (accounts [msg.sender], _value);
    |      tokenCount = safeAdd (tokenCount, _value);
  > |      totalCollected = safeAdd(totalCollected, _collected);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'INSToken':
    |    require (msg.sender == owner);
    |
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol(424)

[33mWarning[0m for UnrestrictedWrite in contract 'INSToken':
    |
    |    if (!frozen) {
  > |      frozen = true;
    |      Freeze ();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol(435)

[33mWarning[0m for UnrestrictedWrite in contract 'INSToken':
    |
    |    if (frozen) {
  > |      frozen = false;
    |      Unfreeze ();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol(448)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Provides methods to safely add, subtract and multiply uint256 numbers.
    | */
  > |contract SafeMath {
    |  uint256 constant private MAX_UINT256 =
    |    0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
  at /home/jiaming/mavs_srcs/contract@0x5b2e4a700dfbc560061e957edec8f6eeeb74a320.sol(113)


