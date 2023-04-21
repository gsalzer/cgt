Processing contract: /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol:BasicToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol:BlackList
Processing contract: /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol:MexaCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol:StandardToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol:UpgradedStandardToken
[33mWarning[0m for LockedEther in contract 'MexaCoin':
    |}
    |
  > |contract MexaCoin is Pausable, StandardToken, BlackList {
    |    
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(308)

[33mWarning[0m for UnhandledException in contract 'MexaCoin':
    |        require(!isBlackListed[_to]);
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).transferByLegacy(msg.sender, _to, _value);
    |        } else {
    |            return super.transfer(_to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(343)

[33mWarning[0m for UnhandledException in contract 'MexaCoin':
    |    function balanceOf(address who) public constant returns (uint) {
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).balanceOf(who);
    |        } else {
    |            return super.balanceOf(who);
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(355)

[33mWarning[0m for UnhandledException in contract 'MexaCoin':
    |        require(!isBlackListed[_to]);
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).transferFromByLegacy(msg.sender, _from, _to, _value);
    |        } else {
    |            return super.transferFrom(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(373)

[33mWarning[0m for UnhandledException in contract 'MexaCoin':
    |        require(!isBlackListed[_spender]);
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).approveByLegacy(msg.sender, _spender, _value);
    |        } else {
    |            return super.approve(_spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(390)

[33mWarning[0m for UnhandledException in contract 'MexaCoin':
    |    function allowance(address _owner, address _spender) public constant returns (uint remaining) {
    |        if (deprecated) {
  > |            return StandardToken(upgradedAddress).allowance(_owner, _spender);
    |        } else {
    |            return super.allowance(_owner, _spender);
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(403)

[33mWarning[0m for UnhandledException in contract 'MexaCoin':
    |    function totalSupply() public constant returns (uint) {
    |        if (deprecated) {
  > |            return StandardToken(upgradedAddress).totalSupply();
    |        } else {
    |            return _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(422)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MexaCoin':
    |        require(!isBlackListed[_to]);
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).transferByLegacy(msg.sender, _to, _value);
    |        } else {
    |            return super.transfer(_to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(343)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MexaCoin':
    |    function balanceOf(address who) public constant returns (uint) {
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).balanceOf(who);
    |        } else {
    |            return super.balanceOf(who);
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(355)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MexaCoin':
    |        require(!isBlackListed[_to]);
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).transferFromByLegacy(msg.sender, _from, _to, _value);
    |        } else {
    |            return super.transferFrom(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(373)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MexaCoin':
    |        require(!isBlackListed[_spender]);
    |        if (deprecated) {
  > |            return UpgradedStandardToken(upgradedAddress).approveByLegacy(msg.sender, _spender, _value);
    |        } else {
    |            return super.approve(_spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(390)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MexaCoin':
    |    function allowance(address _owner, address _spender) public constant returns (uint remaining) {
    |        if (deprecated) {
  > |            return StandardToken(upgradedAddress).allowance(_owner, _spender);
    |        } else {
    |            return super.allowance(_owner, _spender);
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(403)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MexaCoin':
    |    function totalSupply() public constant returns (uint) {
    |        if (deprecated) {
  > |            return StandardToken(upgradedAddress).totalSupply();
    |        } else {
    |            return _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(422)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |        }
    |        uint sendAmount = _value.sub(fee);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(sendAmount);
    |        if (fee > 0) {
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |        uint sendAmount = _value.sub(fee);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(sendAmount);
    |        if (fee > 0) {
    |            balances[owner] = balances[owner].add(fee);
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |        balances[_to] = balances[_to].add(sendAmount);
    |        if (fee > 0) {
  > |            balances[owner] = balances[owner].add(fee);
    |            emit Transfer(msg.sender, owner, fee);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |        }
    |        if (_allowance < MAX_UINT) {
  > |            allowed[_from][msg.sender] = _allowance.sub(_value);
    |        }
    |        uint sendAmount = _value.sub(fee);
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |        }
    |        uint sendAmount = _value.sub(fee);
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(sendAmount);
    |        if (fee > 0) {
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |        uint sendAmount = _value.sub(fee);
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(sendAmount);
    |        if (fee > 0) {
    |            balances[owner] = balances[owner].add(fee);
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |        balances[_to] = balances[_to].add(sendAmount);
    |        if (fee > 0) {
  > |            balances[owner] = balances[owner].add(fee);
    |            emit Transfer(_from, owner, fee);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |        require(!((_value != 0) && (allowed[msg.sender][_spender] != 0)));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |    
    |    function addBlackList (address _evilUser) public onlyOwner {
  > |        isBlackListed[_evilUser] = true;
    |        emit AddedBlackList(_evilUser);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |
    |    function removeBlackList (address _clearedUser) public onlyOwner {
  > |        isBlackListed[_clearedUser] = false;
    |        emit RemovedBlackList(_clearedUser);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |        require(isBlackListed[_blackListedUser]);
    |        uint dirtyFunds = balanceOf(_blackListedUser);
  > |        balances[_blackListedUser] = 0;
    |        //Posible Error
    |        _totalSupply -= dirtyFunds;
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |        balances[_blackListedUser] = 0;
    |        //Posible Error
  > |        _totalSupply -= dirtyFunds;
    |        emit DestroyedBlackFunds(_blackListedUser, dirtyFunds);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |    // @param _upgradedAddress  Direccion del nuevo contrato
    |    function deprecate(address _upgradedAddress) public onlyOwner {
  > |        deprecated = true;
    |        upgradedAddress = _upgradedAddress;
    |        emit Deprecate(_upgradedAddress);
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(413)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |    function deprecate(address _upgradedAddress) public onlyOwner {
    |        deprecated = true;
  > |        upgradedAddress = _upgradedAddress;
    |        emit Deprecate(_upgradedAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |        require(balances[owner] + amount > balances[owner]);
    |
  > |        balances[owner] += amount;
    |        _totalSupply += amount;
    |        emit Issue(amount);
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(435)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |
    |        balances[owner] += amount;
  > |        _totalSupply += amount;
    |        emit Issue(amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(436)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |        require(balances[owner] >= amount);
    |
  > |        _totalSupply -= amount;
    |        balances[owner] -= amount;
    |        emit Redeem(amount);
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |
    |        _totalSupply -= amount;
  > |        balances[owner] -= amount;
    |        emit Redeem(amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(449)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |        require(newMaxFee < 1000);
    |
  > |        basisPointsRate = newBasisPoints;
    |        maximumFee = newMaxFee.mul(10**decimals);
    |
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(462)

[33mWarning[0m for UnrestrictedWrite in contract 'MexaCoin':
    |
    |        basisPointsRate = newBasisPoints;
  > |        maximumFee = newMaxFee.mul(10**decimals);
    |
    |        emit Params(basisPointsRate, maximumFee);
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(463)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(33)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(78)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xdea8e7d3b9e422073a69615b998b34533b7bf898.sol(100)


