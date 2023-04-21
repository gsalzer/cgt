Processing contract: /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol:TaylorToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol:TokenVesting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(66)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(344)

[33mWarning[0m for LockedEther in contract 'TaylorToken':
    |  @title TaylorToken
    |**/
  > |contract TaylorToken is Ownable{
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      require(_value <= balances[msg.sender]);
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |
    |      balances[msg.sender] = balances[msg.sender].sub(_value);
  > |      balances[_to] = balances[_to].add(_value);
    |      Transfer(msg.sender, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      require(_value <= allowed[_from][msg.sender]);
    |
  > |      balances[_from] = balances[_from].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |
    |      balances[_from] = balances[_from].sub(_value);
  > |      balances[_to] = balances[_to].add(_value);
    |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |      Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      balances[_from] = balances[_from].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
  > |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |      Transfer(_from, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      returns (bool success)
    |    {
  > |      allowed[msg.sender][_spender] = _value;
    |      Approval(msg.sender, _spender, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      returns (bool)
    |    {
  > |      allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      uint oldValue = allowed[msg.sender][_spender];
    |      if (_subtractedValue > oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |      } else {
    |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |        allowed[msg.sender][_spender] = 0;
    |      } else {
  > |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |      }
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      require(whitelistedBurn[msg.sender]);
    |      require(_amount <= balances[msg.sender]);
  > |      balances[msg.sender] = balances[msg.sender].sub(_amount);
    |      totalSupply =  totalSupply.sub(_amount);
    |      Burn(msg.sender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      require(_amount <= balances[msg.sender]);
    |      balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |      totalSupply =  totalSupply.sub(_amount);
    |      Burn(msg.sender, _amount);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      onlyOwner
    |    {
  > |      transferable = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      onlyOwner
    |    {
  > |      whitelistedTransfer[_address] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      onlyOwner
    |    {
  > |      whitelistedTransfer[_tgeAddress] = true;
    |      transfer(_tgeAddress, balances[owner]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      onlyOwner
    |    {
  > |      whitelistedBurn[_address] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(179)

[33mWarning[0m for LockedEther in contract 'TokenVesting':
    | * typical vesting scheme, with a cliff and vesting period.
    | */
  > |contract TokenVesting is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(379)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |    released = released.add(unreleased);
    |
  > |    token.transfer(beneficiary, unreleased);
    |
    |    Released(unreleased);
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(424)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |   */
    |  function vestedAmount() public view returns (uint256) {
  > |    uint256 currentBalance = token.balanceOf(this);
    |    uint256 totalBalance = currentBalance.add(released);
    |
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(440)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |    released = released.add(unreleased);
    |
  > |    token.transfer(beneficiary, unreleased);
    |
    |    Released(unreleased);
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(424)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |   */
    |  function vestedAmount() public view returns (uint256) {
  > |    uint256 currentBalance = token.balanceOf(this);
    |    uint256 totalBalance = currentBalance.add(released);
    |
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(440)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenVesting':
    |    require(unreleased > 0);
    |
  > |    released = released.add(unreleased);
    |
    |    token.transfer(beneficiary, unreleased);
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(422)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x19de65cb8f9747987ae97cfbd176f5031c35da30.sol(66)


