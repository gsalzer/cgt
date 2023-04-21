Processing contract: /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol:DataWalletCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol:DataWalletToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol:ReentrancyGuard
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol:RefundVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(201)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is BasicToken {
    |
    |    event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(232)

[31mViolation[0m for DAO in contract 'DataWalletCrowdsale':
    |    // send ether to the fund collection wallet, the vault in this case
    |    function forwardFunds(uint256 weiAmount) internal {
  > |        vault.deposit.value(weiAmount)(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(514)

[33mWarning[0m for LockedEther in contract 'DataWalletCrowdsale':
    |}
    |
  > |contract DataWalletCrowdsale is Ownable, ReentrancyGuard {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(356)

[33mWarning[0m for TODAmount in contract 'DataWalletCrowdsale':
    |    // send ether to the fund collection wallet, the vault in this case
    |    function forwardFunds(uint256 weiAmount) internal {
  > |        vault.deposit.value(weiAmount)(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(514)

[33mWarning[0m for TODAmount in contract 'DataWalletCrowdsale':
    |        //refund if the contribution exceed the cap
    |        if (weiToReturn > 0) {
  > |            beneficiary.transfer(weiToReturn);
    |            TokenRefund(beneficiary, weiToReturn);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(444)

[33mWarning[0m for TODReceiver in contract 'DataWalletCrowdsale':
    |        //refund if the contribution exceed the cap
    |        if (weiToReturn > 0) {
  > |            beneficiary.transfer(weiToReturn);
    |            TokenRefund(beneficiary, weiToReturn);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(444)

[33mWarning[0m for UnhandledException in contract 'DataWalletCrowdsale':
    |        //refund if the contribution exceed the cap
    |        if (weiToReturn > 0) {
  > |            beneficiary.transfer(weiToReturn);
    |            TokenRefund(beneficiary, weiToReturn);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(444)

[33mWarning[0m for UnhandledException in contract 'DataWalletCrowdsale':
    |        TokenPurchase(beneficiary, weiAmount, tokens);
    |
  > |        token.transfer(beneficiary, tokens); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(456)

[33mWarning[0m for UnhandledException in contract 'DataWalletCrowdsale':
    |        require(isFinalized);
    |        require(!goalReached());
  > |        vault.refund(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(467)

[33mWarning[0m for UnhandledException in contract 'DataWalletCrowdsale':
    |    function claimUnsold() onlyOwner {
    |        require(endTime <= getBlockTimestamp());
  > |        uint256 unsold = token.balanceOf(this);
    |
    |        if (unsold > 0) {
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(473)

[33mWarning[0m for UnhandledException in contract 'DataWalletCrowdsale':
    |
    |        if (unsold > 0) {
  > |            require(token.transfer(msg.sender, unsold));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(476)

[33mWarning[0m for UnhandledException in contract 'DataWalletCrowdsale':
    |        if (goalReached()) {
    |            //Close the vault
  > |            vault.close();
    |            //Unpause the token 
    |            token.unpause();
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(501)

[33mWarning[0m for UnhandledException in contract 'DataWalletCrowdsale':
    |            vault.close();
    |            //Unpause the token 
  > |            token.unpause();
    |            //give ownership back to deployer
    |            token.transferOwnership(owner);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(503)

[33mWarning[0m for UnhandledException in contract 'DataWalletCrowdsale':
    |            token.unpause();
    |            //give ownership back to deployer
  > |            token.transferOwnership(owner);
    |        } else {
    |            //else enable refunds
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(505)

[33mWarning[0m for UnhandledException in contract 'DataWalletCrowdsale':
    |        } else {
    |            //else enable refunds
  > |            vault.enableRefunds();
    |        }
    |    } 
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(508)

[33mWarning[0m for UnhandledException in contract 'DataWalletCrowdsale':
    |    // send ether to the fund collection wallet, the vault in this case
    |    function forwardFunds(uint256 weiAmount) internal {
  > |        vault.deposit.value(weiAmount)(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(514)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DataWalletCrowdsale':
    |        //refund if the contribution exceed the cap
    |        if (weiToReturn > 0) {
  > |            beneficiary.transfer(weiToReturn);
    |            TokenRefund(beneficiary, weiToReturn);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(444)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DataWalletCrowdsale':
    |        TokenPurchase(beneficiary, weiAmount, tokens);
    |
  > |        token.transfer(beneficiary, tokens); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(456)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DataWalletCrowdsale':
    |        require(isFinalized);
    |        require(!goalReached());
  > |        vault.refund(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(467)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DataWalletCrowdsale':
    |    function claimUnsold() onlyOwner {
    |        require(endTime <= getBlockTimestamp());
  > |        uint256 unsold = token.balanceOf(this);
    |
    |        if (unsold > 0) {
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(473)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DataWalletCrowdsale':
    |
    |        if (unsold > 0) {
  > |            require(token.transfer(msg.sender, unsold));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(476)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DataWalletCrowdsale':
    |        if (goalReached()) {
    |            //Close the vault
  > |            vault.close();
    |            //Unpause the token 
    |            token.unpause();
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(501)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DataWalletCrowdsale':
    |            vault.close();
    |            //Unpause the token 
  > |            token.unpause();
    |            //give ownership back to deployer
    |            token.transferOwnership(owner);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(503)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DataWalletCrowdsale':
    |            token.unpause();
    |            //give ownership back to deployer
  > |            token.transferOwnership(owner);
    |        } else {
    |            //else enable refunds
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(505)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DataWalletCrowdsale':
    |        } else {
    |            //else enable refunds
  > |            vault.enableRefunds();
    |        }
    |    } 
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(508)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DataWalletCrowdsale':
    |    // send ether to the fund collection wallet, the vault in this case
    |    function forwardFunds(uint256 weiAmount) internal {
  > |        vault.deposit.value(weiAmount)(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(514)

[31mViolation[0m for UnrestrictedWrite in contract 'DataWalletCrowdsale':
    |  modifier nonReentrant() {
    |    require(!reentrancy_lock);
  > |    reentrancy_lock = true;
    |    _;
    |    reentrancy_lock = false;
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'DataWalletCrowdsale':
    |        for (uint256 i = 0; i < addresses.length; i++) {
    |            address contributorAddress = addresses[i];
  > |            whitelist[contributorAddress] = status;
    |            WhitelistUpdate(contributorAddress, status);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(484)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletCrowdsale':
    |    reentrancy_lock = true;
    |    _;
  > |    reentrancy_lock = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletCrowdsale':
    |        uint256 tokens = getTokens(weiAmount);
    |        //update the state of weiRaised
  > |        weiRaised = weiRaised.add(weiAmount);
    |        contribution[beneficiary] = contribution[beneficiary].add(weiAmount);
    |     
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletCrowdsale':
    |        //update the state of weiRaised
    |        weiRaised = weiRaised.add(weiAmount);
  > |        contribution[beneficiary] = contribution[beneficiary].add(weiAmount);
    |     
    |        //Trigger the event of TokenPurchase
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletCrowdsale':
    |
    |        //update the sate of isFinalized
  > |        isFinalized = true;
    |        //trigger and emit the event of finalization
    |        Finalized();
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(495)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(88)

[33mWarning[0m for LockedEther in contract 'DataWalletToken':
    |}
    |
  > |contract DataWalletToken is PausableToken, BurnableToken {
    |
    |    string public constant name = "DataWallet Token";
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(548)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(amount);
    |        balances[beneficiary] = balances[beneficiary].add(amount);
    |        Transfer(msg.sender, beneficiary, amount);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(572)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(amount);
  > |        balances[beneficiary] = balances[beneficiary].add(amount);
    |        Transfer(msg.sender, beneficiary, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(573)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'DataWalletToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(174)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(88)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(174)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    |}
    |
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(174)

[33mWarning[0m for LockedEther in contract 'ReentrancyGuard':
    |pragma solidity ^0.4.13;
    |
  > |contract ReentrancyGuard {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(3)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(121)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(134)

[33mWarning[0m for LockedEther in contract 'RefundVault':
    |}
    |
  > |contract RefundVault is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(93)

[31mViolation[0m for TODAmount in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(121)

[31mViolation[0m for TODReceiver in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(121)

[33mWarning[0m for TODReceiver in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(134)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(121)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(134)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(state == State.Refunding);
    |    uint256 depositedValue = deposited[investor];
  > |    deposited[investor] = 0;
    |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function deposit(address investor) onlyOwner public payable {
    |    require(state == State.Active);
  > |    deposited[investor] = deposited[investor].add(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function close() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Closed;
    |    Closed();
    |    wallet.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function enableRefunds() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Refunding;
    |    RefundsEnabled();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(126)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(27)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x201dcb47a936db8d0c6358783a7d24b37d5fd1cd.sol(325)


