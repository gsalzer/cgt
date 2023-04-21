Processing contract: /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol:AtomToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol:AtomTokenPreICO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol:CappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol:Destructible
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol:FinalizableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol:RefundVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol:RefundableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AtomToken':
    |  }
    |}
  > |contract AtomToken is MintableToken {
    |  string public constant name = "AtomToken";
    |  string public constant symbol = "ATM";
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'AtomToken':
    |    require(_to != address(0));
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'AtomToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'AtomToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(424)

[33mWarning[0m for UnrestrictedWrite in contract 'AtomToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(445)

[33mWarning[0m for UnrestrictedWrite in contract 'AtomToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'AtomToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(455)

[33mWarning[0m for UnrestrictedWrite in contract 'AtomToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'AtomToken':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(494)

[33mWarning[0m for DAO in contract 'AtomTokenPreICO':
    |  // the RefundVault deposit function
    |  function forwardFunds() internal {
  > |    vault.deposit.value(msg.value)(msg.sender);
    |  }
    |  // if crowdsale is unsuccessful, investors can claim refunds here
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(263)

[33mWarning[0m for LockedEther in contract 'AtomTokenPreICO':
    |  }
    |}
  > |contract AtomTokenPreICO is CappedCrowdsale, RefundableCrowdsale, Destructible, Pausable {
    |  function AtomTokenPreICO(address _tokenAddress, uint256 _startTime, uint256 _endTime, uint256 _rate, uint256 _goal, uint256 _cap, address _wallet)
    |    CappedCrowdsale(_cap)
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(512)

[31mViolation[0m for TODReceiver in contract 'AtomTokenPreICO':
    |  // the RefundVault deposit function
    |  function forwardFunds() internal {
  > |    vault.deposit.value(msg.value)(msg.sender);
    |  }
    |  // if crowdsale is unsuccessful, investors can claim refunds here
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(263)

[33mWarning[0m for UnhandledException in contract 'AtomTokenPreICO':
    |    weiRaised = weiRaised.add(weiAmount);
    |    atomToken = AtomToken(tokenAddr);
  > |    atomToken.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(127)

[33mWarning[0m for UnhandledException in contract 'AtomTokenPreICO':
    |  // the RefundVault deposit function
    |  function forwardFunds() internal {
  > |    vault.deposit.value(msg.value)(msg.sender);
    |  }
    |  // if crowdsale is unsuccessful, investors can claim refunds here
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(263)

[33mWarning[0m for UnhandledException in contract 'AtomTokenPreICO':
    |    require(isFinalized);
    |    require(!goalReached());
  > |    vault.refund(msg.sender);
    |  }
    |//  // if crowdsale is unsuccessful, investors can claim refunds here
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(269)

[33mWarning[0m for UnhandledException in contract 'AtomTokenPreICO':
    |  function finalization() internal {
    |    if (goalReached()) {
  > |      vault.close();
    |    } else {
    |      vault.enableRefunds();
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(285)

[33mWarning[0m for UnhandledException in contract 'AtomTokenPreICO':
    |      vault.close();
    |    } else {
  > |      vault.enableRefunds();
    |    }
    |    super.finalization();
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(287)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AtomTokenPreICO':
    |    weiRaised = weiRaised.add(weiAmount);
    |    atomToken = AtomToken(tokenAddr);
  > |    atomToken.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AtomTokenPreICO':
    |  // the RefundVault deposit function
    |  function forwardFunds() internal {
  > |    vault.deposit.value(msg.value)(msg.sender);
    |  }
    |  // if crowdsale is unsuccessful, investors can claim refunds here
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(263)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AtomTokenPreICO':
    |    require(isFinalized);
    |    require(!goalReached());
  > |    vault.refund(msg.sender);
    |  }
    |//  // if crowdsale is unsuccessful, investors can claim refunds here
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AtomTokenPreICO':
    |  function finalization() internal {
    |    if (goalReached()) {
  > |      vault.close();
    |    } else {
    |      vault.enableRefunds();
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(285)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AtomTokenPreICO':
    |      vault.close();
    |    } else {
  > |      vault.enableRefunds();
    |    }
    |    super.finalization();
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'AtomTokenPreICO':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'AtomTokenPreICO':
    |    uint256 tokens = weiAmount.mul(rate);
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |    atomToken = AtomToken(tokenAddr);
    |    atomToken.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'AtomTokenPreICO':
    |    // update state
    |    weiRaised = weiRaised.add(weiAmount);
  > |    atomToken = AtomToken(tokenAddr);
    |    atomToken.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'AtomTokenPreICO':
    |    finalization();
    |    Finalized();
  > |    isFinalized = true;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'AtomTokenPreICO':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'AtomTokenPreICO':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(344)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |  mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(363)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  // @return true if the transaction can buy tokens
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(134)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * as they arrive.
    | */
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |  // The token being sold
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(79)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |    atomToken = AtomToken(tokenAddr);
  > |    atomToken.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(127)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  // @return true if the transaction can buy tokens
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(134)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |    atomToken = AtomToken(tokenAddr);
  > |    atomToken.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  // @return true if the transaction can buy tokens
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    uint256 tokens = weiAmount.mul(rate);
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |    atomToken = AtomToken(tokenAddr);
    |    atomToken.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    // update state
    |    weiRaised = weiRaised.add(weiAmount);
  > |    atomToken = AtomToken(tokenAddr);
    |    atomToken.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(126)

[33mWarning[0m for LockedEther in contract 'Destructible':
    | * @dev Base contract that can be destroyed by owner. All funds in contract will be sent to the owner.
    | */
  > |contract Destructible is Ownable {
    |  function Destructible() payable { }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'Destructible':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(42)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(467)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(424)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(445)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(455)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(494)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(42)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(315)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Pause();
    |  event Unpause();
  > |  bool public paused = false;
    |  /**
    |   * @dev Modifier to make a function callable only when the contract is not paused.
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(318)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(336)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(344)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |  function enableRefunds() onlyOwner public {
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(227)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(238)

[33mWarning[0m for LockedEther in contract 'RefundVault':
    | * and forwarding it if crowdsale is successful.
    | */
  > |contract RefundVault is Ownable {
    |  using SafeMath for uint256;
    |  enum State { Active, Refunding, Closed }
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(205)

[31mViolation[0m for TODAmount in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |  function enableRefunds() onlyOwner public {
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(227)

[31mViolation[0m for TODReceiver in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |  function enableRefunds() onlyOwner public {
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(227)

[33mWarning[0m for TODReceiver in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(238)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |  function enableRefunds() onlyOwner public {
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(227)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(238)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |  function enableRefunds() onlyOwner public {
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(state == State.Refunding);
    |    uint256 depositedValue = deposited[investor];
  > |    deposited[investor] = 0;
    |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function deposit(address investor) onlyOwner public payable {
    |    require(state == State.Active);
  > |    deposited[investor] = deposited[investor].add(msg.value);
    |  }
    |  function close() onlyOwner public {
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function close() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Closed;
    |    Closed();
    |    wallet.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function enableRefunds() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Refunding;
    |    RefundsEnabled();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(231)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(49)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |  mapping (address => mapping (address => uint256)) allowed;
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(424)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(445)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x4021e315e76dabb392056bdde69676eabfb35116.sol(455)


