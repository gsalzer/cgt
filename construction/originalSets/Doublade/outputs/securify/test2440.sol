Processing contract: /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol:BitNauticCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol:BitNauticToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol:BitNauticWhitelist
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol:CappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol:CappedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol:FinalizableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol:RefundVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol:RefundableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(658)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(672)

[33mWarning[0m for LockedEther in contract 'BitNauticToken':
    |}
    |
  > |contract BitNauticToken is CappedToken {
    |  string public constant name = "BitNautic Token";
    |  string public constant symbol = "BTNT";
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(832)

[33mWarning[0m for UnrestrictedWrite in contract 'BitNauticToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(672)

[33mWarning[0m for UnrestrictedWrite in contract 'BitNauticToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(673)

[33mWarning[0m for UnrestrictedWrite in contract 'BitNauticToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(713)

[33mWarning[0m for UnrestrictedWrite in contract 'BitNauticToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(714)

[33mWarning[0m for UnrestrictedWrite in contract 'BitNauticToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(715)

[33mWarning[0m for UnrestrictedWrite in contract 'BitNauticToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(731)

[33mWarning[0m for UnrestrictedWrite in contract 'BitNauticToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(753)

[33mWarning[0m for UnrestrictedWrite in contract 'BitNauticToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(761)

[33mWarning[0m for UnrestrictedWrite in contract 'BitNauticToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(763)

[33mWarning[0m for UnrestrictedWrite in contract 'BitNauticToken':
    |
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = SafeMath.add(totalSupply, _amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(789)

[33mWarning[0m for UnrestrictedWrite in contract 'BitNauticToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = SafeMath.add(totalSupply, _amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(790)

[33mWarning[0m for UnrestrictedWrite in contract 'BitNauticToken':
    |
    |  function burnTokens(uint256 _unsoldTokens) onlyOwner canMint public returns (bool) {
  > |    totalSupply = SafeMath.sub(totalSupply, _unsoldTokens);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(807)

[33mWarning[0m for UnrestrictedWrite in contract 'BitNauticToken':
    |    require(newOwner != address(0x0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(35)

[33mWarning[0m for LockedEther in contract 'BitNauticWhitelist':
    |}
    |
  > |contract BitNauticWhitelist is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'BitNauticWhitelist':
    |    }
    |
  > |    mapping(address => bool) public AMLWhitelisted;
    |    mapping(address => uint256) public contributionCap;
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'BitNauticWhitelist':
    |
    |    mapping(address => bool) public AMLWhitelisted;
  > |    mapping(address => uint256) public contributionCap;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'BitNauticWhitelist':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public returns (bool) {
    |    require(newOwner != address(0x0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'BitNauticWhitelist':
    |    using SafeMath for uint256;
    |
  > |    uint256 public usdPerEth;
    |
    |    constructor(uint256 _usdPerEth) public {
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'BitNauticWhitelist':
    |    * @dev Integer division of two numbers, truncating the quotient.
    |    */
  > |    function div(uint256 a, uint256 b) internal pure returns (uint256) {
    |        // assert(b > 0); // Solidity automatically throws when dividing by 0
    |        // uint256 c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'BitNauticWhitelist':
    |            contributionCap[addr] = 50000 ether; // crowdsale hard cap
    |        } else if (level == 2) {
  > |            contributionCap[addr] = SafeMath.div(500000 * 10 ** 18, usdPerEth); // KYC Tier 2 - 500k USD
    |        } else if (level == 1) {
    |            contributionCap[addr] = SafeMath.div(3000 * 10 ** 18, usdPerEth); // KYC Tier 1 - 3k USD
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'BitNauticWhitelist':
    |            contributionCap[addr] = SafeMath.div(500000 * 10 ** 18, usdPerEth); // KYC Tier 2 - 500k USD
    |        } else if (level == 1) {
  > |            contributionCap[addr] = SafeMath.div(3000 * 10 ** 18, usdPerEth); // KYC Tier 1 - 3k USD
    |        } else {
    |            contributionCap[addr] = 0;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(64)

[31mViolation[0m for UnrestrictedWrite in contract 'BitNauticWhitelist':
    |            contributionCap[addr] = SafeMath.div(3000 * 10 ** 18, usdPerEth); // KYC Tier 1 - 3k USD
    |        } else {
  > |            contributionCap[addr] = 0;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'BitNauticWhitelist':
    |    require(newOwner != address(0x0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'BitNauticWhitelist':
    |    function setKYCLevel(address addr, uint8 level) onlyOwner public returns (bool) {
    |        if (level >= 3) {
  > |            contributionCap[addr] = 50000 ether; // crowdsale hard cap
    |        } else if (level == 2) {
    |            contributionCap[addr] = SafeMath.div(500000 * 10 ** 18, usdPerEth); // KYC Tier 2 - 500k USD
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'BitNauticWhitelist':
    |            contributionCap[addr] = SafeMath.div(3000 * 10 ** 18, usdPerEth); // KYC Tier 1 - 3k USD
    |        } else {
  > |            contributionCap[addr] = 0;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'BitNauticWhitelist':
    |
    |    function setAMLWhitelisted(address addr, bool whitelisted) onlyOwner public returns (bool) {
  > |        AMLWhitelisted[addr] = whitelisted;
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(89)

[33mWarning[0m for LockedEther in contract 'CappedToken':
    |}
    |
  > |contract CappedToken is MintableToken {
    |  uint256 public cap;
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(811)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(672)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(673)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(713)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(714)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(715)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(731)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(753)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(761)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(763)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = SafeMath.add(totalSupply, _amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(789)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = SafeMath.add(totalSupply, _amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(790)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |  function burnTokens(uint256 _unsoldTokens) onlyOwner canMint public returns (bool) {
  > |    totalSupply = SafeMath.sub(totalSupply, _unsoldTokens);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(807)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    require(newOwner != address(0x0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(35)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |    // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(265)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale is Ownable, Pausable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(186)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(265)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        require(!checkBurnTokens);
    |
  > |        token.mint(0x0, publicSupply);
    |        token.burnTokens(publicSupply);
    |        publicSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(287)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |        token.mint(0x0, publicSupply);
  > |        token.burnTokens(publicSupply);
    |        publicSupply = 0;
    |        checkBurnTokens = true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(288)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(265)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        require(!checkBurnTokens);
    |
  > |        token.mint(0x0, publicSupply);
    |        token.burnTokens(publicSupply);
    |        publicSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(287)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |        token.mint(0x0, publicSupply);
  > |        token.burnTokens(publicSupply);
    |        publicSupply = 0;
    |        checkBurnTokens = true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    require(newOwner != address(0x0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |        // update state
  > |        weiRaised = weiRaised.add(msg.value);
    |
    |        forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        token.mint(0x0, publicSupply);
    |        token.burnTokens(publicSupply);
  > |        publicSupply = 0;
    |        checkBurnTokens = true;
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        token.burnTokens(publicSupply);
    |        publicSupply = 0;
  > |        checkBurnTokens = true;
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(290)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |}
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(770)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(672)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(673)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(713)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(714)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(715)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(731)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(753)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(761)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(763)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = SafeMath.add(totalSupply, _amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(789)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = SafeMath.add(totalSupply, _amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(790)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function burnTokens(uint256 _unsoldTokens) onlyOwner canMint public returns (bool) {
  > |    totalSupply = SafeMath.sub(totalSupply, _unsoldTokens);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(807)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0x0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(35)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.13;
    |
  > |contract Ownable {
    |  address internal owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public returns (bool) {
    |    require(newOwner != address(0x0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0x0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(35)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public returns (bool) {
    |    require(newOwner != address(0x0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0x0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(140)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(385)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(398)

[33mWarning[0m for LockedEther in contract 'RefundVault':
    |}
    |
  > |contract RefundVault is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(357)

[31mViolation[0m for TODAmount in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(385)

[31mViolation[0m for TODReceiver in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(385)

[33mWarning[0m for TODReceiver in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(398)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(385)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(398)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |    state = State.Closed;
    |    emit Closed();
  > |    wallet.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(385)

[31mViolation[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(state == State.Refunding);
    |    uint256 depositedValue = deposited[investor];
  > |    deposited[investor] = 0;
    |    investor.transfer(depositedValue);
    |    emit Refunded(investor, depositedValue);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(newOwner != address(0x0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function deposit(address investor) onlyOwner public payable {
    |    require(state == State.Active);
  > |    deposited[investor] = deposited[investor].add(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function close() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Closed;
    |    emit Closed();
    |    wallet.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function enableRefunds() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Refunding;
    |    emit RefundsEnabled();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(390)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |    /**
    |    * @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(145)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |  mapping (address => mapping (address => uint256)) allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(696)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(672)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(715)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(731)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(753)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(761)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9ed3b46d93f942d1f967584fb3099ef5262a95b1.sol(763)


