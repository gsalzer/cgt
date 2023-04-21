Processing contract: /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol:TimetechToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |
    |  function safeTransfer(TimetechToken token, address to, uint256 value) internal {
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(222)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(172)

[31mViolation[0m for LockedEther in contract 'TimetechToken':
    |pragma solidity ^0.4.21;
    |
  > |contract TimetechToken {
    |  using SafeMath for uint;
    |  using SafeERC20 for TimetechToken;
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(3)

[33mWarning[0m for UnhandledException in contract 'TimetechToken':
    |
    |  function reclaimToken(TimetechToken token) onlyOwner external {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(161)

[33mWarning[0m for UnhandledException in contract 'TimetechToken':
    |
    |  function safeTransfer(TimetechToken token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(225)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TimetechToken':
    |
    |  function reclaimToken(TimetechToken token) onlyOwner external {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(161)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TimetechToken':
    |
    |  function safeTransfer(TimetechToken token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(225)

[31mViolation[0m for UnrestrictedWrite in contract 'TimetechToken':
    |pragma solidity ^0.4.21;
    |
  > |contract TimetechToken {
    |  using SafeMath for uint;
    |  using SafeERC20 for TimetechToken;
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'TimetechToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'TimetechToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'TimetechToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'TimetechToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'TimetechToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'TimetechToken':
    |
    |  function approve(address _spender, uint256 _value) whenNotPaused public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'TimetechToken':
    |
    |  function increaseApproval(address _spender, uint _addedValue) whenNotPaused public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'TimetechToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'TimetechToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'TimetechToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    require(totalSupply_.add(_amount) <= cap);
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'TimetechToken':
    |    require(totalSupply_.add(_amount) <= cap);
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount); // -- 0x0 means mint.
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'TimetechToken':
    |    require(_cap >= totalSupply_);
    |    uint256 old = cap;
  > |    cap = _cap;
    |    emit CapChanged(old, cap);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'TimetechToken':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'TimetechToken':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'TimetechToken':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |    emit OwnershipTransferred(owner, newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'TimetechToken':
    |
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x95f2518f1f890451a0694b12734ff5e952e1d33b.sol(155)


