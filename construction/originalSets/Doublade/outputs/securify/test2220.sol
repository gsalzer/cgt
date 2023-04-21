Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:BTSPToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:BonusCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:BoutsCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:Destructible
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:FinalizableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:MintableMasterToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:PausableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:PreBOUToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol:TokensCappedCrowdsale
[33mWarning[0m for LockedEther in contract 'BTSPToken':
    |* Based on references from OpenZeppelin: https://github.com/OpenZeppelin/zeppelin-solidity
    |*/
  > |contract BTSPToken is MintableMasterToken, PausableToken {
    |    
    |    // Metadata
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(767)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(512)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |        require(newMaster != address(0));
    |        MintMasterTransferred(mintMaster, newMaster);
  > |        mintMaster = newMaster;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(712)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |    function mint(address _to, uint256 _amount) onlyMintMasterOrOwner canMint public returns (bool) {
    |        address oldOwner = owner;
  > |        owner = msg.sender;
    |
    |        bool result = super.mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(723)

[33mWarning[0m for UnrestrictedWrite in contract 'BTSPToken':
    |        bool result = super.mint(_to, _amount);
    |
  > |        owner = oldOwner;
    |
    |        return result;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(727)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(131)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(394)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * as they arrive.
    | */
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(309)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(369)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(394)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(369)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(367)

[33mWarning[0m for LockedEther in contract 'Destructible':
    | * @dev Base contract that can be destroyed by owner. All funds in contract will be sent to the owner.
    | */
  > |contract Destructible is Ownable {
    |
    |  function Destructible() public payable { }
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(673)

[33mWarning[0m for UnrestrictedWrite in contract 'Destructible':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(38)

[33mWarning[0m for LockedEther in contract 'MintableMasterToken':
    | */
    |
  > |contract MintableMasterToken is MintableToken {
    |    event MintMasterTransferred(address indexed previousMaster, address indexed newMaster);
    |    address public mintMaster;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(697)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableMasterToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableMasterToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableMasterToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableMasterToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableMasterToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableMasterToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableMasterToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableMasterToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableMasterToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableMasterToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableMasterToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableMasterToken':
    |        bool result = super.mint(_to, _amount);
    |
  > |        owner = oldOwner;
    |
    |        return result;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(727)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableMasterToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableMasterToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableMasterToken':
    |        require(newMaster != address(0));
    |        MintMasterTransferred(mintMaster, newMaster);
  > |        mintMaster = newMaster;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(712)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableMasterToken':
    |    function mint(address _to, uint256 _amount) onlyMintMasterOrOwner canMint public returns (bool) {
    |        address oldOwner = owner;
  > |        owner = msg.sender;
    |
    |        bool result = super.mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(723)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(294)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(38)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(477)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(481)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(503)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(511)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(512)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(738)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(512)

[33mWarning[0m for LockedEther in contract 'PreBOUToken':
    |* Based on references from OpenZeppelin: https://github.com/OpenZeppelin/zeppelin-solidity
    |*/
  > |contract PreBOUToken is BTSPToken, Destructible {
    |
    |    // Metadata
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(800)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(512)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |        require(newMaster != address(0));
    |        MintMasterTransferred(mintMaster, newMaster);
  > |        mintMaster = newMaster;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(712)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |    function mint(address _to, uint256 _amount) onlyMintMasterOrOwner canMint public returns (bool) {
    |        address oldOwner = owner;
  > |        owner = msg.sender;
    |
    |        bool result = super.mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(723)

[33mWarning[0m for UnrestrictedWrite in contract 'PreBOUToken':
    |        bool result = super.mint(_to, _amount);
    |
  > |        owner = oldOwner;
    |
    |        return result;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(727)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(47)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x903c7af702000b58baee44366815119fd39b2e3d.sol(248)


