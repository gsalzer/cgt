Processing contract: /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol:BasicToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol:BlackList
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol:StandardToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol:StandardTokenWithFees
Processing contract: /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol:TetherToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol:UpgradedStandardToken
[33mWarning[0m for LockedEther in contract 'BlackList':
    |
    |
  > |contract BlackList is Ownable {
    |
    |    /////// Getter to allow the same blacklist to be used also by other contracts (including upgraded Tether) ///////
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(348)

[31mViolation[0m for MissingInputValidation in contract 'BlackList':
    |
    |    /////// Getter to allow the same blacklist to be used also by other contracts (including upgraded Tether) ///////
  > |    function getBlackListStatus(address _maker) external constant returns (bool) {
    |        return isBlackListed[_maker];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(351)

[31mViolation[0m for MissingInputValidation in contract 'BlackList':
    |    }
    |
  > |    mapping (address => bool) public isBlackListed;
    |
    |    function addBlackList (address _evilUser) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(355)

[31mViolation[0m for MissingInputValidation in contract 'BlackList':
    |    mapping (address => bool) public isBlackListed;
    |
  > |    function addBlackList (address _evilUser) public onlyOwner {
    |        isBlackListed[_evilUser] = true;
    |        AddedBlackList(_evilUser);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(357)

[31mViolation[0m for MissingInputValidation in contract 'BlackList':
    |    }
    |
  > |    function removeBlackList (address _clearedUser) public onlyOwner {
    |        isBlackListed[_clearedUser] = false;
    |        RemovedBlackList(_clearedUser);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(362)

[33mWarning[0m for MissingInputValidation in contract 'BlackList':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'BlackList':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackList':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackList':
    |
    |    function addBlackList (address _evilUser) public onlyOwner {
  > |        isBlackListed[_evilUser] = true;
    |        AddedBlackList(_evilUser);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackList':
    |
    |    function removeBlackList (address _clearedUser) public onlyOwner {
  > |        isBlackListed[_clearedUser] = false;
    |        RemovedBlackList(_clearedUser);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(363)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(227)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(307)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(311)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(333)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(342)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(7)

[33mWarning[0m for LockedEther in contract 'TetherToken':
    |}
    |
  > |contract TetherToken is Pausable, StandardTokenWithFees, BlackList {
    |
    |    address public upgradedAddress;
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(373)

[33mWarning[0m for UnhandledException in contract 'TetherToken':
    |        require(!isBlackListed[msg.sender]);
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).transferByLegacy(msg.sender, _to, _value);
    |        } else {
    |            return super.transfer(_to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(399)

[33mWarning[0m for UnhandledException in contract 'TetherToken':
    |        require(!isBlackListed[_from]);
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).transferFromByLegacy(msg.sender, _from, _to, _value);
    |        } else {
    |            return super.transferFrom(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(409)

[33mWarning[0m for UnhandledException in contract 'TetherToken':
    |    function balanceOf(address who) public constant returns (uint) {
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).balanceOf(who);
    |        } else {
    |            return super.balanceOf(who);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(418)

[33mWarning[0m for UnhandledException in contract 'TetherToken':
    |    function approve(address _spender, uint _value) public whenNotPaused returns (bool) {
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).approveByLegacy(msg.sender, _spender, _value);
    |        } else {
    |            return super.approve(_spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(434)

[33mWarning[0m for UnhandledException in contract 'TetherToken':
    |    function increaseApproval(address _spender, uint _addedValue) public whenNotPaused returns (bool) {
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).increaseApprovalByLegacy(msg.sender, _spender, _addedValue);
    |        } else {
    |            return super.increaseApproval(_spender, _addedValue);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(442)

[33mWarning[0m for UnhandledException in contract 'TetherToken':
    |    function decreaseApproval(address _spender, uint _subtractedValue) public whenNotPaused returns (bool) {
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).decreaseApprovalByLegacy(msg.sender, _spender, _subtractedValue);
    |        } else {
    |            return super.decreaseApproval(_spender, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(450)

[33mWarning[0m for UnhandledException in contract 'TetherToken':
    |    function allowance(address _owner, address _spender) public constant returns (uint remaining) {
    |        if (deprecated) {
  > |            return StandardToken(upgradedAddress).allowance(_owner, _spender);
    |        } else {
    |            return super.allowance(_owner, _spender);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(459)

[33mWarning[0m for UnhandledException in contract 'TetherToken':
    |    function totalSupply() public constant returns (uint) {
    |        if (deprecated) {
  > |            return StandardToken(upgradedAddress).totalSupply();
    |        } else {
    |            return _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(476)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TetherToken':
    |        require(!isBlackListed[msg.sender]);
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).transferByLegacy(msg.sender, _to, _value);
    |        } else {
    |            return super.transfer(_to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(399)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TetherToken':
    |        require(!isBlackListed[_from]);
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).transferFromByLegacy(msg.sender, _from, _to, _value);
    |        } else {
    |            return super.transferFrom(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(409)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TetherToken':
    |    function balanceOf(address who) public constant returns (uint) {
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).balanceOf(who);
    |        } else {
    |            return super.balanceOf(who);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(418)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TetherToken':
    |    function approve(address _spender, uint _value) public whenNotPaused returns (bool) {
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).approveByLegacy(msg.sender, _spender, _value);
    |        } else {
    |            return super.approve(_spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(434)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TetherToken':
    |    function increaseApproval(address _spender, uint _addedValue) public whenNotPaused returns (bool) {
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).increaseApprovalByLegacy(msg.sender, _spender, _addedValue);
    |        } else {
    |            return super.increaseApproval(_spender, _addedValue);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(442)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TetherToken':
    |    function decreaseApproval(address _spender, uint _subtractedValue) public whenNotPaused returns (bool) {
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).decreaseApprovalByLegacy(msg.sender, _spender, _subtractedValue);
    |        } else {
    |            return super.decreaseApproval(_spender, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(450)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TetherToken':
    |    function allowance(address _owner, address _spender) public constant returns (uint remaining) {
    |        if (deprecated) {
  > |            return StandardToken(upgradedAddress).allowance(_owner, _spender);
    |        } else {
    |            return super.allowance(_owner, _spender);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(459)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TetherToken':
    |    function totalSupply() public constant returns (uint) {
    |        if (deprecated) {
  > |            return StandardToken(upgradedAddress).totalSupply();
    |        } else {
    |            return _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(476)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    uint sendAmount = _value.sub(fee);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(sendAmount);
    |    if (allowed[_from][msg.sender] < MAX_UINT) {
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(sendAmount);
    |    if (allowed[_from][msg.sender] < MAX_UINT) {
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    balances[_to] = balances[_to].add(sendAmount);
    |    if (allowed[_from][msg.sender] < MAX_UINT) {
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    }
    |    Transfer(_from, _to, sendAmount);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    Transfer(_from, _to, sendAmount);
    |    if (fee > 0) {
  > |      balances[owner] = balances[owner].add(fee);
    |      Transfer(_from, owner, fee);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |
    |      basisPointsRate = newBasisPoints;
  > |      maximumFee = newMaxFee.mul(uint(10)**decimals);
    |
    |      Params(basisPointsRate, maximumFee);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    // @param _amount Number of tokens to be issued
    |    function issue(uint amount) public onlyOwner {
  > |        balances[owner] = balances[owner].add(amount);
    |        _totalSupply = _totalSupply.add(amount);
    |        Issue(amount);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    function issue(uint amount) public onlyOwner {
    |        balances[owner] = balances[owner].add(amount);
  > |        _totalSupply = _totalSupply.add(amount);
    |        Issue(amount);
    |        Transfer(address(0), owner, amount);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(488)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    // @param _amount Number of tokens to be issued
    |    function redeem(uint amount) public onlyOwner {
  > |        _totalSupply = _totalSupply.sub(amount);
    |        balances[owner] = balances[owner].sub(amount);
    |        Redeem(amount);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    function redeem(uint amount) public onlyOwner {
    |        _totalSupply = _totalSupply.sub(amount);
  > |        balances[owner] = balances[owner].sub(amount);
    |        Redeem(amount);
    |        Transfer(owner, address(0), amount);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(500)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |        uint dirtyFunds = balanceOf(_blackListedUser);
    |        balances[_blackListedUser] = 0;
  > |        _totalSupply = _totalSupply.sub(dirtyFunds);
    |        DestroyedBlackFunds(_blackListedUser, dirtyFunds);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |      require(newMaxFee < MAX_SETTABLE_FEE);
    |
  > |      basisPointsRate = newBasisPoints;
    |      maximumFee = newMaxFee.mul(uint(10)**decimals);
    |
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |
    |    function addBlackList (address _evilUser) public onlyOwner {
  > |        isBlackListed[_evilUser] = true;
    |        AddedBlackList(_evilUser);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |
    |    function removeBlackList (address _clearedUser) public onlyOwner {
  > |        isBlackListed[_clearedUser] = false;
    |        RemovedBlackList(_clearedUser);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |    function deprecate(address _upgradedAddress) public onlyOwner {
    |        require(_upgradedAddress != address(0));
  > |        deprecated = true;
    |        upgradedAddress = _upgradedAddress;
    |        Deprecate(_upgradedAddress);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(468)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |        require(_upgradedAddress != address(0));
    |        deprecated = true;
  > |        upgradedAddress = _upgradedAddress;
    |        Deprecate(_upgradedAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(469)

[33mWarning[0m for UnrestrictedWrite in contract 'TetherToken':
    |        require(isBlackListed[_blackListedUser]);
    |        uint dirtyFunds = balanceOf(_blackListedUser);
  > |        balances[_blackListedUser] = 0;
    |        _totalSupply = _totalSupply.sub(dirtyFunds);
    |        DestroyedBlackFunds(_blackListedUser, dirtyFunds);
  at /home/jiaming/mavs_srcs/contract@0x3721a8e6239a8d0489a13725265dd02657ed3b57.sol(508)


