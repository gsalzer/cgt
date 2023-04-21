Processing contract: /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol:BasicToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol:BlackList
Processing contract: /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol:StandardToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol:TaTbTcToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol:UpgradedStandardToken
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(66)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to pause, triggers stopped state
    |     */
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(250)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(259)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(7)

[33mWarning[0m for LockedEther in contract 'TaTbTcToken':
    |}
    |
  > |contract TaTbTcToken is Pausable, StandardToken, BlackList {
    |
    |    string public constant name = "TTT Test Dollar Token";
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(311)

[33mWarning[0m for UnhandledException in contract 'TaTbTcToken':
    |        require(!isBlackListed[msg.sender]);
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).transferByLegacy(msg.sender, _to, _value);
    |        } else {
    |            return super.transfer(_to, _value);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(333)

[33mWarning[0m for UnhandledException in contract 'TaTbTcToken':
    |        require(!isBlackListed[_from]);
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).transferFromByLegacy(msg.sender, _from, _to, _value);
    |        } else {
    |            return super.transferFrom(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(343)

[33mWarning[0m for UnhandledException in contract 'TaTbTcToken':
    |    function balanceOf(address who) public constant returns (uint) {
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).balanceOf(who);
    |        } else {
    |            return super.balanceOf(who);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(352)

[33mWarning[0m for UnhandledException in contract 'TaTbTcToken':
    |    function approve(address _spender, uint _value) public onlyPayloadSize(2 * 32) {
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).approveByLegacy(msg.sender, _spender, _value);
    |        } else {
    |            return super.approve(_spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(361)

[33mWarning[0m for UnhandledException in contract 'TaTbTcToken':
    |    function allowance(address _owner, address _spender) public constant returns (uint remaining) {
    |        if (deprecated) {
  > |            return StandardToken(upgradedAddress).allowance(_owner, _spender);
    |        } else {
    |            return super.allowance(_owner, _spender);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(370)

[33mWarning[0m for UnhandledException in contract 'TaTbTcToken':
    |    function totalSupply() public constant returns (uint) {
    |        if (deprecated) {
  > |            return StandardToken(upgradedAddress).totalSupply();
    |        } else {
    |            return _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(386)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaTbTcToken':
    |        require(!isBlackListed[msg.sender]);
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).transferByLegacy(msg.sender, _to, _value);
    |        } else {
    |            return super.transfer(_to, _value);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(333)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaTbTcToken':
    |        require(!isBlackListed[_from]);
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).transferFromByLegacy(msg.sender, _from, _to, _value);
    |        } else {
    |            return super.transferFrom(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(343)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaTbTcToken':
    |    function balanceOf(address who) public constant returns (uint) {
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).balanceOf(who);
    |        } else {
    |            return super.balanceOf(who);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(352)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaTbTcToken':
    |    function approve(address _spender, uint _value) public onlyPayloadSize(2 * 32) {
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).approveByLegacy(msg.sender, _spender, _value);
    |        } else {
    |            return super.approve(_spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(361)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaTbTcToken':
    |    function allowance(address _owner, address _spender) public constant returns (uint remaining) {
    |        if (deprecated) {
  > |            return StandardToken(upgradedAddress).allowance(_owner, _spender);
    |        } else {
    |            return super.allowance(_owner, _spender);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(370)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaTbTcToken':
    |    function totalSupply() public constant returns (uint) {
    |        if (deprecated) {
  > |            return StandardToken(upgradedAddress).totalSupply();
    |        } else {
    |            return _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |        }
    |        uint sendAmount = _value.sub(fee);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(sendAmount);
    |        if (fee > 0) {
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |        uint sendAmount = _value.sub(fee);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(sendAmount);
    |        if (fee > 0) {
    |            balances[owner] = balances[owner].add(fee);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |        balances[_to] = balances[_to].add(sendAmount);
    |        if (fee > 0) {
  > |            balances[owner] = balances[owner].add(fee);
    |            Transfer(msg.sender, owner, fee);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |        }
    |        if (_allowance < MAX_UINT) {
  > |            allowed[_from][msg.sender] = _allowance.sub(_value);
    |        }
    |        uint sendAmount = _value.sub(fee);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |        }
    |        uint sendAmount = _value.sub(fee);
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(sendAmount);
    |        if (fee > 0) {
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |        uint sendAmount = _value.sub(fee);
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(sendAmount);
    |        if (fee > 0) {
    |            balances[owner] = balances[owner].add(fee);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |        balances[_to] = balances[_to].add(sendAmount);
    |        if (fee > 0) {
  > |            balances[owner] = balances[owner].add(fee);
    |            Transfer(_from, owner, fee);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |        require(!((_value != 0) && (allowed[msg.sender][_spender] != 0)));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |
    |    function addBlackList (address _evilUser) public onlyOwner {
  > |        isBlackListed[_evilUser] = true;
    |        AddedBlackList(_evilUser);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |
    |    function removeBlackList (address _clearedUser) public onlyOwner {
  > |        isBlackListed[_clearedUser] = false;
    |        RemovedBlackList(_clearedUser);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |        require(isBlackListed[_blackListedUser]);
    |        uint dirtyFunds = balanceOf(_blackListedUser);
  > |        balances[_blackListedUser] = 0;
    |        _totalSupply -= dirtyFunds;
    |        DestroyedBlackFunds(_blackListedUser, dirtyFunds);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |        uint dirtyFunds = balanceOf(_blackListedUser);
    |        balances[_blackListedUser] = 0;
  > |        _totalSupply -= dirtyFunds;
    |        DestroyedBlackFunds(_blackListedUser, dirtyFunds);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |    // deprecate current contract in favour of a new one
    |    function deprecate(address _upgradedAddress) public onlyOwner {
  > |        deprecated = true;
    |        upgradedAddress = _upgradedAddress;
    |        Deprecate(_upgradedAddress);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |    function deprecate(address _upgradedAddress) public onlyOwner {
    |        deprecated = true;
  > |        upgradedAddress = _upgradedAddress;
    |        Deprecate(_upgradedAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |        require(balances[owner] + amount > balances[owner]);
    |
  > |        balances[owner] += amount;
    |        _totalSupply += amount;
    |        Issue(amount);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(400)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |
    |        balances[owner] += amount;
  > |        _totalSupply += amount;
    |        Issue(amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(401)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |        require(balances[owner] >= amount);
    |
  > |        _totalSupply -= amount;
    |        balances[owner] -= amount;
    |        Redeem(amount);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |
    |        _totalSupply -= amount;
  > |        balances[owner] -= amount;
    |        Redeem(amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |        require(newMaxFee < 50);
    |
  > |        basisPointsRate = newBasisPoints;
    |        maximumFee = newMaxFee.mul(10**decimals);
    |
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(424)

[33mWarning[0m for UnrestrictedWrite in contract 'TaTbTcToken':
    |
    |        basisPointsRate = newBasisPoints;
  > |        maximumFee = newMaxFee.mul(10**decimals);
    |
    |        Params(basisPointsRate, maximumFee);
  at /home/jiaming/mavs_srcs/contract@0x04ddde8d3f302529c08c3c87b946628a7a05948a.sol(425)


