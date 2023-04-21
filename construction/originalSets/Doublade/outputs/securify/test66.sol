Processing contract: /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol:TestMining
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(110)

[33mWarning[0m for DAOConstantGas in contract 'TestMining':
    |            uint256 profit = getProfit(msg.sender);
    |            lastInvest[msg.sender] = now;
  > |            msg.sender.transfer(profit);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(22)

[33mWarning[0m for DAOConstantGas in contract 'TestMining':
    |        require(total > 0);
    |        investedETH[msg.sender] = 0;
  > |        msg.sender.transfer(total);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(55)

[33mWarning[0m for DAOConstantGas in contract 'TestMining':
    |        require(profit > 0);
    |        lastInvest[msg.sender] = now;
  > |        msg.sender.transfer(profit);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(62)

[33mWarning[0m for DAOConstantGas in contract 'TestMining':
    |        uint256 commision = affiliateCommision[msg.sender];
    |        affiliateCommision[msg.sender] = 0;
  > |        msg.sender.transfer(commision);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(90)

[33mWarning[0m for LockedEther in contract 'TestMining':
    |
    |
  > |contract TestMining{
    |    
    |    mapping (address => uint256) public investedETH;
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'TestMining':
    |contract TestMining{
    |    
  > |    mapping (address => uint256) public investedETH;
    |    mapping (address => uint256) public lastInvest;
    |    
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'TestMining':
    |    
    |    mapping (address => uint256) public investedETH;
  > |    mapping (address => uint256) public lastInvest;
    |    
    |    mapping (address => uint256) public affiliateCommision;
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(8)

[31mViolation[0m for MissingInputValidation in contract 'TestMining':
    |    mapping (address => uint256) public lastInvest;
    |    
  > |    mapping (address => uint256) public affiliateCommision;
    |    
    |    address dev = 0x47CCf63dB09E3BF617a5578A5eBBd19a4f321F67;
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'TestMining':
    |    }
    |
  > |    function getProfit(address customer) public view returns(uint256){
    |        uint256 secondsPassed = SafeMath.sub(now, lastInvest[customer]);
    |        return SafeMath.div(SafeMath.mul(secondsPassed, investedETH[customer]), 2592000); 
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'TestMining':
    |    }
    |    
  > |    function divestETH() public {
    |        uint256 profit = getProfit(msg.sender);
    |        lastInvest[msg.sender] = now;
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'TestMining':
    |    }
    |    
  > |    function withdraw() public{
    |        uint256 profit = getProfit(msg.sender);
    |        require(profit > 0);
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'TestMining':
    |    }
    |    
  > |    function getProfitFromSender() public view returns(uint256){
    |        return getProfit(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'TestMining':
    |    }
    |    
  > |    function reinvestProfit() public {
    |        uint256 profit = getProfit(msg.sender);
    |        require(profit > 0);
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'TestMining':
    |    }
    |    
  > |    function getAffiliateCommision() public view returns(uint256){
    |        return affiliateCommision[msg.sender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'TestMining':
    |    }
    |    
  > |    function withdrawAffiliateCommision() public {
    |        require(affiliateCommision[msg.sender] > 0);
    |        uint256 commision = affiliateCommision[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'TestMining':
    |    }
    |    
  > |    function getInvested() public view returns(uint256){
    |        return investedETH[msg.sender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'TestMining':
    |    }
    |    
  > |    function getBalance() public view returns(uint256){
    |        return this.balance;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'TestMining':
    |  * @dev Multiplies two numbers, throws on overflow.
    |  */
  > |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
    |      return 0;
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'TestMining':
    |  * @dev Integer division of two numbers, truncating the quotient.
    |  */
  > |  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    |    // assert(b > 0); // Solidity automatically throws when dividing by 0
    |    uint256 c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'TestMining':
    |  * @dev Substracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
    |  */
  > |  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'TestMining':
    |  * @dev Adds two numbers, throws on overflow.
    |  */
  > |  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(145)

[33mWarning[0m for TODReceiver in contract 'TestMining':
    |            uint256 profit = getProfit(msg.sender);
    |            lastInvest[msg.sender] = now;
  > |            msg.sender.transfer(profit);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(22)

[33mWarning[0m for TODReceiver in contract 'TestMining':
    |        require(total > 0);
    |        investedETH[msg.sender] = 0;
  > |        msg.sender.transfer(total);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(55)

[33mWarning[0m for TODReceiver in contract 'TestMining':
    |        require(profit > 0);
    |        lastInvest[msg.sender] = now;
  > |        msg.sender.transfer(profit);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(62)

[33mWarning[0m for TODReceiver in contract 'TestMining':
    |        uint256 commision = affiliateCommision[msg.sender];
    |        affiliateCommision[msg.sender] = 0;
  > |        msg.sender.transfer(commision);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(90)

[33mWarning[0m for UnhandledException in contract 'TestMining':
    |            uint256 profit = getProfit(msg.sender);
    |            lastInvest[msg.sender] = now;
  > |            msg.sender.transfer(profit);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(22)

[33mWarning[0m for UnhandledException in contract 'TestMining':
    |        require(total > 0);
    |        investedETH[msg.sender] = 0;
  > |        msg.sender.transfer(total);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(55)

[33mWarning[0m for UnhandledException in contract 'TestMining':
    |        require(profit > 0);
    |        lastInvest[msg.sender] = now;
  > |        msg.sender.transfer(profit);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(62)

[33mWarning[0m for UnhandledException in contract 'TestMining':
    |        uint256 commision = affiliateCommision[msg.sender];
    |        affiliateCommision[msg.sender] = 0;
  > |        msg.sender.transfer(commision);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(90)

[31mViolation[0m for UnrestrictedWrite in contract 'TestMining':
    |        if(getProfit(msg.sender) > 0){
    |            uint256 profit = getProfit(msg.sender);
  > |            lastInvest[msg.sender] = now;
    |            msg.sender.transfer(profit);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(21)

[31mViolation[0m for UnrestrictedWrite in contract 'TestMining':
    |        uint256 commision = SafeMath.div(amount, 10); 
    |        if(referral != msg.sender && referral != 0x1 && referral != dev && referral != promoter){
  > |            affiliateCommision[referral] = SafeMath.add(affiliateCommision[referral], commision);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(28)

[31mViolation[0m for UnrestrictedWrite in contract 'TestMining':
    |        }
    |        
  > |        affiliateCommision[dev] = SafeMath.div(amount, 40);
    |        affiliateCommision[promoter] = SafeMath.div(amount, 40);
    |
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(31)

[31mViolation[0m for UnrestrictedWrite in contract 'TestMining':
    |        
    |        affiliateCommision[dev] = SafeMath.div(amount, 40);
  > |        affiliateCommision[promoter] = SafeMath.div(amount, 40);
    |
    |        /*
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(32)

[31mViolation[0m for UnrestrictedWrite in contract 'TestMining':
    |        */
    |
  > |        investedETH[msg.sender] = SafeMath.add(investedETH[msg.sender], amount);
    |        lastInvest[msg.sender] = now;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'TestMining':
    |
    |        investedETH[msg.sender] = SafeMath.add(investedETH[msg.sender], amount);
  > |        lastInvest[msg.sender] = now;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'TestMining':
    |    function divestETH() public {
    |        uint256 profit = getProfit(msg.sender);
  > |        lastInvest[msg.sender] = now;
    |        
    |        //20% fee on taking capital out
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'TestMining':
    |        uint256 total = SafeMath.add(capital, profit);
    |        require(total > 0);
  > |        investedETH[msg.sender] = 0;
    |        msg.sender.transfer(total);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'TestMining':
    |        uint256 profit = getProfit(msg.sender);
    |        require(profit > 0);
  > |        lastInvest[msg.sender] = now;
    |        msg.sender.transfer(profit);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(61)

[31mViolation[0m for UnrestrictedWrite in contract 'TestMining':
    |        uint256 profit = getProfit(msg.sender);
    |        require(profit > 0);
  > |        lastInvest[msg.sender] = now;
    |        investedETH[msg.sender] = SafeMath.add(investedETH[msg.sender], profit);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'TestMining':
    |        require(profit > 0);
    |        lastInvest[msg.sender] = now;
  > |        investedETH[msg.sender] = SafeMath.add(investedETH[msg.sender], profit);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'TestMining':
    |        require(affiliateCommision[msg.sender] > 0);
    |        uint256 commision = affiliateCommision[msg.sender];
  > |        affiliateCommision[msg.sender] = 0;
    |        msg.sender.transfer(commision);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x04562d368e202f7e9470f3e238e92c2582c8dcec.sol(89)


