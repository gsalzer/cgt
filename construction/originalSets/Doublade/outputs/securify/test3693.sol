Processing contract: /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol:DOCKCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(63)

[33mWarning[0m for DAOConstantGas in contract 'DOCKCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(310)

[33mWarning[0m for LockedEther in contract 'DOCKCrowdsale':
    | * Main crowdsale contract.
    | */
  > |contract DOCKCrowdsale is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(202)

[31mViolation[0m for TODReceiver in contract 'DOCKCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(310)

[33mWarning[0m for UnhandledException in contract 'DOCKCrowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.transferFrom(tokenPoolAddress, beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(299)

[33mWarning[0m for UnhandledException in contract 'DOCKCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(310)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DOCKCrowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.transferFrom(tokenPoolAddress, beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(299)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DOCKCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCKCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCKCrowdsale':
    |  function updateRate(uint256 _rate) onlyOwner external returns (bool) {
    |    require(_rate > 0);
  > |    rate = _rate;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCKCrowdsale':
    |  function updateWallet(address _wallet) onlyOwner external returns (bool) {
    |    require(_wallet != 0x0);
  > |    wallet = _wallet;
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCKCrowdsale':
    |  function updateTokenAddress(address _tokenAddress) onlyOwner external returns (bool) {
    |    require(_tokenAddress != 0x0);
  > |    token = StandardToken(_tokenAddress);
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCKCrowdsale':
    |  function updateTokenPoolAddress(address _tokenHolder) onlyOwner external returns (bool) {
    |    require(_tokenHolder != 0x0);
  > |    tokenPoolAddress = _tokenHolder;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCKCrowdsale':
    |
    |  function updateEndTime(uint256 _endTime) onlyOwner external returns (bool){
  > |    endTime = _endTime;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCKCrowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.transferFrom(tokenPoolAddress, beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(297)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(168)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(195)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(4)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |  returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf21abf5ac06649f5e8e7b816c7e53dc3d3cb4614.sol(158)


