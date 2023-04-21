Processing contract: /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol:ArgumentsChecker
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol:CirculatingToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol:CrowdsaleBase
Processing contract: /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol:EESTSale3
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol:LightFundsRegistry
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol:ReentrancyGuard
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol:TokenBase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ArgumentsChecker':
    |pragma solidity ^0.4.13;
    |
  > |contract ArgumentsChecker {
    |
    |    /// @dev check which prevents short address attack
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(3)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(113)

[33mWarning[0m for LockedEther in contract 'CirculatingToken':
    |}
    |
  > |contract CirculatingToken is StandardToken {
    |
    |    event CirculationEnabled();
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'CirculatingToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'CirculatingToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'CirculatingToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'CirculatingToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'CirculatingToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'CirculatingToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(196)

[31mViolation[0m for DAOConstantGas in contract 'LightFundsRegistry':
    |        m_weiBalances[payee] = 0;
    |
  > |        payee.transfer(payment);
    |        RefundSent(payee, payment);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(454)

[33mWarning[0m for DAOConstantGas in contract 'LightFundsRegistry':
    |        if (State.SUCCEEDED == _newState) {
    |            uint _80percent = this.balance.mul(80).div(100);
  > |            m_owner80.transfer(_80percent);
    |            EtherSent(m_owner80, _80percent);
    |
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(409)

[33mWarning[0m for DAOConstantGas in contract 'LightFundsRegistry':
    |
    |            uint _20percent = this.balance;
  > |            m_owner20.transfer(_20percent);
    |            EtherSent(m_owner20, _20percent);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(413)

[33mWarning[0m for LockedEther in contract 'LightFundsRegistry':
    |}
    |
  > |contract LightFundsRegistry is ArgumentsChecker, Ownable, ReentrancyGuard {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(359)

[31mViolation[0m for TODAmount in contract 'LightFundsRegistry':
    |
    |            uint _20percent = this.balance;
  > |            m_owner20.transfer(_20percent);
    |            EtherSent(m_owner20, _20percent);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(413)

[33mWarning[0m for TODReceiver in contract 'LightFundsRegistry':
    |        m_weiBalances[payee] = 0;
    |
  > |        payee.transfer(payment);
    |        RefundSent(payee, payment);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(454)

[33mWarning[0m for UnhandledException in contract 'LightFundsRegistry':
    |        if (State.SUCCEEDED == _newState) {
    |            uint _80percent = this.balance.mul(80).div(100);
  > |            m_owner80.transfer(_80percent);
    |            EtherSent(m_owner80, _80percent);
    |
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(409)

[33mWarning[0m for UnhandledException in contract 'LightFundsRegistry':
    |
    |            uint _20percent = this.balance;
  > |            m_owner20.transfer(_20percent);
    |            EtherSent(m_owner20, _20percent);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(413)

[33mWarning[0m for UnhandledException in contract 'LightFundsRegistry':
    |        m_weiBalances[payee] = 0;
    |
  > |        payee.transfer(payment);
    |        RefundSent(payee, payment);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(454)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LightFundsRegistry':
    |        if (State.SUCCEEDED == _newState) {
    |            uint _80percent = this.balance.mul(80).div(100);
  > |            m_owner80.transfer(_80percent);
    |            EtherSent(m_owner80, _80percent);
    |
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(409)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LightFundsRegistry':
    |
    |            uint _20percent = this.balance;
  > |            m_owner20.transfer(_20percent);
    |            EtherSent(m_owner20, _20percent);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(413)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LightFundsRegistry':
    |        m_weiBalances[payee] = 0;
    |
  > |        payee.transfer(payment);
    |        RefundSent(payee, payment);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(454)

[31mViolation[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |  modifier nonReentrant() {
    |    require(!rentrancy_lock);
  > |    rentrancy_lock = true;
    |    _;
    |    rentrancy_lock = false;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |pragma solidity ^0.4.13;
    |
  > |contract ArgumentsChecker {
    |
    |    /// @dev check which prevents short address attack
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |    rentrancy_lock = true;
    |    _;
  > |    rentrancy_lock = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |        else assert(false);
    |
  > |        m_state = _newState;
    |        StateChanged(m_state);
    |
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |        // register investor
    |        if (0 == m_weiBalances[_investor])
  > |            m_investors.push(_investor);
    |
    |        // register payment
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(430)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |
    |        // register payment
  > |        totalInvested = totalInvested.add(amount);
    |        m_weiBalances[_investor] = m_weiBalances[_investor].add(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(433)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |        // register payment
    |        totalInvested = totalInvested.add(amount);
  > |        m_weiBalances[_investor] = m_weiBalances[_investor].add(amount);
    |
    |        Invested(_investor, amount);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |        require(this.balance >= payment);
    |
  > |        totalInvested = totalInvested.sub(payment);
    |        m_weiBalances[payee] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'LightFundsRegistry':
    |
    |        totalInvested = totalInvested.sub(payment);
  > |        m_weiBalances[payee] = 0;
    |
    |        payee.transfer(payment);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(452)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |}
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(278)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(93)

[33mWarning[0m for LockedEther in contract 'ReentrancyGuard':
    |}
    |
  > |contract ReentrancyGuard {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(335)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(18)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(196)

[33mWarning[0m for LockedEther in contract 'TokenBase':
    |}
    |
  > |contract TokenBase is MintableToken, CirculatingToken {
    |
    |    event Burn(address indexed from, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |        require(_amount<=balances[_from]);
    |
  > |        totalSupply = totalSupply.sub(_amount);
    |        balances[_from] = balances[_from].sub(_amount);
    |        Burn(_from, _amount);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |
    |        totalSupply = totalSupply.sub(_amount);
  > |        balances[_from] = balances[_from].sub(_amount);
    |        Burn(_from, _amount);
    |        Transfer(_from, address(0), _amount);
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |            return false;
    |
  > |        m_isCirculating = true;
    |        CirculationEnabled();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd0b2542c62b34537c4eb114489195506e584c0a6.sol(278)


