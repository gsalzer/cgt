Processing contract: /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol:DSDLocking
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DSDLocking':
    | * owner.
    | */
  > |contract DSDLocking is Ownable {
    |  using SafeMath for uint256;
    |  using SafeERC20 for ERC20;
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(408)

[33mWarning[0m for UnhandledException in contract 'DSDLocking':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(376)

[33mWarning[0m for UnhandledException in contract 'DSDLocking':
    |    require(!revoked[_token]);
    |
  > |    uint256 balance = _token.balanceOf(address(this));
    |
    |    uint256 unreleased = releasableAmount(_token);
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(462)

[33mWarning[0m for UnhandledException in contract 'DSDLocking':
    |   */
    |  function vestedAmount(ERC20 _token) public view returns (uint256) {
  > |    uint256 currentBalance = _token.balanceOf(this);
    |    uint256 totalBalance = currentBalance.add(released[_token]);
    |
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(487)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSDLocking':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(376)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSDLocking':
    |    require(!revoked[_token]);
    |
  > |    uint256 balance = _token.balanceOf(address(this));
    |
    |    uint256 unreleased = releasableAmount(_token);
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(462)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSDLocking':
    |   */
    |  function vestedAmount(ERC20 _token) public view returns (uint256) {
  > |    uint256 currentBalance = _token.balanceOf(this);
    |    uint256 totalBalance = currentBalance.add(released[_token]);
    |
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'DSDLocking':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'DSDLocking':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'DSDLocking':
    |    require(unreleased > 0);
    |
  > |    released[_token] = released[_token].add(unreleased);
    |
    |    _token.safeTransfer(beneficiary, unreleased);
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(446)

[33mWarning[0m for UnrestrictedWrite in contract 'DSDLocking':
    |    uint256 refund = balance.sub(unreleased);
    |
  > |    revoked[_token] = true;
    |
    |    _token.safeTransfer(owner, refund);
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(467)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(62)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |  function safeTransfer(
    |    ERC20 _token,
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(368)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(71)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x341c6a1ab0430e77962d6216dc9be5a50ebcb46a.sol(310)


