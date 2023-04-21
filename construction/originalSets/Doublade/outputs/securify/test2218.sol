Processing contract: /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol:ApprovalAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol:MuzikaCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(214)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(407)

[33mWarning[0m for LockedEther in contract 'MuzikaCoin':
    |// File: contracts\token\MuzikaCoin.sol
    |
  > |contract MuzikaCoin is MintableToken, Pausable {
    |  string public name = 'Muzika';
    |  string public symbol = 'MZK';
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(421)

[33mWarning[0m for UnhandledException in contract 'MuzikaCoin':
    |
    |    require(
  > |      ApprovalAndCallFallBack(_spender).receiveApproval(
    |        msg.sender,
    |        allowed[msg.sender][_spender],
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(573)

[33mWarning[0m for UnhandledException in contract 'MuzikaCoin':
    |
    |  function tokenDrain(ERC20 _token, uint256 _amount) public onlyOwner {
  > |    _token.transfer(owner, _amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(585)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MuzikaCoin':
    |
    |    require(
  > |      ApprovalAndCallFallBack(_spender).receiveApproval(
    |        msg.sender,
    |        allowed[msg.sender][_spender],
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(573)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MuzikaCoin':
    |
    |  function tokenDrain(ERC20 _token, uint256 _amount) public onlyOwner {
  > |    _token.transfer(owner, _amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(585)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(492)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(493)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |    onlyNotFrozenAddress(_target)
    |  {
  > |    frozenAddress[_target] = true;
    |
    |    emit FreezeAddress(_target);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(459)

[33mWarning[0m for UnrestrictedWrite in contract 'MuzikaCoin':
    |    onlyFrozenAddress(_target)
    |  {
  > |    delete frozenAddress[_target];
    |
    |    emit UnfreezeAddress(_target);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(474)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(52)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(97)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(143)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x902aafe1e3bc4b8443d3e5c42d66378635fd7a60.sol(347)


