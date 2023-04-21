Processing contract: /home/jiaming/mavs_srcs/contract@0x966889549fe7b3b950063151f6e2ad7651becdb9.sol:AbstractToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x966889549fe7b3b950063151f6e2ad7651becdb9.sol:DroidEIP20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x966889549fe7b3b950063151f6e2ad7651becdb9.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x966889549fe7b3b950063151f6e2ad7651becdb9.sol:Token
[33mWarning[0m for LockedEther in contract 'DroidEIP20Token':
    | * Convergence of 4 Dimensions LLC token smart contract.
    | */
  > |contract DroidEIP20Token is AbstractToken {
    |  /**
    |   * Address of the owner of this smart contract.
  at /home/jiaming/mavs_srcs/contract@0x966889549fe7b3b950063151f6e2ad7651becdb9.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'DroidEIP20Token':
    |    if (fromBalance < _value) return false;
    |    if (_value > 0 && msg.sender != _to) {
  > |      accounts [msg.sender] = safeSub (fromBalance, _value);
    |      accounts [_to] = safeAdd (accounts [_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x966889549fe7b3b950063151f6e2ad7651becdb9.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'DroidEIP20Token':
    |    if (fromBalance < _value) return false;
    |
  > |    allowances [_from][msg.sender] =
    |      safeSub (spenderAllowance, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x966889549fe7b3b950063151f6e2ad7651becdb9.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'DroidEIP20Token':
    |  function approve (address _spender, uint256 _value)
    |  public returns (bool success) {
  > |    allowances [msg.sender][_spender] = _value;
    |    Approval (msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x966889549fe7b3b950063151f6e2ad7651becdb9.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'DroidEIP20Token':
    |    require (msg.sender == owner);
    |
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x966889549fe7b3b950063151f6e2ad7651becdb9.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'DroidEIP20Token':
    |
    |    if (!frozen) {
  > |      frozen = true;
    |      Freeze ();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x966889549fe7b3b950063151f6e2ad7651becdb9.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'DroidEIP20Token':
    |
    |    if (frozen) {
  > |      frozen = false;
    |      Unfreeze ();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x966889549fe7b3b950063151f6e2ad7651becdb9.sol(427)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Provides methods to safely add, subtract and multiply uint256 numbers.
    | */
  > |contract SafeMath {
    |  uint256 constant private MAX_UINT256 =
    |    0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
  at /home/jiaming/mavs_srcs/contract@0x966889549fe7b3b950063151f6e2ad7651becdb9.sol(114)


