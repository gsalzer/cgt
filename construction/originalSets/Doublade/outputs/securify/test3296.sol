Processing contract: /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol:FidcomToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol:StagedCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances. 
    | */
  > |contract BasicToken is ERC20Basic {
    |    
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(74)

[31mViolation[0m for TODReceiver in contract 'Crowdsale':
    |    uint stageIndex = currentStage();
    |    Stage storage stage = stages[stageIndex];
  > |    multisigWallet.transfer(msg.value);
    |    uint price = stage.price;
    |    uint tokens = msg.value.mul(1 ether).div(price);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(510)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |  function finishMinting() public whenNotPaused onlyOwner {
  > |    uint issuedTokenSupply = token.totalSupply();
    |    uint summaryTokensPercent = bountyPercent + foundersPercent;
    |    uint summaryFoundersTokens = issuedTokenSupply.mul(summaryTokensPercent).div(percentRate - summaryTokensPercent);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(493)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    uint foundersTokens = totalSupply.mul(foundersPercent).div(percentRate);
    |    uint bountyTokens = totalSupply.mul(bountyPercent).div(percentRate);
  > |    token.mint(foundersTokensWallet, foundersTokens);
    |    token.mint(bountyTokensWallet, bountyTokens);
    |    token.finishMinting();
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(499)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    uint bountyTokens = totalSupply.mul(bountyPercent).div(percentRate);
    |    token.mint(foundersTokensWallet, foundersTokens);
  > |    token.mint(bountyTokensWallet, bountyTokens);
    |    token.finishMinting();
    |    token.allowTransfer();
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(500)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    token.mint(foundersTokensWallet, foundersTokens);
    |    token.mint(bountyTokensWallet, bountyTokens);
  > |    token.finishMinting();
    |    token.allowTransfer();
    |    token.transferOwnership(owner);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(501)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    token.mint(bountyTokensWallet, bountyTokens);
    |    token.finishMinting();
  > |    token.allowTransfer();
    |    token.transferOwnership(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(502)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    token.finishMinting();
    |    token.allowTransfer();
  > |    token.transferOwnership(owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(503)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    uint stageIndex = currentStage();
    |    Stage storage stage = stages[stageIndex];
  > |    multisigWallet.transfer(msg.value);
    |    uint price = stage.price;
    |    uint tokens = msg.value.mul(1 ether).div(price);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(510)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    uint tokens = msg.value.mul(1 ether).div(price);
    |    updateStageWithInvested();
  > |    token.mint(msg.sender, tokens);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(514)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function retrieveTokens(address anotherToken) public onlyOwner {
    |    ERC20 alienToken = ERC20(anotherToken);
  > |    alienToken.transfer(multisigWallet, token.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(523)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |  function finishMinting() public whenNotPaused onlyOwner {
  > |    uint issuedTokenSupply = token.totalSupply();
    |    uint summaryTokensPercent = bountyPercent + foundersPercent;
    |    uint summaryFoundersTokens = issuedTokenSupply.mul(summaryTokensPercent).div(percentRate - summaryTokensPercent);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(493)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    uint foundersTokens = totalSupply.mul(foundersPercent).div(percentRate);
    |    uint bountyTokens = totalSupply.mul(bountyPercent).div(percentRate);
  > |    token.mint(foundersTokensWallet, foundersTokens);
    |    token.mint(bountyTokensWallet, bountyTokens);
    |    token.finishMinting();
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(499)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    uint bountyTokens = totalSupply.mul(bountyPercent).div(percentRate);
    |    token.mint(foundersTokensWallet, foundersTokens);
  > |    token.mint(bountyTokensWallet, bountyTokens);
    |    token.finishMinting();
    |    token.allowTransfer();
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(500)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    token.mint(foundersTokensWallet, foundersTokens);
    |    token.mint(bountyTokensWallet, bountyTokens);
  > |    token.finishMinting();
    |    token.allowTransfer();
    |    token.transferOwnership(owner);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(501)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    token.mint(bountyTokensWallet, bountyTokens);
    |    token.finishMinting();
  > |    token.allowTransfer();
    |    token.transferOwnership(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(502)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    token.finishMinting();
    |    token.allowTransfer();
  > |    token.transferOwnership(owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(503)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    uint stageIndex = currentStage();
    |    Stage storage stage = stages[stageIndex];
  > |    multisigWallet.transfer(msg.value);
    |    uint price = stage.price;
    |    uint tokens = msg.value.mul(1 ether).div(price);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(510)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    uint tokens = msg.value.mul(1 ether).div(price);
    |    updateStageWithInvested();
  > |    token.mint(msg.sender, tokens);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(514)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  function retrieveTokens(address anotherToken) public onlyOwner {
    |    ERC20 alienToken = ERC20(anotherToken);
  > |    alienToken.transfer(multisigWallet, token.balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(523)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function clearStages() onlyOwner {
    |    for (uint i = 0; i < stages.length; i++) {
  > |      delete stages[i];
    |    }
    |    stages.length -= stages.length;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    require(period>0 && hardCap >0 && price > 0);
    |    stages.push(Stage(period, hardCap, price, 0, 0));
  > |    totalPeriod = totalPeriod.add(period);
    |    totalHardCap = totalHardCap.add(hardCap);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    stages.push(Stage(period, hardCap, price, 0, 0));
    |    totalPeriod = totalPeriod.add(period);
  > |    totalHardCap = totalHardCap.add(hardCap);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    Stage storage stage = stages[number];
  > |    totalHardCap = totalHardCap.sub(stage.hardCap);    
    |    totalPeriod = totalPeriod.sub(stage.period);
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    Stage storage stage = stages[number];
    |    totalHardCap = totalHardCap.sub(stage.hardCap);    
  > |    totalPeriod = totalPeriod.sub(stage.period);
    |
    |    delete stages[number];
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    totalPeriod = totalPeriod.sub(stage.period);
    |
  > |    delete stages[number];
    |
    |    for (uint i = number; i < stages.length - 1; i++) {
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    Stage storage stage = stages[number];
    |
  > |    totalHardCap = totalHardCap.sub(stage.hardCap);    
    |    totalPeriod = totalPeriod.sub(stage.period);    
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    totalHardCap = totalHardCap.sub(stage.hardCap);    
  > |    totalPeriod = totalPeriod.sub(stage.period);    
    |
    |    stage.hardCap = hardCap;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    totalPeriod = totalPeriod.sub(stage.period);    
    |
  > |    stage.hardCap = hardCap;
    |    stage.period = period;
    |    stage.price = price;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    stage.hardCap = hardCap;
  > |    stage.period = period;
    |    stage.price = price;
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    stage.hardCap = hardCap;
    |    stage.period = period;
  > |    stage.price = price;
    |
    |    totalHardCap = totalHardCap.add(hardCap);    
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    stage.price = price;
    |
  > |    totalHardCap = totalHardCap.add(hardCap);    
    |    totalPeriod = totalPeriod.add(period);    
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    totalHardCap = totalHardCap.add(hardCap);    
  > |    totalPeriod = totalPeriod.add(period);    
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |
  > |    totalPeriod = totalPeriod.add(period);
    |    totalHardCap = totalHardCap.add(hardCap);
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    totalPeriod = totalPeriod.add(period);
  > |    totalHardCap = totalHardCap.add(hardCap);
    |
    |    stages.length++;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    }
    |    stages.length -= stages.length;
  > |    totalPeriod = 0;
    |    totalHardCap = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    stages.length -= stages.length;
    |    totalPeriod = 0;
  > |    totalHardCap = 0;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(400)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function updateStageWithInvested() internal {
    |    uint stageIndex = currentStage();
  > |    totalInvested = totalInvested.add(msg.value);
    |    Stage storage stage = stages[stageIndex];
    |    stage.invested = stage.invested.add(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(443)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    totalInvested = totalInvested.add(msg.value);
    |    Stage storage stage = stages[stageIndex];
  > |    stage.invested = stage.invested.add(msg.value);
    |    if(stage.invested >= stage.hardCap) {
    |      stage.closed = now;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(445)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    stage.invested = stage.invested.add(msg.value);
    |    if(stage.invested >= stage.hardCap) {
  > |      stage.closed = now;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(447)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale is StagedCrowdsale, Pausable {
    |    
    |  address public multisigWallet;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(454)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |/**
  > | * @title ERC20Basic
    | * @dev Simpler version of ERC20 interface
    | * @dev see https://github.com/ethereum/EIPs/issues/179
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |   */
    |  function pause() onlyOwner whenNotPaused {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |   */
    |  function unpause() onlyOwner whenPaused {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |  function setStart(uint newStart) onlyOwner {
  > |    start = newStart;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function addStage(uint period, uint hardCap, uint price) onlyOwner {
    |    require(period>0 && hardCap >0 && price > 0);
  > |    stages.push(Stage(period, hardCap, price, 0, 0));
    |    totalPeriod = totalPeriod.add(period);
    |    totalHardCap = totalHardCap.add(hardCap);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function setFoundersPercent(uint newFoundersPercent) onlyOwner {
    |    require(newFoundersPercent > 0 && newFoundersPercent < percentRate);
  > |    foundersPercent = newFoundersPercent;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function setBountyPercent(uint newBountyPercent) onlyOwner {
    |    require(newBountyPercent > 0 && newBountyPercent < percentRate);
  > |    bountyPercent = newBountyPercent;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(477)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  
    |  function setMultisigWallet(address newMultisigWallet) onlyOwner {
  > |    multisigWallet = newMultisigWallet;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(481)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |  function setFoundersTokensWallet(address newFoundersTokensWallet) onlyOwner {
  > |    foundersTokensWallet = newFoundersTokensWallet;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(485)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |  function setBountyTokensWallet(address newBountyTokensWallet) onlyOwner {
  > |    bountyTokensWallet = newBountyTokensWallet;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(489)

[33mWarning[0m for LockedEther in contract 'FidcomToken':
    |
    |
  > |contract FidcomToken is MintableToken {
    |    
    |  string public constant name = "Fidcom";
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'FidcomToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'FidcomToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'FidcomToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'FidcomToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'FidcomToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'FidcomToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'FidcomToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'FidcomToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'FidcomToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'FidcomToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'FidcomToken':
    |
    |  function allowTransfer() onlyOwner {
  > |    transferAllowed = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(295)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |    
    |  event Mint(address indexed to, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(225)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(182)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    
    |  event Pause();
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(236)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |    
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(180)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(242)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(263)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(272)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(30)

[31mViolation[0m for LockedEther in contract 'StagedCrowdsale':
    |
    |
  > |contract StagedCrowdsale is Ownable {
    |
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |
    |/**
  > | * @title ERC20Basic
    | * @dev Simpler version of ERC20 interface
    | * @dev see https://github.com/ethereum/EIPs/issues/179
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |
    |
  > |contract StagedCrowdsale is Ownable {
    |
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |
    |  function setStart(uint newStart) onlyOwner {
  > |    start = newStart;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |  function addStage(uint period, uint hardCap, uint price) onlyOwner {
    |    require(period>0 && hardCap >0 && price > 0);
  > |    stages.push(Stage(period, hardCap, price, 0, 0));
    |    totalPeriod = totalPeriod.add(period);
    |    totalHardCap = totalHardCap.add(hardCap);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    require(period>0 && hardCap >0 && price > 0);
    |    stages.push(Stage(period, hardCap, price, 0, 0));
  > |    totalPeriod = totalPeriod.add(period);
    |    totalHardCap = totalHardCap.add(hardCap);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    stages.push(Stage(period, hardCap, price, 0, 0));
    |    totalPeriod = totalPeriod.add(period);
  > |    totalHardCap = totalHardCap.add(hardCap);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |
    |    Stage storage stage = stages[number];
  > |    totalHardCap = totalHardCap.sub(stage.hardCap);    
    |    totalPeriod = totalPeriod.sub(stage.period);
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    Stage storage stage = stages[number];
    |    totalHardCap = totalHardCap.sub(stage.hardCap);    
  > |    totalPeriod = totalPeriod.sub(stage.period);
    |
    |    delete stages[number];
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    totalPeriod = totalPeriod.sub(stage.period);
    |
  > |    delete stages[number];
    |
    |    for (uint i = number; i < stages.length - 1; i++) {
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    Stage storage stage = stages[number];
    |
  > |    totalHardCap = totalHardCap.sub(stage.hardCap);    
    |    totalPeriod = totalPeriod.sub(stage.period);    
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |
    |    totalHardCap = totalHardCap.sub(stage.hardCap);    
  > |    totalPeriod = totalPeriod.sub(stage.period);    
    |
    |    stage.hardCap = hardCap;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    totalPeriod = totalPeriod.sub(stage.period);    
    |
  > |    stage.hardCap = hardCap;
    |    stage.period = period;
    |    stage.price = price;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |
    |    stage.hardCap = hardCap;
  > |    stage.period = period;
    |    stage.price = price;
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    stage.hardCap = hardCap;
    |    stage.period = period;
  > |    stage.price = price;
    |
    |    totalHardCap = totalHardCap.add(hardCap);    
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    stage.price = price;
    |
  > |    totalHardCap = totalHardCap.add(hardCap);    
    |    totalPeriod = totalPeriod.add(period);    
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |
    |    totalHardCap = totalHardCap.add(hardCap);    
  > |    totalPeriod = totalPeriod.add(period);    
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |
    |
  > |    totalPeriod = totalPeriod.add(period);
    |    totalHardCap = totalHardCap.add(hardCap);
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |
    |    totalPeriod = totalPeriod.add(period);
  > |    totalHardCap = totalHardCap.add(hardCap);
    |
    |    stages.length++;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    }
    |    stages.length -= stages.length;
  > |    totalPeriod = 0;
    |    totalHardCap = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'StagedCrowdsale':
    |    stages.length -= stages.length;
    |    totalPeriod = 0;
  > |    totalHardCap = 0;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(400)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd830955b58a9e55aa1d92c799098909ab9f531a5.sol(134)


