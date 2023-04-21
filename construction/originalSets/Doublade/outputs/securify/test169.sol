Processing contract: /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol:AnythingAppToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol:AnythingAppTokenPreSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol:Burnable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol:InvestorWhiteList
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol:PriceReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AnythingAppToken':
    | * @dev Burnable Ownable ERC20 token
    | */
  > |contract AnythingAppToken is Burnable, Ownable {
    |
    |  string public constant name = "AnyCoin";
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(283)

[33mWarning[0m for UnhandledException in contract 'AnythingAppToken':
    |      if(codeLength>0) {
    |          ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |          receiver.tokenFallback(msg.sender, _value, _data);
    |      }
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(382)

[33mWarning[0m for UnhandledException in contract 'AnythingAppToken':
    |      if(codeLength>0) {
    |          ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |          receiver.tokenFallback(msg.sender, _value, empty);
    |      }
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(412)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AnythingAppToken':
    |      if(codeLength>0) {
    |          ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |          receiver.tokenFallback(msg.sender, _value, _data);
    |      }
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(382)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AnythingAppToken':
    |      if(codeLength>0) {
    |          ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |          receiver.tokenFallback(msg.sender, _value, empty);
    |      }
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(412)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppToken':
    |  function burn(uint _value) returns (bool success) {
    |    require(_value > 0 && balances[msg.sender] >= _value);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppToken':
    |    require(_value > 0 && balances[msg.sender] >= _value);
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    totalSupply = totalSupply.sub(_value);
    |    Burn(msg.sender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppToken':
    |    require(_from != 0x0 && _value > 0 && balances[_from] >= _value);
    |    require(_value <= allowed[_from][msg.sender]);
  > |    balances[_from] = balances[_from].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |    balances[_from] = balances[_from].sub(_value);
  > |    totalSupply = totalSupply.sub(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Burn(_from, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppToken':
    |          codeLength := extcodesize(_to)
    |      }
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      if(codeLength>0) {
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppToken':
    |      }
    |      balances[msg.sender] = balances[msg.sender].sub(_value);
  > |      balances[_to] = balances[_to].add(_value);
    |      if(codeLength>0) {
    |          ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppToken':
    |      }
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      if(codeLength>0) {
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(408)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppToken':
    |
    |      balances[msg.sender] = balances[msg.sender].sub(_value);
  > |      balances[_to] = balances[_to].add(_value);
    |      if(codeLength>0) {
    |          ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppToken':
    |
    |    // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |    releaseAgent = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppToken':
    |
    |  function release() onlyReleaseAgent inReleaseState(false) public {
  > |    released = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppToken':
    |  function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
    |    require(addr != 0x0);
  > |    transferAgents[addr] = state;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(351)

[31mViolation[0m for DAOConstantGas in contract 'AnythingAppTokenPreSale':
    |        toWithdraw = withdrawLimit.sub(withdrawn);
    |      }
  > |      beneficiary.transfer(toWithdraw);
    |      withdrawn = withdrawn.add(toWithdraw);
    |      return;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(634)

[31mViolation[0m for DAOConstantGas in contract 'AnythingAppTokenPreSale':
    |    }
    |    require(block.timestamp >= endTime);
  > |    beneficiary.transfer(collected);
    |    token.transfer(beneficiary, token.balanceOf(this));
    |    crowdsaleFinished = true;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(639)

[33mWarning[0m for DAOConstantGas in contract 'AnythingAppTokenPreSale':
    |    refunded[msg.sender] = true;
    |    weiRefunded = weiRefunded.add(refund);
  > |    msg.sender.transfer(refund);
    |    Refunded(msg.sender, refund);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(653)

[33mWarning[0m for LockedEther in contract 'AnythingAppTokenPreSale':
    |}
    |
  > |contract AnythingAppTokenPreSale is Haltable, PriceReceiver {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(474)

[31mViolation[0m for TODAmount in contract 'AnythingAppTokenPreSale':
    |        toWithdraw = withdrawLimit.sub(withdrawn);
    |      }
  > |      beneficiary.transfer(toWithdraw);
    |      withdrawn = withdrawn.add(toWithdraw);
    |      return;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(634)

[31mViolation[0m for TODAmount in contract 'AnythingAppTokenPreSale':
    |    }
    |    require(block.timestamp >= endTime);
  > |    beneficiary.transfer(collected);
    |    token.transfer(beneficiary, token.balanceOf(this));
    |    crowdsaleFinished = true;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(639)

[33mWarning[0m for TODAmount in contract 'AnythingAppTokenPreSale':
    |    refunded[msg.sender] = true;
    |    weiRefunded = weiRefunded.add(refund);
  > |    msg.sender.transfer(refund);
    |    Refunded(msg.sender, refund);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(653)

[33mWarning[0m for TODReceiver in contract 'AnythingAppTokenPreSale':
    |    refunded[msg.sender] = true;
    |    weiRefunded = weiRefunded.add(refund);
  > |    msg.sender.transfer(refund);
    |    Refunded(msg.sender, refund);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(653)

[33mWarning[0m for UnhandledException in contract 'AnythingAppTokenPreSale':
    |
    |  modifier inWhiteList() {
  > |    require(investorWhiteList.isAllowed(msg.sender));
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(529)

[33mWarning[0m for UnhandledException in contract 'AnythingAppTokenPreSale':
    |
    |  function doPurchase(address _owner) private preSaleActive inNormalState {
  > |    if (token.balanceOf(msg.sender) == 0) investorCount++;
    |
    |    uint tokens = msg.value.mul(ethUsdRate).div(tokenPriceUsd);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(574)

[33mWarning[0m for UnhandledException in contract 'AnythingAppTokenPreSale':
    |
    |    uint tokens = msg.value.mul(ethUsdRate).div(tokenPriceUsd);
  > |    address referral = investorWhiteList.getReferralOf(msg.sender);
    |    uint referralBonus = calculateReferralBonus(tokens);
    |    uint bonus = calculateBonus(tokens, referral);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(577)

[33mWarning[0m for UnhandledException in contract 'AnythingAppTokenPreSale':
    |
    |    require(newTokensSold <= totalTokens);
  > |    require(token.balanceOf(msg.sender).add(tokens) <= LIMIT_PER_USER);
    |
    |    tokensSold = newTokensSold;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(589)

[33mWarning[0m for UnhandledException in contract 'AnythingAppTokenPreSale':
    |    deposited[msg.sender] = deposited[msg.sender].add(msg.value);
    |
  > |    token.transfer(msg.sender, tokens);
    |    NewContribution(_owner, tokens, msg.value);
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(596)

[33mWarning[0m for UnhandledException in contract 'AnythingAppTokenPreSale':
    |
    |    if (referralBonus > 0 && referral != 0x0) {
  > |      token.transfer(referral, referralBonus);
    |      NewReferralTransfer(msg.sender, referral, referralBonus);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(600)

[33mWarning[0m for UnhandledException in contract 'AnythingAppTokenPreSale':
    |        toWithdraw = withdrawLimit.sub(withdrawn);
    |      }
  > |      beneficiary.transfer(toWithdraw);
    |      withdrawn = withdrawn.add(toWithdraw);
    |      return;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(634)

[33mWarning[0m for UnhandledException in contract 'AnythingAppTokenPreSale':
    |    }
    |    require(block.timestamp >= endTime);
  > |    beneficiary.transfer(collected);
    |    token.transfer(beneficiary, token.balanceOf(this));
    |    crowdsaleFinished = true;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(639)

[33mWarning[0m for UnhandledException in contract 'AnythingAppTokenPreSale':
    |    require(block.timestamp >= endTime);
    |    beneficiary.transfer(collected);
  > |    token.transfer(beneficiary, token.balanceOf(this));
    |    crowdsaleFinished = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(640)

[33mWarning[0m for UnhandledException in contract 'AnythingAppTokenPreSale':
    |    refunded[msg.sender] = true;
    |    weiRefunded = weiRefunded.add(refund);
  > |    msg.sender.transfer(refund);
    |    Refunded(msg.sender, refund);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(653)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AnythingAppTokenPreSale':
    |
    |  modifier inWhiteList() {
  > |    require(investorWhiteList.isAllowed(msg.sender));
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(529)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AnythingAppTokenPreSale':
    |
    |  function doPurchase(address _owner) private preSaleActive inNormalState {
  > |    if (token.balanceOf(msg.sender) == 0) investorCount++;
    |
    |    uint tokens = msg.value.mul(ethUsdRate).div(tokenPriceUsd);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(574)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AnythingAppTokenPreSale':
    |
    |    uint tokens = msg.value.mul(ethUsdRate).div(tokenPriceUsd);
  > |    address referral = investorWhiteList.getReferralOf(msg.sender);
    |    uint referralBonus = calculateReferralBonus(tokens);
    |    uint bonus = calculateBonus(tokens, referral);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(577)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AnythingAppTokenPreSale':
    |
    |    require(newTokensSold <= totalTokens);
  > |    require(token.balanceOf(msg.sender).add(tokens) <= LIMIT_PER_USER);
    |
    |    tokensSold = newTokensSold;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(589)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AnythingAppTokenPreSale':
    |    deposited[msg.sender] = deposited[msg.sender].add(msg.value);
    |
  > |    token.transfer(msg.sender, tokens);
    |    NewContribution(_owner, tokens, msg.value);
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(596)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AnythingAppTokenPreSale':
    |
    |    if (referralBonus > 0 && referral != 0x0) {
  > |      token.transfer(referral, referralBonus);
    |      NewReferralTransfer(msg.sender, referral, referralBonus);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(600)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AnythingAppTokenPreSale':
    |        toWithdraw = withdrawLimit.sub(withdrawn);
    |      }
  > |      beneficiary.transfer(toWithdraw);
    |      withdrawn = withdrawn.add(toWithdraw);
    |      return;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(634)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AnythingAppTokenPreSale':
    |    }
    |    require(block.timestamp >= endTime);
  > |    beneficiary.transfer(collected);
    |    token.transfer(beneficiary, token.balanceOf(this));
    |    crowdsaleFinished = true;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(639)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AnythingAppTokenPreSale':
    |    require(block.timestamp >= endTime);
    |    beneficiary.transfer(collected);
  > |    token.transfer(beneficiary, token.balanceOf(this));
    |    crowdsaleFinished = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(640)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AnythingAppTokenPreSale':
    |    refunded[msg.sender] = true;
    |    weiRefunded = weiRefunded.add(refund);
  > |    msg.sender.transfer(refund);
    |    Refunded(msg.sender, refund);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(653)

[31mViolation[0m for UnrestrictedWrite in contract 'AnythingAppTokenPreSale':
    |
    |  function doPurchase(address _owner) private preSaleActive inNormalState {
  > |    if (token.balanceOf(msg.sender) == 0) investorCount++;
    |
    |    uint tokens = msg.value.mul(ethUsdRate).div(tokenPriceUsd);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(574)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppTokenPreSale':
    |    require(token.balanceOf(msg.sender).add(tokens) <= LIMIT_PER_USER);
    |
  > |    tokensSold = newTokensSold;
    |
    |    collected = collected.add(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(591)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppTokenPreSale':
    |    tokensSold = newTokensSold;
    |
  > |    collected = collected.add(msg.value);
    |    deposited[msg.sender] = deposited[msg.sender].add(msg.value);
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(593)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppTokenPreSale':
    |
    |    collected = collected.add(msg.value);
  > |    deposited[msg.sender] = deposited[msg.sender].add(msg.value);
    |
    |    token.transfer(msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(594)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppTokenPreSale':
    |      }
    |      beneficiary.transfer(toWithdraw);
  > |      withdrawn = withdrawn.add(toWithdraw);
    |      return;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(635)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppTokenPreSale':
    |    require(refund > 0);
    |
  > |    deposited[msg.sender] = 0;
    |    refunded[msg.sender] = true;
    |    weiRefunded = weiRefunded.add(refund);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(650)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppTokenPreSale':
    |
    |    deposited[msg.sender] = 0;
  > |    refunded[msg.sender] = true;
    |    weiRefunded = weiRefunded.add(refund);
    |    msg.sender.transfer(refund);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(651)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppTokenPreSale':
    |    deposited[msg.sender] = 0;
    |    refunded[msg.sender] = true;
  > |    weiRefunded = weiRefunded.add(refund);
    |    msg.sender.transfer(refund);
    |    Refunded(msg.sender, refund);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(652)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppTokenPreSale':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppTokenPreSale':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner inNormalState {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppTokenPreSale':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner inEmergencyState {
  > |    halted = false;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppTokenPreSale':
    |    beneficiary.transfer(collected);
    |    token.transfer(beneficiary, token.balanceOf(this));
  > |    crowdsaleFinished = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(641)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppTokenPreSale':
    |  function receiveEthPrice(uint ethUsdPrice) external onlyEthPriceProvider {
    |    require(ethUsdPrice > 0);
  > |    ethUsdRate = ethUsdPrice;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(659)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppTokenPreSale':
    |  function setEthPriceProvider(address provider) external onlyOwner {
    |    require(provider != 0x0);
  > |    ethPriceProvider = provider;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(664)

[33mWarning[0m for UnrestrictedWrite in contract 'AnythingAppTokenPreSale':
    |  function setNewWhiteList(address newWhiteList) external onlyOwner {
    |    require(newWhiteList != 0x0);
  > |    investorWhiteList = InvestorWhiteList(newWhiteList);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(669)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances. 
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(132)

[33mWarning[0m for LockedEther in contract 'Burnable':
    | * @dev Standard ERC20 token
    | */
  > |contract Burnable is StandardToken {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'Burnable':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Burnable':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'Burnable':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'Burnable':
    |  function burn(uint _value) returns (bool success) {
    |    require(_value > 0 && balances[msg.sender] >= _value);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'Burnable':
    |    balances[_from] = balances[_from].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Burn(_from, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(245)

[33mWarning[0m for LockedEther in contract 'Haltable':
    | * Originally envisioned in FirstBlood ICO contract.
    | */
  > |contract Haltable is Ownable {
    |  bool public halted = false;
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Haltable is Ownable {
  > |  bool public halted = false;
    |
    |  modifier inNormalState {
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function halt() external onlyOwner inNormalState {
    |    halted = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function unhalt() external onlyOwner inEmergencyState {
    |    halted = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner inNormalState {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner inEmergencyState {
  > |    halted = false;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(71)

[33mWarning[0m for LockedEther in contract 'InvestorWhiteList':
    |}
    |
  > |contract InvestorWhiteList is Ownable {
    |  mapping (address => bool) public investorWhiteList;
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(427)

[31mViolation[0m for MissingInputValidation in contract 'InvestorWhiteList':
    |
    |contract InvestorWhiteList is Ownable {
  > |  mapping (address => bool) public investorWhiteList;
    |
    |  mapping (address => address) public referralList;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(428)

[31mViolation[0m for MissingInputValidation in contract 'InvestorWhiteList':
    |  mapping (address => bool) public investorWhiteList;
    |
  > |  mapping (address => address) public referralList;
    |
    |  function InvestorWhiteList() {
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(430)

[31mViolation[0m for MissingInputValidation in contract 'InvestorWhiteList':
    |  }
    |
  > |  function isAllowed(address investor) constant external returns (bool result) {
    |    return investorWhiteList[investor];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(452)

[31mViolation[0m for MissingInputValidation in contract 'InvestorWhiteList':
    |  }
    |
  > |  function getReferralOf(address investor) constant external returns (address result) {
    |    return referralList[investor];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(456)

[33mWarning[0m for MissingInputValidation in contract 'InvestorWhiteList':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'InvestorWhiteList':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'InvestorWhiteList':
    |  }
    |
  > |  function addInvestorToWhiteList(address investor) external onlyOwner {
    |    require(investor != 0x0 && !investorWhiteList[investor]);
    |    investorWhiteList[investor] = true;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(436)

[33mWarning[0m for MissingInputValidation in contract 'InvestorWhiteList':
    |  }
    |
  > |  function removeInvestorFromWhiteList(address investor) external onlyOwner {
    |    require(investor != 0x0 && investorWhiteList[investor]);
    |    investorWhiteList[investor] = false;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(441)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorWhiteList':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorWhiteList':
    |  function addInvestorToWhiteList(address investor) external onlyOwner {
    |    require(investor != 0x0 && !investorWhiteList[investor]);
  > |    investorWhiteList[investor] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorWhiteList':
    |  function removeInvestorFromWhiteList(address investor) external onlyOwner {
    |    require(investor != 0x0 && investorWhiteList[investor]);
  > |    investorWhiteList[investor] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(443)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorWhiteList':
    |  function addReferralOf(address investor, address referral) external onlyOwner {
    |    require(investor != 0x0 && referral != 0x0 && referralList[investor] == 0x0 && investor != referral);
  > |    referralList[investor] = referral;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(449)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(36)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(79)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0b6e701cd51a9e1b5829a4c4fe2130d60c0c4f6c.sol(204)


