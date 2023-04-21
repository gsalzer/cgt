Processing contract: /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol:MigrationAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |    // @notice Failsafe drain
    |    function drain() external onlyOwner() {
  > |        multisig.transfer(this.balance);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(306)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |        if (!token.burn(msg.sender, backer.tokensSent))
    |            revert();
  > |        msg.sender.transfer(backer.weiReceived);
    |        LogRefundETH(msg.sender, backer.weiReceived);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(329)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |            revert(); // Transfer SOCX tokens
    |
  > |        multisig.transfer(msg.value);  // send money to multisignature wallet
    |        LogReceivedETH(_backer, msg.value, tokensToSend); // Register event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(364)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |// Crowdsale Smart Contract
    |// This smart contract collects ETH and in return sends tokens to the Backers
  > |contract Crowdsale is Pausable {
    |
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(134)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |    // @notice Failsafe drain
    |    function drain() external onlyOwner() {
  > |        multisig.transfer(this.balance);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(306)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |        if (!token.burn(msg.sender, backer.tokensSent))
    |            revert();
  > |        msg.sender.transfer(backer.weiReceived);
    |        LogRefundETH(msg.sender, backer.weiReceived);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(329)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        crowdsaleClosed = true; 
    |
  > |        if (!token.transfer(team, 45000000e8 + presaleTokens))
    |            revert();
    |        if (!token.transfer(zen, 3000000e8)) 
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(284)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        if (!token.transfer(team, 45000000e8 + presaleTokens))
    |            revert();
  > |        if (!token.transfer(zen, 3000000e8)) 
    |            revert();
    |        token.unlock();                       
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(286)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        if (!token.transfer(zen, 3000000e8)) 
    |            revert();
  > |        token.unlock();                       
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(288)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        // 180 days after ICO ends   
    |        assert(block.number > endBlock + (numOfBlocksInMinute * 60 * 24 * 180)/100);         
  > |        if (!token.transfer(_newAddress, token.balanceOf(this))) 
    |            revert(); // transfer tokens to admin account or multisig wallet
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(299)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    // @notice Failsafe drain
    |    function drain() external onlyOwner() {
  > |        multisig.transfer(this.balance);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(306)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        totalRefunded = totalRefunded + backer.weiReceived;
    |
  > |        if (!token.burn(msg.sender, backer.tokensSent))
    |            revert();
    |        msg.sender.transfer(backer.weiReceived);
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(327)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        if (!token.burn(msg.sender, backer.tokensSent))
    |            revert();
  > |        msg.sender.transfer(backer.weiReceived);
    |        LogRefundETH(msg.sender, backer.weiReceived);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(329)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        totalTokensSent = totalTokensSent.add(tokensToSend);
    |
  > |        if (!token.transfer(_backer, tokensToSend)) 
    |            revert(); // Transfer SOCX tokens
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(361)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |            revert(); // Transfer SOCX tokens
    |
  > |        multisig.transfer(msg.value);  // send money to multisignature wallet
    |        LogReceivedETH(_backer, msg.value, tokensToSend); // Register event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(364)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        crowdsaleClosed = true; 
    |
  > |        if (!token.transfer(team, 45000000e8 + presaleTokens))
    |            revert();
    |        if (!token.transfer(zen, 3000000e8)) 
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(284)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        if (!token.transfer(team, 45000000e8 + presaleTokens))
    |            revert();
  > |        if (!token.transfer(zen, 3000000e8)) 
    |            revert();
    |        token.unlock();                       
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(286)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        if (!token.transfer(zen, 3000000e8)) 
    |            revert();
  > |        token.unlock();                       
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(288)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        // 180 days after ICO ends   
    |        assert(block.number > endBlock + (numOfBlocksInMinute * 60 * 24 * 180)/100);         
  > |        if (!token.transfer(_newAddress, token.balanceOf(this))) 
    |            revert(); // transfer tokens to admin account or multisig wallet
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(299)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    // @notice Failsafe drain
    |    function drain() external onlyOwner() {
  > |        multisig.transfer(this.balance);      
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        totalRefunded = totalRefunded + backer.weiReceived;
    |
  > |        if (!token.burn(msg.sender, backer.tokensSent))
    |            revert();
    |        msg.sender.transfer(backer.weiReceived);
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(327)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        totalTokensSent = totalTokensSent.add(tokensToSend);
    |
  > |        if (!token.transfer(_backer, tokensToSend)) 
    |            revert(); // Transfer SOCX tokens
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(361)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |            revert(); // Transfer SOCX tokens
    |
  > |        multisig.transfer(msg.value);  // send money to multisignature wallet
    |        LogReceivedETH(_backer, msg.value, tokensToSend); // Register event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(364)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |            if (whiteList[_users[i]] != true) {
  > |                whiteList[_users[i]] = true;
    |                totalWhiteListed++;                          
    |            }           
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            if (whiteList[_users[i]] != true) {
    |                whiteList[_users[i]] = true;
  > |                totalWhiteListed++;                          
    |            }           
    |        }
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(228)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |        backer.refunded = true;      
  > |        refundCount++;
    |        totalRefunded = totalRefunded + backer.weiReceived;
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(324)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        backer.refunded = true;      
    |        refundCount++;
  > |        totalRefunded = totalRefunded + backer.weiReceived;
    |
    |        if (!token.burn(msg.sender, backer.tokensSent))
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |
  > |library SafeMath {
    |    function mul(uint a, uint b) internal pure  returns(uint) {
    |        uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    // @notice Move funds from pre ICO sale if needed. 
    |    function transferPreICOFunds() external payable onlyOwner() returns (bool) {
  > |        ethReceived = ethReceived.add(msg.value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |                                                         
    |        startBlock = block.number;
  > |        endBlock = startBlock.add(_block); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        require(_block < (numOfBlocksInMinute * 60 * 24 * 80)/100); // allow for max of 80 days for campaign
    |        require(_block > block.number.sub(startBlock)); // ensure that endBlock is not set in the past
  > |        endBlock = startBlock.add(_block); 
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        require(!backer.refunded);      
    |
  > |        backer.refunded = true;      
    |        refundCount++;
    |        totalRefunded = totalRefunded + backer.weiReceived;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |        if (backer.weiReceived == 0)
  > |            backersIndex.push(_backer);
    |        
    |        backer.tokensSent = backer.tokensSent.add(tokensToSend);
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            backersIndex.push(_backer);
    |        
  > |        backer.tokensSent = backer.tokensSent.add(tokensToSend);
    |        backer.weiReceived = backer.weiReceived.add(msg.value);
    |        ethReceived = ethReceived.add(msg.value); // Update the total Ether recived
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        
    |        backer.tokensSent = backer.tokensSent.add(tokensToSend);
  > |        backer.weiReceived = backer.weiReceived.add(msg.value);
    |        ethReceived = ethReceived.add(msg.value); // Update the total Ether recived
    |        totalTokensSent = totalTokensSent.add(tokensToSend);
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        backer.tokensSent = backer.tokensSent.add(tokensToSend);
    |        backer.weiReceived = backer.weiReceived.add(msg.value);
  > |        ethReceived = ethReceived.add(msg.value); // Update the total Ether recived
    |        totalTokensSent = totalTokensSent.add(tokensToSend);
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        backer.weiReceived = backer.weiReceived.add(msg.value);
    |        ethReceived = ethReceived.add(msg.value); // Update the total Ether recived
  > |        totalTokensSent = totalTokensSent.add(tokensToSend);
    |
    |        if (!token.transfer(_backer, tokensToSend)) 
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |   */
    |    function pause() public onlyOwner whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |   */
    |    function unpause() public onlyOwner whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |        if (whiteList[_user] != true) {
  > |            whiteList[_user] = true;
    |            totalWhiteListed++;
    |            LogWhiteListed(_user, totalWhiteListed);            
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        if (whiteList[_user] != true) {
    |            whiteList[_user] = true;
  > |            totalWhiteListed++;
    |            LogWhiteListed(_user, totalWhiteListed);            
    |        }
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    // @return res {bool}
    |    function updateTokenAddress(Token _tokenAddress) external onlyOwner() returns(bool res) {
  > |        token = _tokenAddress;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        require(_block < (numOfBlocksInMinute * 60 * 24 * 60)/100);  // allow max 60 days for campaign
    |                                                         
  > |        startBlock = block.number;
    |        endBlock = startBlock.add(_block); 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        require(block.number > endBlock || totalTokensSent >= maxCap - 1000); 
    |        require(totalTokensSent >= minCap);  // ensure that campaign was successful         
  > |        crowdsaleClosed = true; 
    |
    |        if (!token.transfer(team, 45000000e8 + presaleTokens))
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(282)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |    address public owner;
    |    
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(75)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |
  > |    address public owner;
    |    
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |    function pause() public onlyOwner whenNotPaused {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |    function unpause() public onlyOwner whenPaused {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |    function pause() public onlyOwner whenNotPaused {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |    function unpause() public onlyOwner whenPaused {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(119)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |    function mul(uint a, uint b) internal pure  returns(uint) {
    |        uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(4)

[33mWarning[0m for LockedEther in contract 'Token':
    |
    |// The SOCX token
  > |contract Token is ERC20, Ownable {
    |    
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(390)

[33mWarning[0m for UnhandledException in contract 'Token':
    |        totalSupply -= _value;
    |        totalMigrated += _value;
  > |        MigrationAgent(migrationAgent).migrateFrom(msg.sender, _value);
    |        Migrate(msg.sender, migrationAgent, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(466)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |        totalSupply -= _value;
    |        totalMigrated += _value;
  > |        MigrationAgent(migrationAgent).migrateFrom(msg.sender, _value);
    |        Migrate(msg.sender, migrationAgent, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |            revert();
    |
  > |        balances[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        totalMigrated += _value;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    // @return  {bool} true if successful
    |    function burn( address _member, uint256 _value) public onlyAuthorized returns(bool) {
  > |        balances[_member] = balances[_member].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Transfer(_member, 0x0, _value);
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(498)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function burn( address _member, uint256 _value) public onlyAuthorized returns(bool) {
    |        balances[_member] = balances[_member].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Transfer(_member, 0x0, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    // @return  {bool} true if successful  
    |    function transfer(address _to, uint _value) public onlyUnlocked returns(bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function transfer(address _to, uint _value) public onlyUnlocked returns(bool) {
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(510)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(balances[_from] >= _value); // Check if the sender has enough                            
    |        require(_value <= allowed[_from][msg.sender]); // Check if allowed is greater or equal        
  > |        balances[_from] = balances[_from].sub(_value); // Subtract from the sender
    |        balances[_to] = balances[_to].add(_value); // Add the same to the recipient
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(523)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(_value <= allowed[_from][msg.sender]); // Check if allowed is greater or equal        
    |        balances[_from] = balances[_from].sub(_value); // Subtract from the sender
  > |        balances[_to] = balances[_to].add(_value); // Add the same to the recipient
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(524)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        balances[_from] = balances[_from].sub(_value); // Subtract from the sender
    |        balances[_to] = balances[_to].add(_value); // Add the same to the recipient
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(525)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    */
    |    function approve(address _spender, uint _value) public returns(bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(547)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    */
    |    function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(567)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(575)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(577)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function unlock() public onlyAuthorized {
  > |        locked = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function lock() public onlyAuthorized {
  > |        locked = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(441)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |        balances[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        totalMigrated += _value;
    |        MigrationAgent(migrationAgent).migrateFrom(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(464)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        balances[msg.sender] -= _value;
    |        totalSupply -= _value;
  > |        totalMigrated += _value;
    |        MigrationAgent(migrationAgent).migrateFrom(msg.sender, _value);
    |        Migrate(msg.sender, migrationAgent, _value);
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(465)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(migrationAgent == 0);
    |        require(msg.sender == migrationMaster);
  > |        migrationAgent = _agent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(480)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function resetCrowdSaleAddress(address _newCrowdSaleAddress) external onlyAuthorized() {
  > |        crowdSaleAddress = _newCrowdSaleAddress;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(484)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(msg.sender == migrationMaster);
    |        require(_master != 0);
  > |        migrationMaster = _master;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x587c549c4113127340ac0f5e996cab7a4f35bb49.sol(490)


