Processing contract: /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol:YggdrashCrowd
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(19)

[31mViolation[0m for DAOConstantGas in contract 'YggdrashCrowd':
    |        _contributeInfo[msg.sender] = crowdData;
    |        // send to wallet
  > |        wallet.transfer(amount);
    |
    |        // token sold out
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(251)

[33mWarning[0m for LockedEther in contract 'YggdrashCrowd':
    |    @author Peter Ryu - <odin@yggdrash.io>
    |*/
  > |contract YggdrashCrowd {
    |    using SafeMath for uint;
    |    ERC20 public yeedToken;
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(65)

[31mViolation[0m for TODAmount in contract 'YggdrashCrowd':
    |        if (amount > maxAmount){
    |            uint refund = amount.sub(maxAmount);
  > |            assert(msg.sender.send(refund));
    |            amount = maxAmount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(224)

[33mWarning[0m for TODReceiver in contract 'YggdrashCrowd':
    |        if (amount > maxAmount){
    |            uint refund = amount.sub(maxAmount);
  > |            assert(msg.sender.send(refund));
    |            amount = maxAmount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(224)

[33mWarning[0m for UnhandledException in contract 'YggdrashCrowd':
    |        if (amount > maxAmount){
    |            uint refund = amount.sub(maxAmount);
  > |            assert(msg.sender.send(refund));
    |            amount = maxAmount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(224)

[33mWarning[0m for UnhandledException in contract 'YggdrashCrowd':
    |
    |        // give token to sender
  > |        yeedToken.transferFrom(tokenOwner, msg.sender, token);
    |        FundTransfer(msg.sender, token);
    |
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(237)

[33mWarning[0m for UnhandledException in contract 'YggdrashCrowd':
    |        _contributeInfo[msg.sender] = crowdData;
    |        // send to wallet
  > |        wallet.transfer(amount);
    |
    |        // token sold out
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(251)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'YggdrashCrowd':
    |        if (amount > maxAmount){
    |            uint refund = amount.sub(maxAmount);
  > |            assert(msg.sender.send(refund));
    |            amount = maxAmount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(224)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'YggdrashCrowd':
    |
    |        // give token to sender
  > |        yeedToken.transferFrom(tokenOwner, msg.sender, token);
    |        FundTransfer(msg.sender, token);
    |
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |    @author Peter Ryu - <odin@yggdrash.io>
    |*/
  > |contract YggdrashCrowd {
    |    using SafeMath for uint;
    |    ERC20 public yeedToken;
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |            assert(tx.gasprice < maxGasPrice + 1);
    |        }
  > |        totalReceived = totalReceived.add(amount);
    |        // calculate token
    |        uint token = amount.mul(priceFactor);
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |        // calculate token
    |        uint token = amount.mul(priceFactor);
  > |        totalAmount = totalAmount.sub(token);
    |
    |        // give token to sender
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |        // Set Contribute Account
    |        ContributeAddress crowdData = _contributeInfo[msg.sender];
  > |        crowdData.exists = true;
    |        crowdData.account = msg.sender;
    |        crowdData.data = msg.data;
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |        ContributeAddress crowdData = _contributeInfo[msg.sender];
    |        crowdData.exists = true;
  > |        crowdData.account = msg.sender;
    |        crowdData.data = msg.data;
    |        crowdData.amount = amount;
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |        // add contruibuteData
    |        _contruibuteData[msg.data] = crowdData;
  > |        _contributeInfo[msg.sender] = crowdData;
    |        // send to wallet
    |        wallet.transfer(amount);
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |    private
    |    {
  > |        stage = Stages.Ended;
    |        // remain token send to owner
    |        totalAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |        stage = Stages.Ended;
    |        // remain token send to owner
  > |        totalAmount = 0;
    |        endTime = now;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |        // remain token send to owner
    |        totalAmount = 0;
  > |        endTime = now;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |    {
    |        require(_token != 0);
  > |        yeedToken = ERC20(_token);
    |        stage = Stages.SetUp;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |        require(_token != 0);
    |        yeedToken = ERC20(_token);
  > |        stage = Stages.SetUp;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |    atStage(Stages.SetUp)
    |    {
  > |        stage = Stages.Started;
    |        startBlock = block.number;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |    {
    |        stage = Stages.Started;
  > |        startBlock = block.number;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |    {
    |        require(_totalAmount != 0 && _priceFactor != 0);
  > |        totalAmount = _totalAmount;
    |        priceFactor = _priceFactor;
    |        maxValue = _maxValue;
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |        require(_totalAmount != 0 && _priceFactor != 0);
    |        totalAmount = _totalAmount;
  > |        priceFactor = _priceFactor;
    |        maxValue = _maxValue;
    |        minValue = _minValue;
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |        totalAmount = _totalAmount;
    |        priceFactor = _priceFactor;
  > |        maxValue = _maxValue;
    |        minValue = _minValue;
    |        maxGasPrice = _maxGasPrice;
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |        priceFactor = _priceFactor;
    |        maxValue = _maxValue;
  > |        minValue = _minValue;
    |        maxGasPrice = _maxGasPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |        maxValue = _maxValue;
    |        minValue = _minValue;
  > |        maxGasPrice = _maxGasPrice;
    |    }
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'YggdrashCrowd':
    |    isOwner
    |    {
  > |        maxGasPrice = _maxGasPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd9efb77fd4041a28f0108eb8726de2505817c6d1.sol(281)


