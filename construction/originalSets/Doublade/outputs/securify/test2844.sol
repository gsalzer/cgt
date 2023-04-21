Processing contract: /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol:TaylorToken
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
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(66)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(375)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(379)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(401)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(402)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(410)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(76)

[33mWarning[0m for LockedEther in contract 'TaylorToken':
    |  @title TaylorToken
    |**/
  > |contract TaylorToken is Ownable{
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      require(_value <= balances[msg.sender]);
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |
    |      balances[msg.sender] = balances[msg.sender].sub(_value);
  > |      balances[_to] = balances[_to].add(_value);
    |      Transfer(msg.sender, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      require(_value <= allowed[_from][msg.sender]);
    |
  > |      balances[_from] = balances[_from].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |
    |      balances[_from] = balances[_from].sub(_value);
  > |      balances[_to] = balances[_to].add(_value);
    |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |      Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      balances[_from] = balances[_from].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
  > |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |      Transfer(_from, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      returns (bool success)
    |    {
  > |      allowed[msg.sender][_spender] = _value;
    |      Approval(msg.sender, _spender, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      returns (bool)
    |    {
  > |      allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      uint oldValue = allowed[msg.sender][_spender];
    |      if (_subtractedValue > oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |      } else {
    |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |        allowed[msg.sender][_spender] = 0;
    |      } else {
  > |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |      }
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      require(whitelistedBurn[msg.sender]);
    |      require(_amount <= balances[msg.sender]);
  > |      balances[msg.sender] = balances[msg.sender].sub(_amount);
    |      totalSupply =  totalSupply.sub(_amount);
    |      Burn(msg.sender, _amount);
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      require(_amount <= balances[msg.sender]);
    |      balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |      totalSupply =  totalSupply.sub(_amount);
    |      Burn(msg.sender, _amount);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      onlyOwner
    |    {
  > |      transferable = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      onlyOwner
    |    {
  > |      whitelistedTransfer[_address] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      onlyOwner
    |    {
  > |      whitelistedTransfer[_tgeAddress] = true;
    |      transfer(_tgeAddress, balances[owner]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      onlyOwner
    |    {
  > |      whitelistedBurn[_address] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbab3972d8baf95263a137bc0e3290a40224d95cb.sol(213)


