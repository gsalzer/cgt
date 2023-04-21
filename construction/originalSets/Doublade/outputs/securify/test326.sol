Processing contract: /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol:Claimable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol:FinalizableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol:ISmartToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol:LimitedTransferBancorSmartToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol:LimitedTransferToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol:RefundVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol:SirinCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol:SirinSmartToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol:SirinVestingTrustee
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(163)

[33mWarning[0m for LockedEther in contract 'Claimable':
    | * This allows the new owner to accept the transfer.
    | */
  > |contract Claimable is Ownable {
    |    address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'Claimable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        pendingOwner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Claimable is Ownable {
  > |    address public pendingOwner;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |     * @dev Allows the pendingOwner address to finalize the transfer.
    |     */
  > |    function claimOwnership() onlyPendingOwner public {
    |        OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |     */
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |    function claimOwnership() onlyPendingOwner public {
    |        OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |        OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(110)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |    // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(938)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * as they arrive.
    | */
  > |contract Crowdsale {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(868)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        weiRaised = weiRaised.add(weiAmount);
    |
  > |        token.issue(beneficiary, tokens);
    |        TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(929)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(938)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        weiRaised = weiRaised.add(weiAmount);
    |
  > |        token.issue(beneficiary, tokens);
    |        TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(929)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(938)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |        // update state
  > |        weiRaised = weiRaised.add(weiAmount);
    |
    |        token.issue(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(927)

[33mWarning[0m for LockedEther in contract 'LimitedTransferBancorSmartToken':
    |    BancorSmartToken
    |*/
  > |contract LimitedTransferBancorSmartToken is MintableToken, ISmartToken, LimitedTransferToken {
    |
    |    // =================================================================================================================
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(401)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |        require(msg.sender == _from || msg.sender == owner); // validate input
    |
  > |        balances[_from] = balances[_from].sub(_amount);
    |        totalSupply = totalSupply.sub(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |
    |        balances[_from] = balances[_from].sub(_amount);
  > |        totalSupply = totalSupply.sub(_amount);
    |
    |        Destruction(_amount);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |     */
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |    function claimOwnership() onlyPendingOwner public {
    |        OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |        OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |
    |    function setDestroyEnabled(bool _enable) onlyOwner public {
  > |        destroyEnabled = _enable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(429)

[33mWarning[0m for UnrestrictedWrite in contract 'LimitedTransferBancorSmartToken':
    |    //@Override
    |    function disableTransfers(bool _disable) onlyOwner public {
  > |        transfersEnabled = !_disable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(438)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Claimable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function claimOwnership() onlyPendingOwner public {
    |        OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(360)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(72)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |        state = State.Closed;
    |        Closed();
  > |        etherWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(773)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |
    |        token.destroy(address(this),refundTokens);
  > |        msg.sender.transfer(ETHToRefundAmountWei);
    |
    |        RefundedETH(msg.sender, ETHToRefundAmountWei);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(801)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |        token.transfer(investor, tokensToClaim);
    |        if(state != State.Closed) {
  > |            etherWallet.transfer(claimedETH);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(829)

[33mWarning[0m for LockedEther in contract 'RefundVault':
    | * After 60 days, all ether will be withdrawn from the vault`s wallet, leaving all tokens to be claimed by the their owners.
    | **/
  > |contract RefundVault is Claimable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(674)

[31mViolation[0m for TODAmount in contract 'RefundVault':
    |        state = State.Closed;
    |        Closed();
  > |        etherWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(773)

[33mWarning[0m for TODAmount in contract 'RefundVault':
    |
    |        token.destroy(address(this),refundTokens);
  > |        msg.sender.transfer(ETHToRefundAmountWei);
    |
    |        RefundedETH(msg.sender, ETHToRefundAmountWei);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(801)

[33mWarning[0m for TODAmount in contract 'RefundVault':
    |        token.transfer(investor, tokensToClaim);
    |        if(state != State.Closed) {
  > |            etherWallet.transfer(claimedETH);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(829)

[33mWarning[0m for TODReceiver in contract 'RefundVault':
    |
    |        token.destroy(address(this),refundTokens);
  > |        msg.sender.transfer(ETHToRefundAmountWei);
    |
    |        RefundedETH(msg.sender, ETHToRefundAmountWei);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(801)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |        state = State.Closed;
    |        Closed();
  > |        etherWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(773)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |        depositedToken[msg.sender] = depositedTokenValue.sub(refundTokens);
    |
  > |        token.destroy(address(this),refundTokens);
    |        msg.sender.transfer(ETHToRefundAmountWei);
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(800)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |
    |        token.destroy(address(this),refundTokens);
  > |        msg.sender.transfer(ETHToRefundAmountWei);
    |
    |        RefundedETH(msg.sender, ETHToRefundAmountWei);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(801)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |        depositedToken[investor] = depositedTokenValue.sub(tokensToClaim);
    |
  > |        token.transfer(investor, tokensToClaim);
    |        if(state != State.Closed) {
    |            etherWallet.transfer(claimedETH);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(827)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |        token.transfer(investor, tokensToClaim);
    |        if(state != State.Closed) {
  > |            etherWallet.transfer(claimedETH);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(829)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |        
    |
  > |        token.transfer(investor, depositedTokenValue);
    |        
    |        TokensClaimed(investor, depositedTokenValue);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(843)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |        state = State.Closed;
    |        Closed();
  > |        etherWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(773)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |        depositedToken[msg.sender] = depositedTokenValue.sub(refundTokens);
    |
  > |        token.destroy(address(this),refundTokens);
    |        msg.sender.transfer(ETHToRefundAmountWei);
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(800)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |
    |        token.destroy(address(this),refundTokens);
  > |        msg.sender.transfer(ETHToRefundAmountWei);
    |
    |        RefundedETH(msg.sender, ETHToRefundAmountWei);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(801)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |        depositedToken[investor] = depositedTokenValue.sub(tokensToClaim);
    |
  > |        token.transfer(investor, tokensToClaim);
    |        if(state != State.Closed) {
    |            etherWallet.transfer(claimedETH);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(827)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |        token.transfer(investor, tokensToClaim);
    |        if(state != State.Closed) {
  > |            etherWallet.transfer(claimedETH);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(829)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |        
    |
  > |        token.transfer(investor, depositedTokenValue);
    |        
    |        TokensClaimed(investor, depositedTokenValue);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(843)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |        assert(refundTokens > 0);
    |
  > |        depositedETH[msg.sender] = depositedETHValue.sub(ETHToRefundAmountWei);
    |        depositedToken[msg.sender] = depositedTokenValue.sub(refundTokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(797)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |
    |        depositedETH[msg.sender] = depositedETHValue.sub(ETHToRefundAmountWei);
  > |        depositedToken[msg.sender] = depositedTokenValue.sub(refundTokens);
    |
    |        token.destroy(address(this),refundTokens);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(798)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |        assert(claimedETH > 0);
    |
  > |        depositedETH[investor] = depositedETHValue.sub(claimedETH);
    |        depositedToken[investor] = depositedTokenValue.sub(tokensToClaim);
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(824)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |
    |        depositedETH[investor] = depositedETHValue.sub(claimedETH);
  > |        depositedToken[investor] = depositedTokenValue.sub(tokensToClaim);
    |
    |        token.transfer(investor, tokensToClaim);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(825)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |     */
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |    function claimOwnership() onlyPendingOwner public {
    |        OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |        OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |    function deposit(address investor, uint256 tokensAmount) isActiveState onlyOwner public payable {
    |
  > |        depositedETH[investor] = depositedETH[investor].add(msg.value);
    |        depositedToken[investor] = depositedToken[investor].add(tokensAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(764)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |
    |        depositedETH[investor] = depositedETH[investor].add(msg.value);
  > |        depositedToken[investor] = depositedToken[investor].add(tokensAmount);
    |
    |        Deposit(investor, msg.value, tokensAmount);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(765)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |
    |    function close() isRefundingState onlyOwner isRefundTimeFrameExceeded public {
  > |        state = State.Closed;
    |        Closed();
    |        etherWallet.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(771)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |
    |    function enableRefunds() isActiveState onlyOwner public {
  > |        state = State.Refunding;
    |        refundStartTime = now;
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(777)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |    function enableRefunds() isActiveState onlyOwner public {
    |        state = State.Refunding;
  > |        refundStartTime = now;
    |
    |        RefundsEnabled();
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(778)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(8)

[33mWarning[0m for LockedEther in contract 'SirinSmartToken':
    |  A Token which is 'Bancor' compatible and can mint new tokens and pause token-transfer functionality
    |*/
  > |contract SirinSmartToken is LimitedTransferBancorSmartToken {
    |
    |    // =================================================================================================================
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |        require(msg.sender == _from || msg.sender == owner); // validate input
    |
  > |        balances[_from] = balances[_from].sub(_amount);
    |        totalSupply = totalSupply.sub(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |
    |        balances[_from] = balances[_from].sub(_amount);
  > |        totalSupply = totalSupply.sub(_amount);
    |
    |        Destruction(_amount);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |     */
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |    function claimOwnership() onlyPendingOwner public {
    |        OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |        OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |
    |    function setDestroyEnabled(bool _enable) onlyOwner public {
  > |        destroyEnabled = _enable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(429)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinSmartToken':
    |    //@Override
    |    function disableTransfers(bool _disable) onlyOwner public {
  > |        transfersEnabled = !_disable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(438)

[33mWarning[0m for LockedEther in contract 'SirinVestingTrustee':
    |
    |/// @title Vesting trustee contract for Kin token.
  > |contract SirinVestingTrustee is Claimable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(506)

[33mWarning[0m for UnhandledException in contract 'SirinVestingTrustee':
    |
    |        // Check that this grant doesn't exceed the total amount of tokens currently available for vesting.
  > |        require(totalVesting.add(_value) <= token.balanceOf(address(this)));
    |
    |        // Assign a new grant.
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(558)

[33mWarning[0m for UnhandledException in contract 'SirinVestingTrustee':
    |
    |        totalVesting = totalVesting.sub(refund);
  > |        token.transfer(msg.sender, refund);
    |
    |        RevokeGrant(_holder, refund);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(590)

[33mWarning[0m for UnhandledException in contract 'SirinVestingTrustee':
    |        grant.transferred = grant.transferred.add(transferable);
    |        totalVesting = totalVesting.sub(transferable);
  > |        token.transfer(msg.sender, transferable);
    |
    |        UnlockGrant(msg.sender, transferable);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(661)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SirinVestingTrustee':
    |
    |        // Check that this grant doesn't exceed the total amount of tokens currently available for vesting.
  > |        require(totalVesting.add(_value) <= token.balanceOf(address(this)));
    |
    |        // Assign a new grant.
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(558)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SirinVestingTrustee':
    |
    |        totalVesting = totalVesting.sub(refund);
  > |        token.transfer(msg.sender, refund);
    |
    |        RevokeGrant(_holder, refund);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(590)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SirinVestingTrustee':
    |        grant.transferred = grant.transferred.add(transferable);
    |        totalVesting = totalVesting.sub(transferable);
  > |        token.transfer(msg.sender, transferable);
    |
    |        UnlockGrant(msg.sender, transferable);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(661)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinVestingTrustee':
    |     */
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinVestingTrustee':
    |    function claimOwnership() onlyPendingOwner public {
    |        OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinVestingTrustee':
    |        OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinVestingTrustee':
    |
    |        // Assign a new grant.
  > |        grants[_to] = Grant({
    |        value: _value,
    |        start: _start,
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(561)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinVestingTrustee':
    |
    |        // Tokens granted, reduce the total amount available for vesting.
  > |        totalVesting = totalVesting.add(_value);
    |
    |        NewGrant(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(571)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinVestingTrustee':
    |
    |        // Remove the grant.
  > |        delete grants[_holder];
    |
    |        totalVesting = totalVesting.sub(refund);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(587)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinVestingTrustee':
    |        delete grants[_holder];
    |
  > |        totalVesting = totalVesting.sub(refund);
    |        token.transfer(msg.sender, refund);
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(589)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinVestingTrustee':
    |        }
    |
  > |        grant.transferred = grant.transferred.add(transferable);
    |        totalVesting = totalVesting.sub(transferable);
    |        token.transfer(msg.sender, transferable);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(659)

[33mWarning[0m for UnrestrictedWrite in contract 'SirinVestingTrustee':
    |
    |        grant.transferred = grant.transferred.add(transferable);
  > |        totalVesting = totalVesting.sub(transferable);
    |        token.transfer(msg.sender, transferable);
    |
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(660)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x159e4500567b160fd3eca934387a62eca20caa24.sol(311)


