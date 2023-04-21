Processing contract: /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol:TLC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol:TLCMarketCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |    event Approval(address indexed owner, address indexed spender, uint256 value);
    |}
  > |contract StandardToken is IERC20{
    |    using SafeMath for uint256;
    |    // Balances for each account
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[msg.sender] >= value && value > 0
    |        );
  > |        balances[msg.sender] = balances[msg.sender].sub(value);
    |        balances[to] = balances[to].add(value);
    |        Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[from] = balances[from].sub(value);
    |        balances[to] = balances[to].add(value);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(value);
    |        Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[msg.sender] >= value && value > 0
    |        );
  > |        allowed[msg.sender][spender] = value;
    |        Approval(msg.sender, spender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(91)

[33mWarning[0m for LockedEther in contract 'TLC':
    |    }
    |}
  > |contract TLC is StandardToken {
    |    
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'TLC':
    |            balances[msg.sender] >= value && value > 0
    |        );
  > |        balances[msg.sender] = balances[msg.sender].sub(value);
    |        balances[to] = balances[to].add(value);
    |        Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'TLC':
    |        balances[from] = balances[from].sub(value);
    |        balances[to] = balances[to].add(value);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(value);
    |        Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'TLC':
    |            balances[msg.sender] >= value && value > 0
    |        );
  > |        allowed[msg.sender][spender] = value;
    |        Approval(msg.sender, spender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(91)

[31mViolation[0m for DAOConstantGas in contract 'TLCMarketCrowdsale':
    |   // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        multisig.transfer(msg.value);
    |    }
    |     // Payable method
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(197)

[31mViolation[0m for DAOConstantGas in contract 'TLCMarketCrowdsale':
    |        Refund(msg.sender, weiValue);
    |        
  > |        msg.sender.transfer(weiValue);
    |        
    |        if (weiRefunded <= fundRaisedDuringPublicSale) {
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(302)

[33mWarning[0m for LockedEther in contract 'TLCMarketCrowdsale':
    |
    |
  > |contract TLCMarketCrowdsale is TLC {
    |    
    |  uint256 public minContribAmount = 0.1 ether; // 0.1 ether
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(115)

[33mWarning[0m for TODAmount in contract 'TLCMarketCrowdsale':
    |        Refund(msg.sender, weiValue);
    |        
  > |        msg.sender.transfer(weiValue);
    |        
    |        if (weiRefunded <= fundRaisedDuringPublicSale) {
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(302)

[31mViolation[0m for TODReceiver in contract 'TLCMarketCrowdsale':
    |   // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        multisig.transfer(msg.value);
    |    }
    |     // Payable method
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(197)

[33mWarning[0m for TODReceiver in contract 'TLCMarketCrowdsale':
    |        Refund(msg.sender, weiValue);
    |        
  > |        msg.sender.transfer(weiValue);
    |        
    |        if (weiRefunded <= fundRaisedDuringPublicSale) {
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(302)

[33mWarning[0m for UnhandledException in contract 'TLCMarketCrowdsale':
    |   // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        multisig.transfer(msg.value);
    |    }
    |     // Payable method
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(197)

[33mWarning[0m for UnhandledException in contract 'TLCMarketCrowdsale':
    |        Refund(msg.sender, weiValue);
    |        
  > |        msg.sender.transfer(weiValue);
    |        
    |        if (weiRefunded <= fundRaisedDuringPublicSale) {
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(302)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TLCMarketCrowdsale':
    |   // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        multisig.transfer(msg.value);
    |    }
    |     // Payable method
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(197)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TLCMarketCrowdsale':
    |        Refund(msg.sender, weiValue);
    |        
  > |        msg.sender.transfer(weiValue);
    |        
    |        if (weiRefunded <= fundRaisedDuringPublicSale) {
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |            balances[msg.sender] >= value && value > 0
    |        );
  > |        balances[msg.sender] = balances[msg.sender].sub(value);
    |        balances[to] = balances[to].add(value);
    |        Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |        );
    |        balances[msg.sender] = balances[msg.sender].sub(value);
  > |        balances[to] = balances[to].add(value);
    |        Transfer(msg.sender, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |            allowed[from][msg.sender] >= value && balances[from] >= value && value > 0
    |        );
  > |        balances[from] = balances[from].sub(value);
    |        balances[to] = balances[to].add(value);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(value);
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |        );
    |        balances[from] = balances[from].sub(value);
  > |        balances[to] = balances[to].add(value);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(value);
    |        Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |        balances[from] = balances[from].sub(value);
    |        balances[to] = balances[to].add(value);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(value);
    |        Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |            balances[msg.sender] >= value && value > 0
    |        );
  > |        allowed[msg.sender][spender] = value;
    |        Approval(msg.sender, spender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |    // calculate token amount to be created
    |    uint256 tokens = weiAmount.mul(rate);
  > |    weiRaised = weiRaised.add(weiAmount);
    |   
    |    uint256 timebasedBonus = tokens.mul(getTimebasedBonusRate()).div(100);
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |    if (stage == Stage.PRESALE) {
    |        assert (soldTokenInPresale + tokens <= presaleCap);
  > |        soldTokenInPresale = soldTokenInPresale.add(tokens);
    |    } else {
    |        assert (soldTokenInPublicsale + tokens <= publicSaleCap);
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |         if(investedAmountOf[beneficiary] == 0) {
    |           // A new investor
  > |           investorCount++;
    |        }
    |        // Update investor
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |        }
    |        // Update investor
  > |        investedAmountOf[beneficiary] = investedAmountOf[beneficiary].add(weiAmount);
    |        fundRaisedDuringPublicSale = fundRaisedDuringPublicSale.add(weiAmount);
    |        soldTokenInPublicsale = soldTokenInPublicsale.add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |        // Update investor
    |        investedAmountOf[beneficiary] = investedAmountOf[beneficiary].add(weiAmount);
  > |        fundRaisedDuringPublicSale = fundRaisedDuringPublicSale.add(weiAmount);
    |        soldTokenInPublicsale = soldTokenInPublicsale.add(tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |        investedAmountOf[beneficiary] = investedAmountOf[beneficiary].add(weiAmount);
    |        fundRaisedDuringPublicSale = fundRaisedDuringPublicSale.add(weiAmount);
  > |        soldTokenInPublicsale = soldTokenInPublicsale.add(tokens);
    |    }
    |    balances[multisig] = balances[multisig].sub(tokens);
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |        soldTokenInPublicsale = soldTokenInPublicsale.add(tokens);
    |    }
  > |    balances[multisig] = balances[multisig].sub(tokens);
    |    balances[beneficiary] = balances[beneficiary].add(tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |    }
    |    balances[multisig] = balances[multisig].sub(tokens);
  > |    balances[beneficiary] = balances[beneficiary].add(tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |  function startPublicsale(uint256 _startTime, uint256 _endTime, uint256 _tokenPrice) public onlyOwner {
    |      require(hasEnded() && stage == Stage.PRESALE && _endTime >= _startTime && _tokenPrice > 0);
  > |      stage = Stage.PUBLICSALE;
    |      startTime = _startTime;
    |      endTime = _endTime;
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |      require(hasEnded() && stage == Stage.PRESALE && _endTime >= _startTime && _tokenPrice > 0);
    |      stage = Stage.PUBLICSALE;
  > |      startTime = _startTime;
    |      endTime = _endTime;
    |      rate = _tokenPrice;
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |      stage = Stage.PUBLICSALE;
    |      startTime = _startTime;
  > |      endTime = _endTime;
    |      rate = _tokenPrice;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |      startTime = _startTime;
    |      endTime = _endTime;
  > |      rate = _tokenPrice;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |        require(hasEnded() && stage == Stage.PUBLICSALE);
    |        if (hasEnded() && weiRaised >= softCap) {
  > |            stage = Stage.SUCCESS;
    |        } else if (hasEnded()) {
    |            stage = Stage.FAILURE;
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |            stage = Stage.SUCCESS;
    |        } else if (hasEnded()) {
  > |            stage = Stage.FAILURE;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |    function loadRefund() public payable isFailure{
    |        require(msg.value != 0);
  > |        loadedRefund = loadedRefund.add(msg.value);
    |        if (loadedRefund <= fundRaisedDuringPublicSale) {
    |            stage = Stage.REFUNDING;
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |        loadedRefund = loadedRefund.add(msg.value);
    |        if (loadedRefund <= fundRaisedDuringPublicSale) {
  > |            stage = Stage.REFUNDING;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |        require (weiValue != 0);
    |
  > |        investedAmountOf[msg.sender] = 0;
    |        balances[msg.sender] = 0;
    |        weiRefunded = weiRefunded.add(weiValue);
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |
    |        investedAmountOf[msg.sender] = 0;
  > |        balances[msg.sender] = 0;
    |        weiRefunded = weiRefunded.add(weiValue);
    |        Refund(msg.sender, weiValue);
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |        investedAmountOf[msg.sender] = 0;
    |        balances[msg.sender] = 0;
  > |        weiRefunded = weiRefunded.add(weiValue);
    |        Refund(msg.sender, weiValue);
    |        
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |        
    |        if (weiRefunded <= fundRaisedDuringPublicSale) {
  > |            stage = Stage.CLOSED;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |             to != 0x0 && value > 0 && distributionSupply >= value
    |         );
  > |         balances[multisig] = balances[multisig].sub(value);
    |         balances[to] = balances[to].add(value);
    |         distributionSupply = distributionSupply.sub(value);
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |         );
    |         balances[multisig] = balances[multisig].sub(value);
  > |         balances[to] = balances[to].add(value);
    |         distributionSupply = distributionSupply.sub(value);
    |         Transfer(multisig, to, value);
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |         balances[multisig] = balances[multisig].sub(value);
    |         balances[to] = balances[to].add(value);
  > |         distributionSupply = distributionSupply.sub(value);
    |         Transfer(multisig, to, value);
    |     }
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |    // Set/change Multi-signature wallet address
    |    function changeMultiSignatureWallet (address _multisig)public onlyOwner{
  > |        multisig = _multisig;
    |    }
    |    // Change Minimum contribution
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |    // Change Minimum contribution
    |    function changeMinContribution(uint256 _minContribAmount)public onlyOwner {
  > |        minContribAmount = _minContribAmount;
    |    }
    |     
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'TLCMarketCrowdsale':
    |     function changeEndTime(uint256 _endTime) public onlyOwner {
    |        require(endTime > startTime);
  > |    	endTime = _endTime;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x44cdebe3093919c94ddba3d77dcef8f0836a09d1.sol(321)


