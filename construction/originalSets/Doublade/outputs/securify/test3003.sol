Processing contract: /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol:AgiCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol:ReentrancyGuard
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol:RefundVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol:SingularityNetToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'AgiCrowdsale':
    |    // send ether to the fund collection wallet, the vault in this case
    |    function forwardFunds(uint256 weiAmount) internal {
  > |        vault.deposit.value(weiAmount)(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(505)

[33mWarning[0m for LockedEther in contract 'AgiCrowdsale':
    |}
    |
  > |contract AgiCrowdsale is Ownable, ReentrancyGuard {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(343)

[33mWarning[0m for TODAmount in contract 'AgiCrowdsale':
    |    // send ether to the fund collection wallet, the vault in this case
    |    function forwardFunds(uint256 weiAmount) internal {
  > |        vault.deposit.value(weiAmount)(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(505)

[33mWarning[0m for TODAmount in contract 'AgiCrowdsale':
    |        //refund if the contribution exceed the cap
    |        if (weiToReturn > 0) {
  > |            msg.sender.transfer(weiToReturn);
    |            TokenRefund(beneficiary, weiToReturn);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(432)

[33mWarning[0m for TODReceiver in contract 'AgiCrowdsale':
    |        //refund if the contribution exceed the cap
    |        if (weiToReturn > 0) {
  > |            msg.sender.transfer(weiToReturn);
    |            TokenRefund(beneficiary, weiToReturn);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(432)

[33mWarning[0m for UnhandledException in contract 'AgiCrowdsale':
    |        //refund if the contribution exceed the cap
    |        if (weiToReturn > 0) {
  > |            msg.sender.transfer(weiToReturn);
    |            TokenRefund(beneficiary, weiToReturn);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(432)

[33mWarning[0m for UnhandledException in contract 'AgiCrowdsale':
    |            tokens
    |        );
  > |        token.transferTokens(beneficiary,tokens);
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(448)

[33mWarning[0m for UnhandledException in contract 'AgiCrowdsale':
    |        require(isFinalized);
    |        require(!goalReached());
  > |        vault.refund(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(460)

[33mWarning[0m for UnhandledException in contract 'AgiCrowdsale':
    |    function claimUnsold() onlyOwner {
    |        require(endTime <= getBlockTimestamp());
  > |        uint256 unsold = token.balanceOf(this);
    |
    |        if (unsold > 0) {
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(466)

[33mWarning[0m for UnhandledException in contract 'AgiCrowdsale':
    |
    |        if (unsold > 0) {
  > |            require(token.transferTokens(msg.sender, unsold));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(469)

[33mWarning[0m for UnhandledException in contract 'AgiCrowdsale':
    |        if (goalReached()) {
    |            //Close the vault
  > |            vault.close();
    |            //Unpause the token 
    |            token.unpause();
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(488)

[33mWarning[0m for UnhandledException in contract 'AgiCrowdsale':
    |            vault.close();
    |            //Unpause the token 
  > |            token.unpause();
    |            //give ownership back to deployer
    |            token.transferOwnership(owner);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(490)

[33mWarning[0m for UnhandledException in contract 'AgiCrowdsale':
    |            token.unpause();
    |            //give ownership back to deployer
  > |            token.transferOwnership(owner);
    |        } else {
    |            //else enable refunds
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(492)

[33mWarning[0m for UnhandledException in contract 'AgiCrowdsale':
    |        } else {
    |            //else enable refunds
  > |            vault.enableRefunds();
    |        }
    |        //update the sate of isFinalized
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(495)

[33mWarning[0m for UnhandledException in contract 'AgiCrowdsale':
    |    // send ether to the fund collection wallet, the vault in this case
    |    function forwardFunds(uint256 weiAmount) internal {
  > |        vault.deposit.value(weiAmount)(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(505)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgiCrowdsale':
    |        //refund if the contribution exceed the cap
    |        if (weiToReturn > 0) {
  > |            msg.sender.transfer(weiToReturn);
    |            TokenRefund(beneficiary, weiToReturn);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(432)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgiCrowdsale':
    |            tokens
    |        );
  > |        token.transferTokens(beneficiary,tokens);
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(448)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgiCrowdsale':
    |        require(isFinalized);
    |        require(!goalReached());
  > |        vault.refund(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(460)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgiCrowdsale':
    |    function claimUnsold() onlyOwner {
    |        require(endTime <= getBlockTimestamp());
  > |        uint256 unsold = token.balanceOf(this);
    |
    |        if (unsold > 0) {
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(466)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgiCrowdsale':
    |
    |        if (unsold > 0) {
  > |            require(token.transferTokens(msg.sender, unsold));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(469)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgiCrowdsale':
    |        if (goalReached()) {
    |            //Close the vault
  > |            vault.close();
    |            //Unpause the token 
    |            token.unpause();
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(488)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgiCrowdsale':
    |            vault.close();
    |            //Unpause the token 
  > |            token.unpause();
    |            //give ownership back to deployer
    |            token.transferOwnership(owner);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(490)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgiCrowdsale':
    |            token.unpause();
    |            //give ownership back to deployer
  > |            token.transferOwnership(owner);
    |        } else {
    |            //else enable refunds
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(492)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgiCrowdsale':
    |        } else {
    |            //else enable refunds
  > |            vault.enableRefunds();
    |        }
    |        //update the sate of isFinalized
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(495)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgiCrowdsale':
    |    // send ether to the fund collection wallet, the vault in this case
    |    function forwardFunds(uint256 weiAmount) internal {
  > |        vault.deposit.value(weiAmount)(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(505)

[31mViolation[0m for UnrestrictedWrite in contract 'AgiCrowdsale':
    |  modifier nonReentrant() {
    |    require(!rentrancy_lock);
  > |    rentrancy_lock = true;
    |    _;
    |    rentrancy_lock = false;
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'AgiCrowdsale':
    |        for (uint256 i = 0; i < addresses.length; i++) {
    |            address contributorAddress = addresses[i];
  > |            whitelist[contributorAddress] = status;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(477)

[33mWarning[0m for UnrestrictedWrite in contract 'AgiCrowdsale':
    |    rentrancy_lock = true;
    |    _;
  > |    rentrancy_lock = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'AgiCrowdsale':
    |        uint256 tokens = getTokens(weiAmount);
    |        //update the state of weiRaised
  > |        weiRaised = weiRaised.add(weiAmount);
    |        contribution[beneficiary] = contribution[beneficiary].add(weiAmount);
    |     
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'AgiCrowdsale':
    |        //update the state of weiRaised
    |        weiRaised = weiRaised.add(weiAmount);
  > |        contribution[beneficiary] = contribution[beneficiary].add(weiAmount);
    |     
    |        //Trigger the event of TokenPurchase
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(439)

[33mWarning[0m for UnrestrictedWrite in contract 'AgiCrowdsale':
    |        }
    |        //update the sate of isFinalized
  > |        isFinalized = true;
    |        //trigger and emit the event of finalization
    |        Finalized();
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(498)

[33mWarning[0m for UnrestrictedWrite in contract 'AgiCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(88)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(201)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is StandardToken {
    |
    |    event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(314)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(88)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(174)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    |}
    |
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(174)

[33mWarning[0m for LockedEther in contract 'ReentrancyGuard':
    |pragma solidity ^0.4.13;
    |
  > |contract ReentrancyGuard {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(3)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(121)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(134)

[33mWarning[0m for LockedEther in contract 'RefundVault':
    |}
    |
  > |contract RefundVault is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(93)

[31mViolation[0m for TODAmount in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(121)

[31mViolation[0m for TODReceiver in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(121)

[33mWarning[0m for TODReceiver in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(134)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(121)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(134)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(state == State.Refunding);
    |    uint256 depositedValue = deposited[investor];
  > |    deposited[investor] = 0;
    |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function deposit(address investor) onlyOwner public payable {
    |    require(state == State.Active);
  > |    deposited[investor] = deposited[investor].add(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function close() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Closed;
    |    Closed();
    |    wallet.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function enableRefunds() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Refunding;
    |    RefundsEnabled();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(126)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(27)

[33mWarning[0m for LockedEther in contract 'SingularityNetToken':
    |}
    |
  > |contract SingularityNetToken is PausableToken, BurnableToken {
    |
    |    string public constant name = "SingularityNET Token";
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(539)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularityNetToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularityNetToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularityNetToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularityNetToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularityNetToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularityNetToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularityNetToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularityNetToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularityNetToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularityNetToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularityNetToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularityNetToken':
    |        require(amount > 0);
    |
  > |        balances[owner] = balances[owner].sub(amount);
    |        balances[beneficiary] = balances[beneficiary].add(amount);
    |        Transfer(owner, beneficiary, amount);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(558)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularityNetToken':
    |
    |        balances[owner] = balances[owner].sub(amount);
  > |        balances[beneficiary] = balances[beneficiary].add(amount);
    |        Transfer(owner, beneficiary, amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(559)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularityNetToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularityNetToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'SingularityNetToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(174)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc4aad17558fa95c8937d0856b2dad74c1a7a095f.sol(291)


