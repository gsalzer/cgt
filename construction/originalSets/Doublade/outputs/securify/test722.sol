Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol:CommonSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol:Configurator
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol:Mainsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol:Presale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol:RetrieveTokenFeature
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol:SoftcapFeature
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol:StagedCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol:WalletProvider
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol:YayProtoToken
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
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(269)

[31mViolation[0m for LockedEther in contract 'CommonSale':
    |// File: contracts/CommonSale.sol
    |
  > |contract CommonSale is StagedCrowdsale, WalletProvider {
    |
    |  address public directMintAgent;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(482)

[33mWarning[0m for UnhandledException in contract 'CommonSale':
    |  function retrieveTokens(address to, address anotherToken) public onlyOwner {
    |    ERC20 alienToken = ERC20(anotherToken);
  > |    alienToken.transfer(to, alienToken.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(80)

[33mWarning[0m for UnhandledException in contract 'CommonSale':
    |
    |  function createAndTransferTokens(address to, uint tokens) internal isUnderHardCap {
  > |    token.mint(this, tokens);
    |    token.transfer(to, tokens);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(535)

[33mWarning[0m for UnhandledException in contract 'CommonSale':
    |  function createAndTransferTokens(address to, uint tokens) internal isUnderHardCap {
    |    token.mint(this, tokens);
  > |    token.transfer(to, tokens);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(536)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CommonSale':
    |  function retrieveTokens(address to, address anotherToken) public onlyOwner {
    |    ERC20 alienToken = ERC20(anotherToken);
  > |    alienToken.transfer(to, alienToken.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(80)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CommonSale':
    |
    |  function createAndTransferTokens(address to, uint tokens) internal isUnderHardCap {
  > |    token.mint(this, tokens);
    |    token.transfer(to, tokens);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(535)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CommonSale':
    |  function createAndTransferTokens(address to, uint tokens) internal isUnderHardCap {
    |    token.mint(this, tokens);
  > |    token.transfer(to, tokens);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(536)

[31mViolation[0m for UnrestrictedWrite in contract 'CommonSale':
    |
    |    for (uint i = number; i < milestones.length - 1; i++) {
  > |      milestones[i] = milestones[i+1];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'CommonSale':
    |    require(milestones.length > 0);
    |    for (uint i = 0; i < milestones.length; i++) {
  > |      delete milestones[i];
    |    }
    |    milestones.length -= milestones.length;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |    require(period > 0);
    |    milestones.push(Milestone(period, bonus));
  > |    totalPeriod = totalPeriod.add(period);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |    totalPeriod = totalPeriod.sub(milestone.period);
    |
  > |    milestone.period = period;
    |    milestone.bonus = bonus;
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |
    |    milestone.period = period;
  > |    milestone.bonus = bonus;
    |
    |    totalPeriod = totalPeriod.add(period);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |    milestone.bonus = bonus;
    |
  > |    totalPeriod = totalPeriod.add(period);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |    require(numberAfter < milestones.length);
    |
  > |    totalPeriod = totalPeriod.add(period);
    |
    |    milestones.length++;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |    }
    |    milestones.length -= milestones.length;
  > |    totalPeriod = 0;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |// File: contracts/CommonSale.sol
    |
  > |contract CommonSale is StagedCrowdsale, WalletProvider {
    |
    |  address public directMintAgent;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |    uint milestoneIndex = currentMilestone();
    |    Milestone storage milestone = milestones[milestoneIndex];
  > |    invested = invested.add(msg.value);
    |    uint tokens = weiInvested.mul(price).div(1 ether);
    |    uint bonusTokens = tokens.mul(milestone.bonus).div(percentRate);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(527)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |pragma solidity ^0.4.18;
    |
  > |// File: contracts/ownership/Ownable.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |
    |  function setStart(uint newStart) public onlyOwner {
  > |    start = newStart;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |
    |  function setHardcap(uint newHardcap) public onlyOwner {
  > |    hardCap = newHardcap;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |  function addMilestone(uint period, uint bonus) public onlyOwner {
    |    require(period > 0);
  > |    milestones.push(Milestone(period, bonus));
    |    totalPeriod = totalPeriod.add(period);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |    require(number < milestones.length);
    |    Milestone storage milestone = milestones[number];
  > |    totalPeriod = totalPeriod.sub(milestone.period);
    |
    |    delete milestones[number];
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |    totalPeriod = totalPeriod.sub(milestone.period);
    |
  > |    delete milestones[number];
    |
    |    for (uint i = number; i < milestones.length - 1; i++) {
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |    Milestone storage milestone = milestones[number];
    |
  > |    totalPeriod = totalPeriod.sub(milestone.period);
    |
    |    milestone.period = period;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |
    |  function setWallet(address newWallet) public onlyOwner {
  > |    wallet = newWallet;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |
    |  function setDirectMintAgent(address newDirectMintAgent) public onlyOwner {
  > |    directMintAgent = newDirectMintAgent;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(505)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |
    |  function setMinPrice(uint newMinPrice) public onlyOwner {
  > |    minPrice = newMinPrice;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |
    |  function setPrice(uint newPrice) public onlyOwner {
  > |    price = newPrice;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonSale':
    |
    |  function setToken(address newToken) public onlyOwner {
  > |    token = YayProtoToken(newToken);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(517)

[33mWarning[0m for LockedEther in contract 'Configurator':
    |// File: contracts/Configurator.sol
    |
  > |contract Configurator is Ownable {
    |
    |  YayProtoToken public token;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(695)

[33mWarning[0m for MissingInputValidation in contract 'Configurator':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Configurator':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Configurator':
    |// File: contracts/Configurator.sol
    |
  > |contract Configurator is Ownable {
    |
    |  YayProtoToken public token;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(695)

[33mWarning[0m for MissingInputValidation in contract 'Configurator':
    |contract Configurator is Ownable {
    |
  > |  YayProtoToken public token;
    |
    |  Presale public presale;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(697)

[33mWarning[0m for MissingInputValidation in contract 'Configurator':
    |  YayProtoToken public token;
    |
  > |  Presale public presale;
    |
    |  Mainsale public mainsale;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(699)

[33mWarning[0m for MissingInputValidation in contract 'Configurator':
    |  Presale public presale;
    |
  > |  Mainsale public mainsale;
    |
    |  function deploy() public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(701)

[33mWarning[0m for MissingInputValidation in contract 'Configurator':
    |  Mainsale public mainsale;
    |
  > |  function deploy() public onlyOwner {
    |
    |    token = new YayProtoToken();
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(703)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale = new Mainsale();
    |
  > |    presale.setToken(token);
    |    presale.setWallet(0x00c286bFbEfa2e7D060259822EDceA2E922a2B7C);
    |    presale.setStart(1517356800);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(709)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |
    |    presale.setToken(token);
  > |    presale.setWallet(0x00c286bFbEfa2e7D060259822EDceA2E922a2B7C);
    |    presale.setStart(1517356800);
    |    presale.setMinPrice(100000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(710)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    presale.setToken(token);
    |    presale.setWallet(0x00c286bFbEfa2e7D060259822EDceA2E922a2B7C);
  > |    presale.setStart(1517356800);
    |    presale.setMinPrice(100000000000000000);
    |    presale.setPrice(7500000000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(711)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    presale.setWallet(0x00c286bFbEfa2e7D060259822EDceA2E922a2B7C);
    |    presale.setStart(1517356800);
  > |    presale.setMinPrice(100000000000000000);
    |    presale.setPrice(7500000000000000000000);
    |    presale.setSoftcap(3000000000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(712)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    presale.setStart(1517356800);
    |    presale.setMinPrice(100000000000000000);
  > |    presale.setPrice(7500000000000000000000);
    |    presale.setSoftcap(3000000000000000000000);
    |    presale.setHardcap(11250000000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(713)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    presale.setMinPrice(100000000000000000);
    |    presale.setPrice(7500000000000000000000);
  > |    presale.setSoftcap(3000000000000000000000);
    |    presale.setHardcap(11250000000000000000000);
    |    presale.addMilestone(7,60);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(714)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    presale.setPrice(7500000000000000000000);
    |    presale.setSoftcap(3000000000000000000000);
  > |    presale.setHardcap(11250000000000000000000);
    |    presale.addMilestone(7,60);
    |    presale.addMilestone(7,50);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(715)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    presale.setSoftcap(3000000000000000000000);
    |    presale.setHardcap(11250000000000000000000);
  > |    presale.addMilestone(7,60);
    |    presale.addMilestone(7,50);
    |    presale.addMilestone(7,40);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(716)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    presale.setHardcap(11250000000000000000000);
    |    presale.addMilestone(7,60);
  > |    presale.addMilestone(7,50);
    |    presale.addMilestone(7,40);
    |    presale.addMilestone(7,30);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(717)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    presale.addMilestone(7,60);
    |    presale.addMilestone(7,50);
  > |    presale.addMilestone(7,40);
    |    presale.addMilestone(7,30);
    |    presale.addMilestone(7,25);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(718)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    presale.addMilestone(7,50);
    |    presale.addMilestone(7,40);
  > |    presale.addMilestone(7,30);
    |    presale.addMilestone(7,25);
    |    presale.addMilestone(7,20);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(719)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    presale.addMilestone(7,40);
    |    presale.addMilestone(7,30);
  > |    presale.addMilestone(7,25);
    |    presale.addMilestone(7,20);
    |    presale.setMainsale(mainsale);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(720)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    presale.addMilestone(7,30);
    |    presale.addMilestone(7,25);
  > |    presale.addMilestone(7,20);
    |    presale.setMainsale(mainsale);
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(721)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    presale.addMilestone(7,25);
    |    presale.addMilestone(7,20);
  > |    presale.setMainsale(mainsale);
    |
    |    mainsale.setToken(token);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(722)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    presale.setMainsale(mainsale);
    |
  > |    mainsale.setToken(token);
    |    mainsale.setPrice(7500000000000000000000);
    |    mainsale.setWallet(0x009693f53723315219f681529fE6e05a91a28C41);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(724)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |
    |    mainsale.setToken(token);
  > |    mainsale.setPrice(7500000000000000000000);
    |    mainsale.setWallet(0x009693f53723315219f681529fE6e05a91a28C41);
    |    mainsale.setDevelopersTokensWallet(0x0097895f899559D067016a3d61e3742c0da533ED);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(725)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.setToken(token);
    |    mainsale.setPrice(7500000000000000000000);
  > |    mainsale.setWallet(0x009693f53723315219f681529fE6e05a91a28C41);
    |    mainsale.setDevelopersTokensWallet(0x0097895f899559D067016a3d61e3742c0da533ED);
    |    mainsale.setTeamTokensWallet(0x00137668FEda9d278A242C69aB520466A348C954);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(726)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.setPrice(7500000000000000000000);
    |    mainsale.setWallet(0x009693f53723315219f681529fE6e05a91a28C41);
  > |    mainsale.setDevelopersTokensWallet(0x0097895f899559D067016a3d61e3742c0da533ED);
    |    mainsale.setTeamTokensWallet(0x00137668FEda9d278A242C69aB520466A348C954);
    |    mainsale.setMarketingTokensWallet(0x00A8a63f43ce630dbd3b96F1e040A730341bAa4D);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(727)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.setWallet(0x009693f53723315219f681529fE6e05a91a28C41);
    |    mainsale.setDevelopersTokensWallet(0x0097895f899559D067016a3d61e3742c0da533ED);
  > |    mainsale.setTeamTokensWallet(0x00137668FEda9d278A242C69aB520466A348C954);
    |    mainsale.setMarketingTokensWallet(0x00A8a63f43ce630dbd3b96F1e040A730341bAa4D);
    |    mainsale.setAdvisorsTokensWallet(0x00764817d154237115DdA4FAA76C7aaB5dE3cb25);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(728)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.setDevelopersTokensWallet(0x0097895f899559D067016a3d61e3742c0da533ED);
    |    mainsale.setTeamTokensWallet(0x00137668FEda9d278A242C69aB520466A348C954);
  > |    mainsale.setMarketingTokensWallet(0x00A8a63f43ce630dbd3b96F1e040A730341bAa4D);
    |    mainsale.setAdvisorsTokensWallet(0x00764817d154237115DdA4FAA76C7aaB5dE3cb25);
    |    mainsale.setStart(1523750400);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(729)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.setTeamTokensWallet(0x00137668FEda9d278A242C69aB520466A348C954);
    |    mainsale.setMarketingTokensWallet(0x00A8a63f43ce630dbd3b96F1e040A730341bAa4D);
  > |    mainsale.setAdvisorsTokensWallet(0x00764817d154237115DdA4FAA76C7aaB5dE3cb25);
    |    mainsale.setStart(1523750400);
    |    mainsale.setMinPrice(100000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(730)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.setMarketingTokensWallet(0x00A8a63f43ce630dbd3b96F1e040A730341bAa4D);
    |    mainsale.setAdvisorsTokensWallet(0x00764817d154237115DdA4FAA76C7aaB5dE3cb25);
  > |    mainsale.setStart(1523750400);
    |    mainsale.setMinPrice(100000000000000000);
    |    mainsale.setHardcap(95000000000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(731)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.setAdvisorsTokensWallet(0x00764817d154237115DdA4FAA76C7aaB5dE3cb25);
    |    mainsale.setStart(1523750400);
  > |    mainsale.setMinPrice(100000000000000000);
    |    mainsale.setHardcap(95000000000000000000000);
    |    mainsale.setDevelopersTokensPercent(10);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(732)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.setStart(1523750400);
    |    mainsale.setMinPrice(100000000000000000);
  > |    mainsale.setHardcap(95000000000000000000000);
    |    mainsale.setDevelopersTokensPercent(10);
    |    mainsale.setTeamTokensPercent(10);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(733)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.setMinPrice(100000000000000000);
    |    mainsale.setHardcap(95000000000000000000000);
  > |    mainsale.setDevelopersTokensPercent(10);
    |    mainsale.setTeamTokensPercent(10);
    |    mainsale.setMarketingTokensPercent(5);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(734)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.setHardcap(95000000000000000000000);
    |    mainsale.setDevelopersTokensPercent(10);
  > |    mainsale.setTeamTokensPercent(10);
    |    mainsale.setMarketingTokensPercent(5);
    |    mainsale.setAdvisorsTokensPercent(10);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(735)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.setDevelopersTokensPercent(10);
    |    mainsale.setTeamTokensPercent(10);
  > |    mainsale.setMarketingTokensPercent(5);
    |    mainsale.setAdvisorsTokensPercent(10);
    |    mainsale.addMilestone(7,15);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(736)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.setTeamTokensPercent(10);
    |    mainsale.setMarketingTokensPercent(5);
  > |    mainsale.setAdvisorsTokensPercent(10);
    |    mainsale.addMilestone(7,15);
    |    mainsale.addMilestone(7,10);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(737)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.setMarketingTokensPercent(5);
    |    mainsale.setAdvisorsTokensPercent(10);
  > |    mainsale.addMilestone(7,15);
    |    mainsale.addMilestone(7,10);
    |    mainsale.addMilestone(7,7);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(738)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.setAdvisorsTokensPercent(10);
    |    mainsale.addMilestone(7,15);
  > |    mainsale.addMilestone(7,10);
    |    mainsale.addMilestone(7,7);
    |    mainsale.addMilestone(7,4);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(739)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.addMilestone(7,15);
    |    mainsale.addMilestone(7,10);
  > |    mainsale.addMilestone(7,7);
    |    mainsale.addMilestone(7,4);
    |    mainsale.addMilestone(7,0);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(740)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.addMilestone(7,10);
    |    mainsale.addMilestone(7,7);
  > |    mainsale.addMilestone(7,4);
    |    mainsale.addMilestone(7,0);
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(741)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.addMilestone(7,7);
    |    mainsale.addMilestone(7,4);
  > |    mainsale.addMilestone(7,0);
    |
    |    token.setSaleAgent(presale);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(742)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    mainsale.addMilestone(7,0);
    |
  > |    token.setSaleAgent(presale);
    |
    |    token.transferOwnership(owner);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(744)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    token.setSaleAgent(presale);
    |
  > |    token.transferOwnership(owner);
    |    presale.transferOwnership(owner);
    |    mainsale.transferOwnership(owner);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(746)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |
    |    token.transferOwnership(owner);
  > |    presale.transferOwnership(owner);
    |    mainsale.transferOwnership(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(747)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |    token.transferOwnership(owner);
    |    presale.transferOwnership(owner);
  > |    mainsale.transferOwnership(owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(748)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale = new Mainsale();
    |
  > |    presale.setToken(token);
    |    presale.setWallet(0x00c286bFbEfa2e7D060259822EDceA2E922a2B7C);
    |    presale.setStart(1517356800);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(709)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |
    |    presale.setToken(token);
  > |    presale.setWallet(0x00c286bFbEfa2e7D060259822EDceA2E922a2B7C);
    |    presale.setStart(1517356800);
    |    presale.setMinPrice(100000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(710)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    presale.setToken(token);
    |    presale.setWallet(0x00c286bFbEfa2e7D060259822EDceA2E922a2B7C);
  > |    presale.setStart(1517356800);
    |    presale.setMinPrice(100000000000000000);
    |    presale.setPrice(7500000000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(711)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    presale.setWallet(0x00c286bFbEfa2e7D060259822EDceA2E922a2B7C);
    |    presale.setStart(1517356800);
  > |    presale.setMinPrice(100000000000000000);
    |    presale.setPrice(7500000000000000000000);
    |    presale.setSoftcap(3000000000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(712)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    presale.setStart(1517356800);
    |    presale.setMinPrice(100000000000000000);
  > |    presale.setPrice(7500000000000000000000);
    |    presale.setSoftcap(3000000000000000000000);
    |    presale.setHardcap(11250000000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(713)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    presale.setMinPrice(100000000000000000);
    |    presale.setPrice(7500000000000000000000);
  > |    presale.setSoftcap(3000000000000000000000);
    |    presale.setHardcap(11250000000000000000000);
    |    presale.addMilestone(7,60);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(714)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    presale.setPrice(7500000000000000000000);
    |    presale.setSoftcap(3000000000000000000000);
  > |    presale.setHardcap(11250000000000000000000);
    |    presale.addMilestone(7,60);
    |    presale.addMilestone(7,50);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(715)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    presale.setSoftcap(3000000000000000000000);
    |    presale.setHardcap(11250000000000000000000);
  > |    presale.addMilestone(7,60);
    |    presale.addMilestone(7,50);
    |    presale.addMilestone(7,40);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(716)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    presale.setHardcap(11250000000000000000000);
    |    presale.addMilestone(7,60);
  > |    presale.addMilestone(7,50);
    |    presale.addMilestone(7,40);
    |    presale.addMilestone(7,30);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(717)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    presale.addMilestone(7,60);
    |    presale.addMilestone(7,50);
  > |    presale.addMilestone(7,40);
    |    presale.addMilestone(7,30);
    |    presale.addMilestone(7,25);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(718)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    presale.addMilestone(7,50);
    |    presale.addMilestone(7,40);
  > |    presale.addMilestone(7,30);
    |    presale.addMilestone(7,25);
    |    presale.addMilestone(7,20);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(719)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    presale.addMilestone(7,40);
    |    presale.addMilestone(7,30);
  > |    presale.addMilestone(7,25);
    |    presale.addMilestone(7,20);
    |    presale.setMainsale(mainsale);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(720)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    presale.addMilestone(7,30);
    |    presale.addMilestone(7,25);
  > |    presale.addMilestone(7,20);
    |    presale.setMainsale(mainsale);
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(721)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    presale.addMilestone(7,25);
    |    presale.addMilestone(7,20);
  > |    presale.setMainsale(mainsale);
    |
    |    mainsale.setToken(token);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(722)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    presale.setMainsale(mainsale);
    |
  > |    mainsale.setToken(token);
    |    mainsale.setPrice(7500000000000000000000);
    |    mainsale.setWallet(0x009693f53723315219f681529fE6e05a91a28C41);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(724)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |
    |    mainsale.setToken(token);
  > |    mainsale.setPrice(7500000000000000000000);
    |    mainsale.setWallet(0x009693f53723315219f681529fE6e05a91a28C41);
    |    mainsale.setDevelopersTokensWallet(0x0097895f899559D067016a3d61e3742c0da533ED);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(725)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.setToken(token);
    |    mainsale.setPrice(7500000000000000000000);
  > |    mainsale.setWallet(0x009693f53723315219f681529fE6e05a91a28C41);
    |    mainsale.setDevelopersTokensWallet(0x0097895f899559D067016a3d61e3742c0da533ED);
    |    mainsale.setTeamTokensWallet(0x00137668FEda9d278A242C69aB520466A348C954);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(726)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.setPrice(7500000000000000000000);
    |    mainsale.setWallet(0x009693f53723315219f681529fE6e05a91a28C41);
  > |    mainsale.setDevelopersTokensWallet(0x0097895f899559D067016a3d61e3742c0da533ED);
    |    mainsale.setTeamTokensWallet(0x00137668FEda9d278A242C69aB520466A348C954);
    |    mainsale.setMarketingTokensWallet(0x00A8a63f43ce630dbd3b96F1e040A730341bAa4D);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(727)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.setWallet(0x009693f53723315219f681529fE6e05a91a28C41);
    |    mainsale.setDevelopersTokensWallet(0x0097895f899559D067016a3d61e3742c0da533ED);
  > |    mainsale.setTeamTokensWallet(0x00137668FEda9d278A242C69aB520466A348C954);
    |    mainsale.setMarketingTokensWallet(0x00A8a63f43ce630dbd3b96F1e040A730341bAa4D);
    |    mainsale.setAdvisorsTokensWallet(0x00764817d154237115DdA4FAA76C7aaB5dE3cb25);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(728)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.setDevelopersTokensWallet(0x0097895f899559D067016a3d61e3742c0da533ED);
    |    mainsale.setTeamTokensWallet(0x00137668FEda9d278A242C69aB520466A348C954);
  > |    mainsale.setMarketingTokensWallet(0x00A8a63f43ce630dbd3b96F1e040A730341bAa4D);
    |    mainsale.setAdvisorsTokensWallet(0x00764817d154237115DdA4FAA76C7aaB5dE3cb25);
    |    mainsale.setStart(1523750400);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(729)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.setTeamTokensWallet(0x00137668FEda9d278A242C69aB520466A348C954);
    |    mainsale.setMarketingTokensWallet(0x00A8a63f43ce630dbd3b96F1e040A730341bAa4D);
  > |    mainsale.setAdvisorsTokensWallet(0x00764817d154237115DdA4FAA76C7aaB5dE3cb25);
    |    mainsale.setStart(1523750400);
    |    mainsale.setMinPrice(100000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(730)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.setMarketingTokensWallet(0x00A8a63f43ce630dbd3b96F1e040A730341bAa4D);
    |    mainsale.setAdvisorsTokensWallet(0x00764817d154237115DdA4FAA76C7aaB5dE3cb25);
  > |    mainsale.setStart(1523750400);
    |    mainsale.setMinPrice(100000000000000000);
    |    mainsale.setHardcap(95000000000000000000000);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(731)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.setAdvisorsTokensWallet(0x00764817d154237115DdA4FAA76C7aaB5dE3cb25);
    |    mainsale.setStart(1523750400);
  > |    mainsale.setMinPrice(100000000000000000);
    |    mainsale.setHardcap(95000000000000000000000);
    |    mainsale.setDevelopersTokensPercent(10);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(732)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.setStart(1523750400);
    |    mainsale.setMinPrice(100000000000000000);
  > |    mainsale.setHardcap(95000000000000000000000);
    |    mainsale.setDevelopersTokensPercent(10);
    |    mainsale.setTeamTokensPercent(10);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(733)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.setMinPrice(100000000000000000);
    |    mainsale.setHardcap(95000000000000000000000);
  > |    mainsale.setDevelopersTokensPercent(10);
    |    mainsale.setTeamTokensPercent(10);
    |    mainsale.setMarketingTokensPercent(5);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(734)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.setHardcap(95000000000000000000000);
    |    mainsale.setDevelopersTokensPercent(10);
  > |    mainsale.setTeamTokensPercent(10);
    |    mainsale.setMarketingTokensPercent(5);
    |    mainsale.setAdvisorsTokensPercent(10);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(735)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.setDevelopersTokensPercent(10);
    |    mainsale.setTeamTokensPercent(10);
  > |    mainsale.setMarketingTokensPercent(5);
    |    mainsale.setAdvisorsTokensPercent(10);
    |    mainsale.addMilestone(7,15);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(736)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.setTeamTokensPercent(10);
    |    mainsale.setMarketingTokensPercent(5);
  > |    mainsale.setAdvisorsTokensPercent(10);
    |    mainsale.addMilestone(7,15);
    |    mainsale.addMilestone(7,10);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(737)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.setMarketingTokensPercent(5);
    |    mainsale.setAdvisorsTokensPercent(10);
  > |    mainsale.addMilestone(7,15);
    |    mainsale.addMilestone(7,10);
    |    mainsale.addMilestone(7,7);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(738)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.setAdvisorsTokensPercent(10);
    |    mainsale.addMilestone(7,15);
  > |    mainsale.addMilestone(7,10);
    |    mainsale.addMilestone(7,7);
    |    mainsale.addMilestone(7,4);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(739)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.addMilestone(7,15);
    |    mainsale.addMilestone(7,10);
  > |    mainsale.addMilestone(7,7);
    |    mainsale.addMilestone(7,4);
    |    mainsale.addMilestone(7,0);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(740)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.addMilestone(7,10);
    |    mainsale.addMilestone(7,7);
  > |    mainsale.addMilestone(7,4);
    |    mainsale.addMilestone(7,0);
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(741)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.addMilestone(7,7);
    |    mainsale.addMilestone(7,4);
  > |    mainsale.addMilestone(7,0);
    |
    |    token.setSaleAgent(presale);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(742)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    mainsale.addMilestone(7,0);
    |
  > |    token.setSaleAgent(presale);
    |
    |    token.transferOwnership(owner);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(744)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    token.setSaleAgent(presale);
    |
  > |    token.transferOwnership(owner);
    |    presale.transferOwnership(owner);
    |    mainsale.transferOwnership(owner);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(746)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |
    |    token.transferOwnership(owner);
  > |    presale.transferOwnership(owner);
    |    mainsale.transferOwnership(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(747)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |    token.transferOwnership(owner);
    |    presale.transferOwnership(owner);
  > |    mainsale.transferOwnership(owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(748)

[33mWarning[0m for UnrestrictedWrite in contract 'Configurator':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Configurator':
    |  function deploy() public onlyOwner {
    |
  > |    token = new YayProtoToken();
    |    presale = new Presale();
    |    mainsale = new Mainsale();
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(705)

[33mWarning[0m for UnrestrictedWrite in contract 'Configurator':
    |
    |    token = new YayProtoToken();
  > |    presale = new Presale();
    |    mainsale = new Mainsale();
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(706)

[33mWarning[0m for UnrestrictedWrite in contract 'Configurator':
    |    token = new YayProtoToken();
    |    presale = new Presale();
  > |    mainsale = new Mainsale();
    |
    |    presale.setToken(token);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(707)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(411)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(412)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(423)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(42)

[33mWarning[0m for DAOConstantGas in contract 'Presale':
    |  function withdraw() public onlyOwner {
    |    require(softcapAchieved);
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(632)

[33mWarning[0m for DAOConstantGas in contract 'Presale':
    |    uint value = balances[msg.sender];
    |    balances[msg.sender] = 0;
  > |    msg.sender.transfer(value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(679)

[33mWarning[0m for LockedEther in contract 'Presale':
    |// File: contracts/Presale.sol
    |
  > |contract Presale is SoftcapFeature, CommonSale {
    |
    |  Mainsale public mainsale;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(654)

[31mViolation[0m for TODAmount in contract 'Presale':
    |  function withdraw() public onlyOwner {
    |    require(softcapAchieved);
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(632)

[31mViolation[0m for TODReceiver in contract 'Presale':
    |  function withdraw() public onlyOwner {
    |    require(softcapAchieved);
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(632)

[33mWarning[0m for TODReceiver in contract 'Presale':
    |    uint value = balances[msg.sender];
    |    balances[msg.sender] = 0;
  > |    msg.sender.transfer(value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(679)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |  function retrieveTokens(address to, address anotherToken) public onlyOwner {
    |    ERC20 alienToken = ERC20(anotherToken);
  > |    alienToken.transfer(to, alienToken.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(80)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |
    |  function createAndTransferTokens(address to, uint tokens) internal isUnderHardCap {
  > |    token.mint(this, tokens);
    |    token.transfer(to, tokens);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(535)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |  function createAndTransferTokens(address to, uint tokens) internal isUnderHardCap {
    |    token.mint(this, tokens);
  > |    token.transfer(to, tokens);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(536)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |  function withdraw() public onlyOwner {
    |    require(softcapAchieved);
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(632)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |
    |  function finish() public onlyOwner {
  > |    token.setSaleAgent(mainsale);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(663)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |    uint value = balances[msg.sender];
    |    balances[msg.sender] = 0;
  > |    msg.sender.transfer(value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(679)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |  function finishMinting() public onlyOwner {
    |    if (updateRefundState()) {
  > |      token.finishMinting();
    |    } else {
    |      withdraw();
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(684)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |    } else {
    |      withdraw();
  > |      token.setSaleAgent(mainsale);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(687)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |  function retrieveTokens(address to, address anotherToken) public onlyOwner {
    |    ERC20 alienToken = ERC20(anotherToken);
  > |    alienToken.transfer(to, alienToken.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(80)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |
    |  function createAndTransferTokens(address to, uint tokens) internal isUnderHardCap {
  > |    token.mint(this, tokens);
    |    token.transfer(to, tokens);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(535)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |  function createAndTransferTokens(address to, uint tokens) internal isUnderHardCap {
    |    token.mint(this, tokens);
  > |    token.transfer(to, tokens);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(536)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |  function withdraw() public onlyOwner {
    |    require(softcapAchieved);
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(632)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |
    |  function finish() public onlyOwner {
  > |    token.setSaleAgent(mainsale);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(663)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |  function finishMinting() public onlyOwner {
    |    if (updateRefundState()) {
  > |      token.finishMinting();
    |    } else {
    |      withdraw();
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(684)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |    } else {
    |      withdraw();
  > |      token.setSaleAgent(mainsale);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(687)

[31mViolation[0m for UnrestrictedWrite in contract 'Presale':
    |
    |    for (uint i = number; i < milestones.length - 1; i++) {
  > |      milestones[i] = milestones[i+1];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'Presale':
    |    require(milestones.length > 0);
    |    for (uint i = 0; i < milestones.length; i++) {
  > |      delete milestones[i];
    |    }
    |    milestones.length -= milestones.length;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    require(period > 0);
    |    milestones.push(Milestone(period, bonus));
  > |    totalPeriod = totalPeriod.add(period);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    totalPeriod = totalPeriod.sub(milestone.period);
    |
  > |    milestone.period = period;
    |    milestone.bonus = bonus;
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |    milestone.period = period;
  > |    milestone.bonus = bonus;
    |
    |    totalPeriod = totalPeriod.add(period);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    milestone.bonus = bonus;
    |
  > |    totalPeriod = totalPeriod.add(period);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    require(numberAfter < milestones.length);
    |
  > |    totalPeriod = totalPeriod.add(period);
    |
    |    milestones.length++;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    }
    |    milestones.length -= milestones.length;
  > |    totalPeriod = 0;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    uint milestoneIndex = currentMilestone();
    |    Milestone storage milestone = milestones[milestoneIndex];
  > |    invested = invested.add(msg.value);
    |    uint tokens = weiInvested.mul(price).div(1 ether);
    |    uint bonusTokens = tokens.mul(milestone.bonus).div(percentRate);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(527)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |  function updateBalance(address to, uint amount) internal {
  > |    balances[to] = balances[to].add(amount);
    |    invested = invested.add(amount);
    |    if (!softcapAchieved && invested >= softcap) {
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(636)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |  function updateBalance(address to, uint amount) internal {
    |    balances[to] = balances[to].add(amount);
  > |    invested = invested.add(amount);
    |    if (!softcapAchieved && invested >= softcap) {
    |      softcapAchieved = true;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(637)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    invested = invested.add(amount);
    |    if (!softcapAchieved && invested >= softcap) {
  > |      softcapAchieved = true;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(639)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |// File: contracts/Presale.sol
    |
  > |contract Presale is SoftcapFeature, CommonSale {
    |
    |  Mainsale public mainsale;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(654)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    require(refundOn && balances[msg.sender] > 0);
    |    uint value = balances[msg.sender];
  > |    balances[msg.sender] = 0;
    |    msg.sender.transfer(value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(678)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |pragma solidity ^0.4.18;
    |
  > |// File: contracts/ownership/Ownable.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |  function setStart(uint newStart) public onlyOwner {
  > |    start = newStart;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |  function setHardcap(uint newHardcap) public onlyOwner {
  > |    hardCap = newHardcap;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |  function addMilestone(uint period, uint bonus) public onlyOwner {
    |    require(period > 0);
  > |    milestones.push(Milestone(period, bonus));
    |    totalPeriod = totalPeriod.add(period);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    require(number < milestones.length);
    |    Milestone storage milestone = milestones[number];
  > |    totalPeriod = totalPeriod.sub(milestone.period);
    |
    |    delete milestones[number];
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    totalPeriod = totalPeriod.sub(milestone.period);
    |
  > |    delete milestones[number];
    |
    |    for (uint i = number; i < milestones.length - 1; i++) {
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    Milestone storage milestone = milestones[number];
    |
  > |    totalPeriod = totalPeriod.sub(milestone.period);
    |
    |    milestone.period = period;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |  function setWallet(address newWallet) public onlyOwner {
  > |    wallet = newWallet;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |  function setDirectMintAgent(address newDirectMintAgent) public onlyOwner {
  > |    directMintAgent = newDirectMintAgent;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(505)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |  function setMinPrice(uint newMinPrice) public onlyOwner {
  > |    minPrice = newMinPrice;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |  function setPrice(uint newPrice) public onlyOwner {
  > |    price = newPrice;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |  function setToken(address newToken) public onlyOwner {
  > |    token = YayProtoToken(newToken);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(517)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |  function setSoftcap(uint newSoftcap) public onlyOwner {
  > |    softcap = newSoftcap;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(627)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |  function updateRefundState() internal returns(bool) {
    |    if (!softcapAchieved) {
  > |      refundOn = true;
    |    }
    |    return refundOn;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(645)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |  function setMainsale(address newMainsale) public onlyOwner {
  > |    mainsale = Mainsale(newMainsale);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(659)

[33mWarning[0m for LockedEther in contract 'RetrieveTokenFeature':
    |// File: contracts/RetrieveTokenFeature.sol
    |
  > |contract RetrieveTokenFeature is Ownable {
    |
    |  function retrieveTokens(address to, address anotherToken) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'RetrieveTokenFeature':
    |contract RetrieveTokenFeature is Ownable {
    |
  > |  function retrieveTokens(address to, address anotherToken) public onlyOwner {
    |    ERC20 alienToken = ERC20(anotherToken);
    |    alienToken.transfer(to, alienToken.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'RetrieveTokenFeature':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'RetrieveTokenFeature':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(39)

[33mWarning[0m for UnhandledException in contract 'RetrieveTokenFeature':
    |  function retrieveTokens(address to, address anotherToken) public onlyOwner {
    |    ERC20 alienToken = ERC20(anotherToken);
  > |    alienToken.transfer(to, alienToken.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(80)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RetrieveTokenFeature':
    |  function retrieveTokens(address to, address anotherToken) public onlyOwner {
    |    ERC20 alienToken = ERC20(anotherToken);
  > |    alienToken.transfer(to, alienToken.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'RetrieveTokenFeature':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(42)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(91)

[33mWarning[0m for DAOConstantGas in contract 'SoftcapFeature':
    |  function withdraw() public onlyOwner {
    |    require(softcapAchieved);
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(632)

[33mWarning[0m for LockedEther in contract 'SoftcapFeature':
    |// File: contracts/SoftcapFeature.sol
    |
  > |contract SoftcapFeature is WalletProvider {
    |
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(612)

[31mViolation[0m for MissingInputValidation in contract 'SoftcapFeature':
    |  address public wallet;
    |
  > |  function setWallet(address newWallet) public onlyOwner {
    |    wallet = newWallet;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(242)

[31mViolation[0m for MissingInputValidation in contract 'SoftcapFeature':
    |  uint public invested;
    |
  > |  function setSoftcap(uint newSoftcap) public onlyOwner {
    |    softcap = newSoftcap;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(626)

[33mWarning[0m for MissingInputValidation in contract 'SoftcapFeature':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'SoftcapFeature':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'SoftcapFeature':
    |contract WalletProvider is Ownable {
    |
  > |  address public wallet;
    |
    |  function setWallet(address newWallet) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(240)

[33mWarning[0m for MissingInputValidation in contract 'SoftcapFeature':
    |  mapping(address => uint) balances;
    |
  > |  bool public softcapAchieved;
    |
    |  bool public refundOn;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(618)

[33mWarning[0m for MissingInputValidation in contract 'SoftcapFeature':
    |  bool public softcapAchieved;
    |
  > |  bool public refundOn;
    |
    |  uint public softcap;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(620)

[33mWarning[0m for MissingInputValidation in contract 'SoftcapFeature':
    |  bool public refundOn;
    |
  > |  uint public softcap;
    |
    |  uint public invested;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(622)

[33mWarning[0m for MissingInputValidation in contract 'SoftcapFeature':
    |  uint public softcap;
    |
  > |  uint public invested;
    |
    |  function setSoftcap(uint newSoftcap) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(624)

[33mWarning[0m for MissingInputValidation in contract 'SoftcapFeature':
    |  }
    |
  > |  function withdraw() public onlyOwner {
    |    require(softcapAchieved);
    |    wallet.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(630)

[31mViolation[0m for TODAmount in contract 'SoftcapFeature':
    |  function withdraw() public onlyOwner {
    |    require(softcapAchieved);
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(632)

[31mViolation[0m for TODReceiver in contract 'SoftcapFeature':
    |  function withdraw() public onlyOwner {
    |    require(softcapAchieved);
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(632)

[33mWarning[0m for UnhandledException in contract 'SoftcapFeature':
    |  function withdraw() public onlyOwner {
    |    require(softcapAchieved);
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(632)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SoftcapFeature':
    |  function withdraw() public onlyOwner {
    |    require(softcapAchieved);
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(632)

[33mWarning[0m for UnrestrictedWrite in contract 'SoftcapFeature':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'SoftcapFeature':
    |
    |  function setWallet(address newWallet) public onlyOwner {
  > |    wallet = newWallet;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'SoftcapFeature':
    |
    |  function setSoftcap(uint newSoftcap) public onlyOwner {
  > |    softcap = newSoftcap;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(627)

[31mViolation[0m for LockedEther in contract 'StagedCrowdsale':
    |// File: contracts/StagedCrowdsale.sol
    |
  > |contract StagedCrowdsale is RetrieveTokenFeature {
    |
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(122)

[33mWarning[0m for UnhandledException in contract 'StagedCrowdsale':
    |  function retrieveTokens(address to, address anotherToken) public onlyOwner {
    |    ERC20 alienToken = ERC20(anotherToken);
  > |    alienToken.transfer(to, alienToken.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(80)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StagedCrowdsale':
    |  function retrieveTokens(address to, address anotherToken) public onlyOwner {
    |    ERC20 alienToken = ERC20(anotherToken);
  > |    alienToken.transfer(to, alienToken.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |
    |    for (uint i = number; i < milestones.length - 1; i++) {
  > |      milestones[i] = milestones[i+1];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    require(milestones.length > 0);
    |    for (uint i = 0; i < milestones.length; i++) {
  > |      delete milestones[i];
    |    }
    |    milestones.length -= milestones.length;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |// File: contracts/StagedCrowdsale.sol
    |
  > |contract StagedCrowdsale is RetrieveTokenFeature {
    |
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    require(period > 0);
    |    milestones.push(Milestone(period, bonus));
  > |    totalPeriod = totalPeriod.add(period);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    totalPeriod = totalPeriod.sub(milestone.period);
    |
  > |    milestone.period = period;
    |    milestone.bonus = bonus;
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |
    |    milestone.period = period;
  > |    milestone.bonus = bonus;
    |
    |    totalPeriod = totalPeriod.add(period);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    milestone.bonus = bonus;
    |
  > |    totalPeriod = totalPeriod.add(period);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    require(numberAfter < milestones.length);
    |
  > |    totalPeriod = totalPeriod.add(period);
    |
    |    milestones.length++;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    }
    |    milestones.length -= milestones.length;
  > |    totalPeriod = 0;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |pragma solidity ^0.4.18;
    |
  > |// File: contracts/ownership/Ownable.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |
    |  function setStart(uint newStart) public onlyOwner {
  > |    start = newStart;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |
    |  function setHardcap(uint newHardcap) public onlyOwner {
  > |    hardCap = newHardcap;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |  function addMilestone(uint period, uint bonus) public onlyOwner {
    |    require(period > 0);
  > |    milestones.push(Milestone(period, bonus));
    |    totalPeriod = totalPeriod.add(period);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    require(number < milestones.length);
    |    Milestone storage milestone = milestones[number];
  > |    totalPeriod = totalPeriod.sub(milestone.period);
    |
    |    delete milestones[number];
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    totalPeriod = totalPeriod.sub(milestone.period);
    |
  > |    delete milestones[number];
    |
    |    for (uint i = number; i < milestones.length - 1; i++) {
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    Milestone storage milestone = milestones[number];
    |
  > |    totalPeriod = totalPeriod.sub(milestone.period);
    |
    |    milestone.period = period;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(177)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(375)

[33mWarning[0m for LockedEther in contract 'WalletProvider':
    |// File: contracts/WalletProvider.sol
    |
  > |contract WalletProvider is Ownable {
    |
    |  address public wallet;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(238)

[31mViolation[0m for MissingInputValidation in contract 'WalletProvider':
    |  address public wallet;
    |
  > |  function setWallet(address newWallet) public onlyOwner {
    |    wallet = newWallet;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(242)

[33mWarning[0m for MissingInputValidation in contract 'WalletProvider':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'WalletProvider':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'WalletProvider':
    |contract WalletProvider is Ownable {
    |
  > |  address public wallet;
    |
    |  function setWallet(address newWallet) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'WalletProvider':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'WalletProvider':
    |
    |  function setWallet(address newWallet) public onlyOwner {
  > |    wallet = newWallet;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(243)

[33mWarning[0m for LockedEther in contract 'YayProtoToken':
    |// File: contracts/YayProtoToken.sol
    |
  > |contract YayProtoToken is MintableToken {
    |
    |  string public constant name = "YayProto";
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(431)

[33mWarning[0m for UnrestrictedWrite in contract 'YayProtoToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'YayProtoToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'YayProtoToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'YayProtoToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'YayProtoToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'YayProtoToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'YayProtoToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'YayProtoToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'YayProtoToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'YayProtoToken':
    |
    |  function mint(address _to, uint256 _amount) onlyOwnerOrSaleAgent canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(457)

[33mWarning[0m for UnrestrictedWrite in contract 'YayProtoToken':
    |  function mint(address _to, uint256 _amount) onlyOwnerOrSaleAgent canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(458)

[33mWarning[0m for UnrestrictedWrite in contract 'YayProtoToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'YayProtoToken':
    |  function setSaleAgent(address newSaleAgent) public {
    |    require(msg.sender == owner || msg.sender == saleAgent);
  > |    saleAgent = newSaleAgent;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'YayProtoToken':
    |
    |  function finishMinting() onlyOwnerOrSaleAgent canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd35cbbbc058c37acf7821d2abde9595eb4c2c2.sol(465)


