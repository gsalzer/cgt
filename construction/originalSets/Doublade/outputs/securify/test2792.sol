Processing contract: /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol:MDAPPToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol:SafeMath16
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(172)

[33mWarning[0m for LockedEther in contract 'MDAPPToken':
    | * @dev Owned by MDAPP.sol
    | */
  > |contract MDAPPToken is MintableToken {
    |  using SafeMath16 for uint16;
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(431)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |
    |  function lockToken(address _account, uint16 _value) onlyOwner hasUnlocked(_account, _value) public {
  > |    locked[_account] = locked[_account].add(_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(485)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |
    |  function unlockToken(address _account, uint16 _value) onlyOwner hasLocked(_account, _value) public {
  > |    locked[_account] = locked[_account].sub(_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |   */
    |  function finishMinting() public onlyOwner canMint returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    require(forceTransferEnable == false, 'Transfer already force-allowed.');
    |
  > |    forceTransferEnable = true;
    |    emit AllowTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(540)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() public onlyOwner canMint returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(386)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(128)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(8)

[33mWarning[0m for LockedEther in contract 'SafeMath16':
    |
    |
  > |library SafeMath16 {
    |  function mul(uint16 a, uint16 b) internal pure returns (uint16) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(394)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xb71a2ad8745801384e3fcbde3c5c70a3025ef22e.sol(326)


