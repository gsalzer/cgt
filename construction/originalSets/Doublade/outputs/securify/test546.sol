Processing contract: /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol:CrowdsaleBase
Processing contract: /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol:FinalizeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol:FractionalERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol:PricingStrategy
Processing contract: /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol:StandardTokenExt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol:WINCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol:WaWlletTokenCrowdsale
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
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(602)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(626)

[33mWarning[0m for LockedEther in contract 'Haltable':
    |}
    |
  > |contract Haltable is Ownable {
    |  bool public halted;
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |contract Haltable is Ownable {
  > |  bool public halted;
    |
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function halt() external onlyOwner {
    |    halted = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function unhalt() external onlyOwner onlyInEmergency {
    |    halted = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(123)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |}
    |
  > |contract MintableToken is StandardTokenExt, Ownable {
    |
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(739)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(626)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(661)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(677)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(703)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(721)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(723)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(769)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(93)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(643)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(626)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(661)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(677)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(703)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(721)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(723)

[33mWarning[0m for LockedEther in contract 'StandardTokenExt':
    |}
    |
  > |contract StandardTokenExt is StandardToken {
    |
    |  /* Interface declaration */
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(731)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(626)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(661)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(677)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(703)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(721)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(723)

[33mWarning[0m for DAOConstantGas in contract 'WaWlletTokenCrowdsale':
    |
    |    // Pocket the money, or fail the crowdsale if we for some reason cannot send the money to our multisig
  > |    if(!multisigWallet.send(weiAmount)) revert();
    |
    |    // Tell us invest was success
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(320)

[33mWarning[0m for DAOConstantGas in contract 'WaWlletTokenCrowdsale':
    |    weiRefunded = weiRefunded.add(weiValue);
    |    Refund(msg.sender, weiValue);
  > |    if (!msg.sender.send(weiValue)) revert();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(439)

[33mWarning[0m for LockedEther in contract 'WaWlletTokenCrowdsale':
    |}
    |
  > |contract WaWlletTokenCrowdsale is WINCrowdsale {
    |
    |  /* Maximum amount of tokens this crowdsale can sell. */
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(934)

[33mWarning[0m for TODAmount in contract 'WaWlletTokenCrowdsale':
    |
    |    // Pocket the money, or fail the crowdsale if we for some reason cannot send the money to our multisig
  > |    if(!multisigWallet.send(weiAmount)) revert();
    |
    |    // Tell us invest was success
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(320)

[33mWarning[0m for TODAmount in contract 'WaWlletTokenCrowdsale':
    |    weiRefunded = weiRefunded.add(weiValue);
    |    Refund(msg.sender, weiValue);
  > |    if (!msg.sender.send(weiValue)) revert();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(439)

[31mViolation[0m for TODReceiver in contract 'WaWlletTokenCrowdsale':
    |
    |    // Pocket the money, or fail the crowdsale if we for some reason cannot send the money to our multisig
  > |    if(!multisigWallet.send(weiAmount)) revert();
    |
    |    // Tell us invest was success
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(320)

[33mWarning[0m for TODReceiver in contract 'WaWlletTokenCrowdsale':
    |    weiRefunded = weiRefunded.add(weiValue);
    |    Refund(msg.sender, weiValue);
  > |    if (!msg.sender.send(weiValue)) revert();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(439)

[33mWarning[0m for UnhandledException in contract 'WaWlletTokenCrowdsale':
    |
    |    // Account presale sales separately, so that they do not count against pricing tranches
  > |    uint tokenAmount = pricingStrategy.calculatePrice(weiAmount, weiRaised - presaleWeiRaised, tokensSold, msg.sender, token.decimals());
    |
    |    // Dust transaction
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(289)

[33mWarning[0m for UnhandledException in contract 'WaWlletTokenCrowdsale':
    |    tokensSold = tokensSold.add(tokenAmount);
    |
  > |    if(pricingStrategy.isPresalePurchase(receiver)) {
    |        presaleWeiRaised = presaleWeiRaised.add(weiAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(310)

[33mWarning[0m for UnhandledException in contract 'WaWlletTokenCrowdsale':
    |
    |    // Pocket the money, or fail the crowdsale if we for some reason cannot send the money to our multisig
  > |    if(!multisigWallet.send(weiAmount)) revert();
    |
    |    // Tell us invest was success
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(320)

[33mWarning[0m for UnhandledException in contract 'WaWlletTokenCrowdsale':
    |    // Finalizing is optional. We only call it if we are given a finalizing agent.
    |    if(address(finalizeAgent) != 0) {
  > |      finalizeAgent.finalizeCrowdsale();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(342)

[33mWarning[0m for UnhandledException in contract 'WaWlletTokenCrowdsale':
    |
    |    // Don't allow setting bad agent
  > |    if(!finalizeAgent.isFinalizeAgent()) {
    |      revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(357)

[33mWarning[0m for UnhandledException in contract 'WaWlletTokenCrowdsale':
    |
    |    // Don't allow setting bad agent
  > |    if(!pricingStrategy.isPricingStrategy()) {
    |      revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(395)

[33mWarning[0m for UnhandledException in contract 'WaWlletTokenCrowdsale':
    |    weiRefunded = weiRefunded.add(weiValue);
    |    Refund(msg.sender, weiValue);
  > |    if (!msg.sender.send(weiValue)) revert();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(439)

[33mWarning[0m for UnhandledException in contract 'WaWlletTokenCrowdsale':
    |   */
    |  function isFinalizerSane() public constant returns (bool sane) {
  > |    return finalizeAgent.isSane();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(453)

[33mWarning[0m for UnhandledException in contract 'WaWlletTokenCrowdsale':
    |   */
    |  function isPricingSane() public constant returns (bool sane) {
  > |    return pricingStrategy.isSane(address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(460)

[33mWarning[0m for UnhandledException in contract 'WaWlletTokenCrowdsale':
    |    if(finalized) return State.Finalized;
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
  > |    else if (!finalizeAgent.isSane()) return State.Preparing;
    |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(471)

[33mWarning[0m for UnhandledException in contract 'WaWlletTokenCrowdsale':
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
    |    else if (!finalizeAgent.isSane()) return State.Preparing;
  > |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
    |    else if (block.timestamp <= endsAt && !isCrowdsaleFull()) return State.Funding;
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(472)

[33mWarning[0m for UnhandledException in contract 'WaWlletTokenCrowdsale':
    |  function preallocate(address receiver, uint fullTokens, uint weiPrice) public onlyOwner {
    |
  > |    uint tokenAmount = fullTokens * 10**token.decimals();
    |    uint weiAmount = fullTokens * weiPrice; // This can be also 0, we give out tokens for free
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(822)

[33mWarning[0m for UnhandledException in contract 'WaWlletTokenCrowdsale':
    |    }
    |	
  > |    uint tokenAmount = fullTokens * 10**token.decimals();
    |    uint weiAmount = fullTokens * weiPrice; // This can be also 0, we give out tokens for free
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(869)

[33mWarning[0m for UnhandledException in contract 'WaWlletTokenCrowdsale':
    |  function assignTokens(address receiver, uint tokenAmount) internal {
    |    MintableToken mintableToken = MintableToken(token);
  > |    mintableToken.mint(receiver, tokenAmount);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(959)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaWlletTokenCrowdsale':
    |
    |    // Account presale sales separately, so that they do not count against pricing tranches
  > |    uint tokenAmount = pricingStrategy.calculatePrice(weiAmount, weiRaised - presaleWeiRaised, tokensSold, msg.sender, token.decimals());
    |
    |    // Dust transaction
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(289)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaWlletTokenCrowdsale':
    |    tokensSold = tokensSold.add(tokenAmount);
    |
  > |    if(pricingStrategy.isPresalePurchase(receiver)) {
    |        presaleWeiRaised = presaleWeiRaised.add(weiAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(310)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaWlletTokenCrowdsale':
    |
    |    // Pocket the money, or fail the crowdsale if we for some reason cannot send the money to our multisig
  > |    if(!multisigWallet.send(weiAmount)) revert();
    |
    |    // Tell us invest was success
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(320)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaWlletTokenCrowdsale':
    |    // Finalizing is optional. We only call it if we are given a finalizing agent.
    |    if(address(finalizeAgent) != 0) {
  > |      finalizeAgent.finalizeCrowdsale();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(342)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaWlletTokenCrowdsale':
    |
    |    // Don't allow setting bad agent
  > |    if(!finalizeAgent.isFinalizeAgent()) {
    |      revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(357)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaWlletTokenCrowdsale':
    |
    |    // Don't allow setting bad agent
  > |    if(!pricingStrategy.isPricingStrategy()) {
    |      revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(395)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaWlletTokenCrowdsale':
    |    weiRefunded = weiRefunded.add(weiValue);
    |    Refund(msg.sender, weiValue);
  > |    if (!msg.sender.send(weiValue)) revert();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(439)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaWlletTokenCrowdsale':
    |   */
    |  function isFinalizerSane() public constant returns (bool sane) {
  > |    return finalizeAgent.isSane();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(453)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaWlletTokenCrowdsale':
    |   */
    |  function isPricingSane() public constant returns (bool sane) {
  > |    return pricingStrategy.isSane(address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(460)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaWlletTokenCrowdsale':
    |    if(finalized) return State.Finalized;
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
  > |    else if (!finalizeAgent.isSane()) return State.Preparing;
    |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(471)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaWlletTokenCrowdsale':
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
    |    else if (!finalizeAgent.isSane()) return State.Preparing;
  > |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
    |    else if (block.timestamp <= endsAt && !isCrowdsaleFull()) return State.Funding;
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(472)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaWlletTokenCrowdsale':
    |  function preallocate(address receiver, uint fullTokens, uint weiPrice) public onlyOwner {
    |
  > |    uint tokenAmount = fullTokens * 10**token.decimals();
    |    uint weiAmount = fullTokens * weiPrice; // This can be also 0, we give out tokens for free
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(822)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaWlletTokenCrowdsale':
    |    }
    |	
  > |    uint tokenAmount = fullTokens * 10**token.decimals();
    |    uint weiAmount = fullTokens * weiPrice; // This can be also 0, we give out tokens for free
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(869)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WaWlletTokenCrowdsale':
    |  function assignTokens(address receiver, uint tokenAmount) internal {
    |    MintableToken mintableToken = MintableToken(token);
  > |    mintableToken.mint(receiver, tokenAmount);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(959)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |    if(investedAmountOf[receiver] == 0) {
    |       // A new investor
  > |       investorCount++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |
    |    // Update investor
  > |    investedAmountOf[receiver] = investedAmountOf[receiver].add(weiAmount);
    |    tokenAmountOf[receiver] = tokenAmountOf[receiver].add(tokenAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |    // Update investor
    |    investedAmountOf[receiver] = investedAmountOf[receiver].add(weiAmount);
  > |    tokenAmountOf[receiver] = tokenAmountOf[receiver].add(tokenAmount);
    |
    |    // Update totals
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |
    |    // Update totals
  > |    weiRaised = weiRaised.add(weiAmount);
    |    tokensSold = tokensSold.add(tokenAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |    // Update totals
    |    weiRaised = weiRaised.add(weiAmount);
  > |    tokensSold = tokensSold.add(tokenAmount);
    |
    |    if(pricingStrategy.isPresalePurchase(receiver)) {
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |
    |    if(pricingStrategy.isPresalePurchase(receiver)) {
  > |        presaleWeiRaised = presaleWeiRaised.add(weiAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |  function loadRefund() public payable inState(State.Failure) {
    |    if(msg.value == 0) revert();
  > |    loadedRefund = loadedRefund.add(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(424)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |    uint256 weiValue = investedAmountOf[msg.sender];
    |    if (weiValue == 0) revert();
  > |    investedAmountOf[msg.sender] = 0;
    |    weiRefunded = weiRefunded.add(weiValue);
    |    Refund(msg.sender, weiValue);
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(436)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |    if (weiValue == 0) revert();
    |    investedAmountOf[msg.sender] = 0;
  > |    weiRefunded = weiRefunded.add(weiValue);
    |    Refund(msg.sender, weiValue);
    |    if (!msg.sender.send(weiValue)) revert();
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |    uint weiAmount = fullTokens * weiPrice; // This can be also 0, we give out tokens for free
    |
  > |    weiRaised = weiRaised.add(weiAmount);
    |    tokensSold = tokensSold.add(tokenAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(825)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |
    |    weiRaised = weiRaised.add(weiAmount);
  > |    tokensSold = tokensSold.add(tokenAmount);
    |
    |    investedAmountOf[receiver] = investedAmountOf[receiver].add(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(826)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |    tokensSold = tokensSold.add(tokenAmount);
    |
  > |    investedAmountOf[receiver] = investedAmountOf[receiver].add(weiAmount);
    |    tokenAmountOf[receiver] = tokenAmountOf[receiver].add(tokenAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(828)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |
    |    investedAmountOf[receiver] = investedAmountOf[receiver].add(weiAmount);
  > |    tokenAmountOf[receiver] = tokenAmountOf[receiver].add(tokenAmount);
    |
    |    assignTokens(receiver, tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(829)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |   
    |    // Update investor
  > |    investedAmountOf[receiver] = investedAmountOf[receiver].add(weiAmount);
    |    tokenAmountOf[receiver] = tokenAmountOf[receiver].add(tokenAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(880)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |    // Update investor
    |    investedAmountOf[receiver] = investedAmountOf[receiver].add(weiAmount);
  > |    tokenAmountOf[receiver] = tokenAmountOf[receiver].add(tokenAmount);
    |
    |	//Update Totals
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(881)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |
    |	//Update Totals
  > |    weiRaised = weiRaised.add(weiAmount);
    |    tokensSold = tokensSold.add(tokenAmount);
    |	
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(884)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |	//Update Totals
    |    weiRaised = weiRaised.add(weiAmount);
  > |    tokensSold = tokensSold.add(tokenAmount);
    |	
    |	
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(885)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |    }
    |
  > |    finalized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |   */
    |  function setFinalizeAgent(FinalizeAgent addr) public onlyOwner {
  > |    finalizeAgent = addr;
    |
    |    // Don't allow setting bad agent
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |    }
    |
  > |    endsAt = time;
    |    EndsAtChanged(endsAt);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |   */
    |  function setPricingStrategy(PricingStrategy _pricingStrategy) public onlyOwner {
  > |    pricingStrategy = _pricingStrategy;
    |
    |    // Don't allow setting bad agent
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |    }
    |
  > |    multisigWallet = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |  /** This is for manual testing of multisig wallet interaction */
    |  function setOwnerTestValue(uint val) public onlyOwner {
  > |    ownerTestValue = val;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |   */
    |  function setEarlyParicipantWhitelist(address addr, bool status) public onlyOwner {
  > |    earlyParticipantWhitelist[addr] = status;
    |    Whitelisted(addr, status);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |
    |	// increase investors count
  > |	investorCount++;
    |   
    |    // Update investor
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(877)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |   */
    |  function setRequireCustomerId(bool value) public onlyOwner {
  > |    requireCustomerId = value;
    |    InvestmentPolicyChanged(requireCustomerId, requiredSignedAddress, signerAddress);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(916)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |   */
    |  function setRequireSignedAddress(bool value, address _signerAddress) public onlyOwner {
  > |    requiredSignedAddress = value;
    |    signerAddress = _signerAddress;
    |    InvestmentPolicyChanged(requireCustomerId, requiredSignedAddress, signerAddress);
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(927)

[33mWarning[0m for UnrestrictedWrite in contract 'WaWlletTokenCrowdsale':
    |  function setRequireSignedAddress(bool value, address _signerAddress) public onlyOwner {
    |    requiredSignedAddress = value;
  > |    signerAddress = _signerAddress;
    |    InvestmentPolicyChanged(requireCustomerId, requiredSignedAddress, signerAddress);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x235dcf36b309ea22d00903c28534e0e34a42e90b.sol(928)


