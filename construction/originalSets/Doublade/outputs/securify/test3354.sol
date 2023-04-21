Processing contract: /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol:CrowdSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol:LEON
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol:Moderated
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol:VestingVault
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'CrowdSale':
    |        require(msg.value > purchaseMinimum && msg.value < purchaseMaximum);
    |        // transfer ether to the ether vault
  > |        etherVault.transfer(msg.value);
    |        // increment wei raised total
    |        weiRaised = weiRaised.add(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(359)

[33mWarning[0m for LockedEther in contract 'CrowdSale':
    |
    |
  > |contract CrowdSale is Moderated {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(289)

[33mWarning[0m for TODReceiver in contract 'CrowdSale':
    |        require(msg.value > purchaseMinimum && msg.value < purchaseMaximum);
    |        // transfer ether to the ether vault
  > |        etherVault.transfer(msg.value);
    |        // increment wei raised total
    |        weiRaised = weiRaised.add(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(359)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |        require(_token != address(0x0));
    |        Token token = Token(_token);
  > |        uint256 balance = token.balanceOf(this);
    |        return token.transfer(moderator, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(90)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |        Token token = Token(_token);
    |        uint256 balance = token.balanceOf(this);
  > |        return token.transfer(moderator, balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(91)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |        require(msg.value > purchaseMinimum && msg.value < purchaseMaximum);
    |        // transfer ether to the ether vault
  > |        etherVault.transfer(msg.value);
    |        // increment wei raised total
    |        weiRaised = weiRaised.add(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(359)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |        uint256 _tokens = (msg.value).mul(etherToLEONRate); 
    |        // mint tokens into purchaser address
  > |        require(tokenContract.generateTokens(_purchaser, _tokens));
    |        // increment token sales total
    |        tokensSold = tokensSold.add(_tokens);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(365)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |        require(!isFinalized && !active);
    |        // check that this contract address is the moderator of the token contract
  > |        require(tokenContract.getModerator() == address(this));
    |        // restrict trading
    |        tokenContract.restrict();
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(376)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |        require(tokenContract.getModerator() == address(this));
    |        // restrict trading
  > |        tokenContract.restrict();
    |        // set crowd sale to active state
    |        active = true;
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(378)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |        vestingContract = new VestingVault(address(tokenContract), etherVault, (block.timestamp + 26 weeks));
    |        // generate team allocation
  > |        require(tokenContract.generateTokens(address(vestingContract), teamAllocation));
    |        // generate bounty tokens
    |        require(tokenContract.generateTokens(bountyVault, bountyAllocation));
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(394)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |        require(tokenContract.generateTokens(address(vestingContract), teamAllocation));
    |        // generate bounty tokens
  > |        require(tokenContract.generateTokens(bountyVault, bountyAllocation));
    |        // emit finalized event
    |        Finalized(tokensSold, weiRaised);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(396)

[33mWarning[0m for UnhandledException in contract 'CrowdSale':
    |        require(isContract(_moderator));
    |        // reassign moderator role
  > |        tokenContract.reassignModerator(_moderator);    
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(412)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        require(_token != address(0x0));
    |        Token token = Token(_token);
  > |        uint256 balance = token.balanceOf(this);
    |        return token.transfer(moderator, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(90)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        Token token = Token(_token);
    |        uint256 balance = token.balanceOf(this);
  > |        return token.transfer(moderator, balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(91)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        uint256 _tokens = (msg.value).mul(etherToLEONRate); 
    |        // mint tokens into purchaser address
  > |        require(tokenContract.generateTokens(_purchaser, _tokens));
    |        // increment token sales total
    |        tokensSold = tokensSold.add(_tokens);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(365)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        require(!isFinalized && !active);
    |        // check that this contract address is the moderator of the token contract
  > |        require(tokenContract.getModerator() == address(this));
    |        // restrict trading
    |        tokenContract.restrict();
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(376)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        require(tokenContract.getModerator() == address(this));
    |        // restrict trading
  > |        tokenContract.restrict();
    |        // set crowd sale to active state
    |        active = true;
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(378)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        vestingContract = new VestingVault(address(tokenContract), etherVault, (block.timestamp + 26 weeks));
    |        // generate team allocation
  > |        require(tokenContract.generateTokens(address(vestingContract), teamAllocation));
    |        // generate bounty tokens
    |        require(tokenContract.generateTokens(bountyVault, bountyAllocation));
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(394)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        require(tokenContract.generateTokens(address(vestingContract), teamAllocation));
    |        // generate bounty tokens
  > |        require(tokenContract.generateTokens(bountyVault, bountyAllocation));
    |        // emit finalized event
    |        Finalized(tokensSold, weiRaised);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(396)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSale':
    |        require(isContract(_moderator));
    |        // reassign moderator role
  > |        tokenContract.reassignModerator(_moderator);    
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(412)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    
    |    function reassignModerator(address newModerator) public onlyModerator {
  > |        moderator = newModerator;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    
    |    function restrict() public onlyModerator {
  > |        unrestricted = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    
    |    function unrestrict() public onlyModerator {
  > |        unrestricted = true;
    |    }  
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        etherVault.transfer(msg.value);
    |        // increment wei raised total
  > |        weiRaised = weiRaised.add(msg.value);
    |        // 1 ETHER buys 13 000 LEONS
    |        uint256 _tokens = (msg.value).mul(etherToLEONRate); 
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        require(tokenContract.generateTokens(_purchaser, _tokens));
    |        // increment token sales total
  > |        tokensSold = tokensSold.add(_tokens);
    |        // emit purchase event
    |        Purchased(_purchaser, _tokens, tokensSold, weiRaised);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        tokenContract.restrict();
    |        // set crowd sale to active state
  > |        active = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(380)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        uint256 bountyAllocation = tokensSold.sub(teamAllocation);
    |        // spawn new vesting contract, time of release in six months from present date
  > |        vestingContract = new VestingVault(address(tokenContract), etherVault, (block.timestamp + 26 weeks));
    |        // generate team allocation
    |        require(tokenContract.generateTokens(address(vestingContract), teamAllocation));
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        Finalized(tokensSold, weiRaised);
    |        // set state to finalized
  > |        isFinalized = true;
    |        // deactivate crowdsale
    |        active = false;
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(400)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |        isFinalized = true;
    |        // deactivate crowdsale
  > |        active = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(402)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    function verifyParticipant(address participant) external onlyModerator {
    |        // whitelist the address
  > |        whitelist[participant] = true;
    |        // emit whitelisted event
    |        Whitelisted(participant);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdSale':
    |    function revokeParticipation(address participant) external onlyModerator {
    |        // remove address from whitelist
  > |        whitelist[participant] = false;
    |        // emit revoked event
    |        Revoked(participant);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(426)

[33mWarning[0m for LockedEther in contract 'LEON':
    |// @dev Assign moderation of contract to CrowdSale
    |
  > |contract LEON is Moderated {	
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(130)

[33mWarning[0m for UnhandledException in contract 'LEON':
    |        require(_token != address(0x0));
    |        Token token = Token(_token);
  > |        uint256 balance = token.balanceOf(this);
    |        return token.transfer(moderator, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(90)

[33mWarning[0m for UnhandledException in contract 'LEON':
    |        Token token = Token(_token);
    |        uint256 balance = token.balanceOf(this);
  > |        return token.transfer(moderator, balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(91)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LEON':
    |        require(_token != address(0x0));
    |        Token token = Token(_token);
  > |        uint256 balance = token.balanceOf(this);
    |        return token.transfer(moderator, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(90)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LEON':
    |        Token token = Token(_token);
    |        uint256 balance = token.balanceOf(this);
  > |        return token.transfer(moderator, balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |    
    |    function reassignModerator(address newModerator) public onlyModerator {
  > |        moderator = newModerator;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |    
    |    function restrict() public onlyModerator {
  > |        unrestricted = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |    
    |    function unrestrict() public onlyModerator {
  > |        unrestricted = true;
    |    }  
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |		function transferFrom(address _from, address _to, uint256 _value) public ifUnrestricted onlyPayloadSize(3) returns (bool) {
    |		    require(_value <= allowed[_from][msg.sender]);
  > |		    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |		    return _transfer(_from, _to, _value);
    |		}		
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |			require(_value <= balances[_from]);
    |			// Update balance of sending address
  > |			balances[_from] = balances[_from].sub(_value);	
    |			// Update balance of receiving address
    |			balances[_to] = balances[_to].add(_value);		
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |			balances[_from] = balances[_from].sub(_value);	
    |			// Update balance of receiving address
  > |			balances[_to] = balances[_to].add(_value);		
    |			// An event to make the transfer easy to find on the blockchain
    |			Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |			// Can only approve when value has not already been set or is zero
    |			require(allowed[msg.sender][_spender] == 0 || _value == 0);
  > |			allowed[msg.sender][_spender] = _value;
    |			Approval(msg.sender, _spender, _value);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |		function increaseApproval(address _spender, uint256 _addedValue) public ifUnrestricted onlyPayloadSize(2) returns (bool) {
    |			require(_addedValue > 0);
  > |			allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |			Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |			require(_subtractedValue > 0);
    |			if (_subtractedValue > oldValue) {
  > |				allowed[msg.sender][_spender] = 0;
    |			} else {
    |				allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |				allowed[msg.sender][_spender] = 0;
    |			} else {
  > |				allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |			}
    |			Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |		    require(isContract(moderator));
    |			require(totalSupply_.add(_amount) <= maximumTokenIssue);
  > |			totalSupply_ = totalSupply_.add(_amount);
    |			balances[_to] = balances[_to].add(_amount);
    |			Transfer(address(0x0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |			require(totalSupply_.add(_amount) <= maximumTokenIssue);
    |			totalSupply_ = totalSupply_.add(_amount);
  > |			balances[_to] = balances[_to].add(_amount);
    |			Transfer(address(0x0), _to, _amount);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(276)

[33mWarning[0m for LockedEther in contract 'Moderated':
    | * @dev allows for the extraction of ether or other ERC20 tokens mistakenly sent to this address
    | */
  > |contract Moderated {
    |    
    |    address public moderator;
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'Moderated':
    |    }
    |    
  > |    function reassignModerator(address newModerator) public onlyModerator {
    |        moderator = newModerator;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Moderated':
    |contract Moderated {
    |    
  > |    address public moderator;
    |    
    |    bool public unrestricted;
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Moderated':
    |    address public moderator;
    |    
  > |    bool public unrestricted;
    |    
    |    modifier onlyModerator {
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Moderated':
    |    }
    |    
  > |    function restrict() public onlyModerator {
    |        unrestricted = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Moderated':
    |    }
    |    
  > |    function unrestrict() public onlyModerator {
    |        unrestricted = true;
    |    }  
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Moderated':
    |    /// This method can be used to extract tokens mistakenly sent to this contract.
    |    /// @param _token The address of the token contract that you want to recover
  > |    function extract(address _token) public returns (bool) {
    |        require(_token != address(0x0));
    |        Token token = Token(_token);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'Moderated':
    |    }  
    |    
  > |    function getModerator() public view returns (address) {
    |        return moderator;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(100)

[33mWarning[0m for UnhandledException in contract 'Moderated':
    |        require(_token != address(0x0));
    |        Token token = Token(_token);
  > |        uint256 balance = token.balanceOf(this);
    |        return token.transfer(moderator, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(90)

[33mWarning[0m for UnhandledException in contract 'Moderated':
    |        Token token = Token(_token);
    |        uint256 balance = token.balanceOf(this);
  > |        return token.transfer(moderator, balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(91)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Moderated':
    |        require(_token != address(0x0));
    |        Token token = Token(_token);
  > |        uint256 balance = token.balanceOf(this);
    |        return token.transfer(moderator, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(90)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Moderated':
    |        Token token = Token(_token);
    |        uint256 balance = token.balanceOf(this);
  > |        return token.transfer(moderator, balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Moderated':
    |    
    |    function reassignModerator(address newModerator) public onlyModerator {
  > |        moderator = newModerator;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Moderated':
    |    
    |    function restrict() public onlyModerator {
  > |        unrestricted = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Moderated':
    |    
    |    function unrestrict() public onlyModerator {
  > |        unrestricted = true;
    |    }  
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(82)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(9)

[33mWarning[0m for LockedEther in contract 'VestingVault':
    |
    |// Vesting contract to lock team allocation
  > |contract VestingVault {
    |
    |    // reference to LEON smart contract
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(438)

[31mViolation[0m for MissingInputValidation in contract 'VestingVault':
    |    
    |    // change the beneficary address
  > |    function changeBeneficiary(address _newBeneficiary) external {
    |        // can only be changed by current beneficary
    |        require(msg.sender == beneficiary);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(472)

[33mWarning[0m for MissingInputValidation in contract 'VestingVault':
    |
    |    // reference to LEON smart contract
  > |    LEON public tokenContract; 
    |    // address to which the tokens are released
    |    address public beneficiary;
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(441)

[33mWarning[0m for MissingInputValidation in contract 'VestingVault':
    |    LEON public tokenContract; 
    |    // address to which the tokens are released
  > |    address public beneficiary;
    |    // time upon which tokens may be released
    |    uint256 public releaseDate;
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(443)

[33mWarning[0m for MissingInputValidation in contract 'VestingVault':
    |    address public beneficiary;
    |    // time upon which tokens may be released
  > |    uint256 public releaseDate;
    |    
    |    // constructor takes LEON token address, etherVault address and current time + 6 months as parameters
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(445)

[33mWarning[0m for MissingInputValidation in contract 'VestingVault':
    |    
    |    // check token balance in this contract
  > |    function checkBalance() constant public returns (uint256 tokenBalance) {
    |        return tokenContract.balanceOf(this);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(455)

[33mWarning[0m for MissingInputValidation in contract 'VestingVault':
    |
    |    // function to release tokens to beneficiary address
  > |    function claim() external {
    |        // can only be invoked by beneficiary
    |        require(msg.sender == beneficiary);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(460)

[33mWarning[0m for MissingInputValidation in contract 'VestingVault':
    |    /// This method can be used to extract tokens mistakenly sent to this contract.
    |    /// @param _token The address of the token contract that you want to recover
  > |    function extract(address _token) public returns (bool) {
    |        require(_token != address(0x0) || _token != address(tokenContract));
    |        Token token = Token(_token);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(481)

[33mWarning[0m for UnhandledException in contract 'VestingVault':
    |    // check token balance in this contract
    |    function checkBalance() constant public returns (uint256 tokenBalance) {
  > |        return tokenContract.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(456)

[33mWarning[0m for UnhandledException in contract 'VestingVault':
    |        require(block.timestamp > releaseDate);
    |        // compute current balance
  > |        uint256 balance = tokenContract.balanceOf(this);
    |        // transfer tokens to beneficary
    |        tokenContract.transfer(beneficiary, balance);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(466)

[33mWarning[0m for UnhandledException in contract 'VestingVault':
    |        uint256 balance = tokenContract.balanceOf(this);
    |        // transfer tokens to beneficary
  > |        tokenContract.transfer(beneficiary, balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(468)

[33mWarning[0m for UnhandledException in contract 'VestingVault':
    |        require(_token != address(0x0) || _token != address(tokenContract));
    |        Token token = Token(_token);
  > |        uint256 balance = token.balanceOf(this);
    |        return token.transfer(beneficiary, balance);
    |    }   
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(484)

[33mWarning[0m for UnhandledException in contract 'VestingVault':
    |        Token token = Token(_token);
    |        uint256 balance = token.balanceOf(this);
  > |        return token.transfer(beneficiary, balance);
    |    }   
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(485)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VestingVault':
    |    // check token balance in this contract
    |    function checkBalance() constant public returns (uint256 tokenBalance) {
  > |        return tokenContract.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(456)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VestingVault':
    |        require(block.timestamp > releaseDate);
    |        // compute current balance
  > |        uint256 balance = tokenContract.balanceOf(this);
    |        // transfer tokens to beneficary
    |        tokenContract.transfer(beneficiary, balance);
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(466)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VestingVault':
    |        uint256 balance = tokenContract.balanceOf(this);
    |        // transfer tokens to beneficary
  > |        tokenContract.transfer(beneficiary, balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(468)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VestingVault':
    |        require(_token != address(0x0) || _token != address(tokenContract));
    |        Token token = Token(_token);
  > |        uint256 balance = token.balanceOf(this);
    |        return token.transfer(beneficiary, balance);
    |    }   
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(484)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VestingVault':
    |        Token token = Token(_token);
    |        uint256 balance = token.balanceOf(this);
  > |        return token.transfer(beneficiary, balance);
    |    }   
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(485)

[33mWarning[0m for UnrestrictedWrite in contract 'VestingVault':
    |        require(msg.sender == beneficiary);
    |        // assign to new beneficiary
  > |        beneficiary = _newBeneficiary;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc5d6be5517c347f53ca2bec05537490f820c65d.sol(476)


