Processing contract: /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol:AcjCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol:AcjToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'AcjCrowdsale':
    |        refunds[msg.sender] = true;
    |        Refunded(msg.sender, contributions[msg.sender]);
  > |        msg.sender.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(590)

[33mWarning[0m for DAOConstantGas in contract 'AcjCrowdsale':
    |    function withdrawUnclaimed() external adminOnly {
    |        require(now > endIco + REFUND_PERIOD || isSuccess());
  > |        companyWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(600)

[33mWarning[0m for LockedEther in contract 'AcjCrowdsale':
    |
    |
  > |contract AcjCrowdsale is Ownable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(390)

[31mViolation[0m for TODAmount in contract 'AcjCrowdsale':
    |    function withdrawUnclaimed() external adminOnly {
    |        require(now > endIco + REFUND_PERIOD || isSuccess());
  > |        companyWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(600)

[31mViolation[0m for TODReceiver in contract 'AcjCrowdsale':
    |    function withdrawUnclaimed() external adminOnly {
    |        require(now > endIco + REFUND_PERIOD || isSuccess());
  > |        companyWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(600)

[33mWarning[0m for TODReceiver in contract 'AcjCrowdsale':
    |        refunds[msg.sender] = true;
    |        Refunded(msg.sender, contributions[msg.sender]);
  > |        msg.sender.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(590)

[33mWarning[0m for UnhandledException in contract 'AcjCrowdsale':
    |    function proposeTokenOwner(address _newOwner) external adminOnly {
    |        AcjToken _token = AcjToken(token);
  > |        _token.proposeNewOwner(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(553)

[33mWarning[0m for UnhandledException in contract 'AcjCrowdsale':
    |    function acceptTokenOwnership() external onlyOwner {    
    |        AcjToken _token = AcjToken(token);
  > |        _token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(558)

[33mWarning[0m for UnhandledException in contract 'AcjCrowdsale':
    |    function activateToken() external adminOnly crowdsaleSuccess afterSale {
    |        AcjToken _token = AcjToken(token);
  > |        _token.activate();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(566)

[33mWarning[0m for UnhandledException in contract 'AcjCrowdsale':
    |        refunds[msg.sender] = true;
    |        Refunded(msg.sender, contributions[msg.sender]);
  > |        msg.sender.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(590)

[33mWarning[0m for UnhandledException in contract 'AcjCrowdsale':
    |    function withdrawUnclaimed() external adminOnly {
    |        require(now > endIco + REFUND_PERIOD || isSuccess());
  > |        companyWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(600)

[33mWarning[0m for UnhandledException in contract 'AcjCrowdsale':
    |
    |        AcjToken _token = AcjToken(token);
  > |        _token.initialTransfer(_beneficiary, _tokensQty);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(616)

[33mWarning[0m for UnhandledException in contract 'AcjCrowdsale':
    |
    |        AcjToken _token = AcjToken(token);
  > |        _token.initialTransfer(_beneficiary, _tokensQty);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(644)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AcjCrowdsale':
    |    function proposeTokenOwner(address _newOwner) external adminOnly {
    |        AcjToken _token = AcjToken(token);
  > |        _token.proposeNewOwner(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(553)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AcjCrowdsale':
    |    function acceptTokenOwnership() external onlyOwner {    
    |        AcjToken _token = AcjToken(token);
  > |        _token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(558)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AcjCrowdsale':
    |    function activateToken() external adminOnly crowdsaleSuccess afterSale {
    |        AcjToken _token = AcjToken(token);
  > |        _token.activate();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(566)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AcjCrowdsale':
    |    function withdrawUnclaimed() external adminOnly {
    |        require(now > endIco + REFUND_PERIOD || isSuccess());
  > |        companyWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(600)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AcjCrowdsale':
    |
    |        AcjToken _token = AcjToken(token);
  > |        _token.initialTransfer(_beneficiary, _tokensQty);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(616)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AcjCrowdsale':
    |
    |        AcjToken _token = AcjToken(token);
  > |        _token.initialTransfer(_beneficiary, _tokensQty);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(644)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjCrowdsale':
    |
    |        uint256 _amount = contributions[msg.sender];
  > |        tokenBalances[msg.sender] = 0;
    |        refunds[msg.sender] = true;
    |        Refunded(msg.sender, contributions[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(587)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjCrowdsale':
    |        uint256 _amount = contributions[msg.sender];
    |        tokenBalances[msg.sender] = 0;
  > |        refunds[msg.sender] = true;
    |        Refunded(msg.sender, contributions[msg.sender]);
    |        msg.sender.transfer(_amount);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(588)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjCrowdsale':
    |        require(_distributed <= TOKENS_TOTAL_SUPPLY);
    |
  > |        tokenBalances[_beneficiary] = _tokensQty.add(tokenBalances[_beneficiary]);
    |        tokensDistributed = _distributed;
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(612)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjCrowdsale':
    |
    |        tokenBalances[_beneficiary] = _tokensQty.add(tokenBalances[_beneficiary]);
  > |        tokensDistributed = _distributed;
    |
    |        AcjToken _token = AcjToken(token);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(613)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjCrowdsale':
    |        require(_sold <= TOKENS_FOR_SALE);
    |
  > |        contributions[_beneficiary] = _weiAmount.add(contributions[_beneficiary]);
    |        tokenBalances[_beneficiary] = _tokensQty.add(tokenBalances[_beneficiary]);
    |        weiReceived = weiReceived.add(_weiAmount);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(635)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjCrowdsale':
    |
    |        contributions[_beneficiary] = _weiAmount.add(contributions[_beneficiary]);
  > |        tokenBalances[_beneficiary] = _tokensQty.add(tokenBalances[_beneficiary]);
    |        weiReceived = weiReceived.add(_weiAmount);
    |        tokensDistributed = _distributed;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(636)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjCrowdsale':
    |        contributions[_beneficiary] = _weiAmount.add(contributions[_beneficiary]);
    |        tokenBalances[_beneficiary] = _tokensQty.add(tokenBalances[_beneficiary]);
  > |        weiReceived = weiReceived.add(_weiAmount);
    |        tokensDistributed = _distributed;
    |        tokensSold = _sold;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(637)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjCrowdsale':
    |        tokenBalances[_beneficiary] = _tokensQty.add(tokenBalances[_beneficiary]);
    |        weiReceived = weiReceived.add(_weiAmount);
  > |        tokensDistributed = _distributed;
    |        tokensSold = _sold;
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(638)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjCrowdsale':
    |        weiReceived = weiReceived.add(_weiAmount);
    |        tokensDistributed = _distributed;
  > |        tokensSold = _sold;
    |
    |        Contribute(_beneficiary, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(639)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjCrowdsale':
    |    function proposeNewOwner(address _newOwner) external onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjCrowdsale':
    |    function acceptOwnership() external onlyNewOwner {
    |        require(newOwner != owner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjCrowdsale':
    |    function addAdmin(address _adr) external onlyOwner {
    |        require(_adr != address(0));
  > |        admins[_adr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(533)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjCrowdsale':
    |    function removeAdmin(address _adr) external onlyOwner {
    |        require(_adr != address(0));
  > |        admins[_adr] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(538)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjCrowdsale':
    |     */
    |    function updateCompanyWallet(address _wallet) external adminOnly {
  > |        companyWallet = _wallet;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(545)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjCrowdsale':
    |    function adjustTokenExchangeRate(uint _rate) external adminOnly {
    |        require(now > endPresale && now < startIco);
  > |        ethTokenRate = _rate;
    |        TokenRateUpdated(_rate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(574)

[33mWarning[0m for LockedEther in contract 'AcjToken':
    | */
    |
  > |contract AcjToken is BurnableToken, MintableToken, PausableToken {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjToken':
    |     */
    |    function mint(address _to, uint256 _amount) public onlyOwner canMint returns (bool) {
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjToken':
    |    function mint(address _to, uint256 _amount) public onlyOwner canMint returns (bool) {
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Mint(_to, _amount);
    |        Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjToken':
    |    function proposeNewOwner(address _newOwner) external onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjToken':
    |    function acceptOwnership() external onlyNewOwner {
    |        require(newOwner != owner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjToken':
    |     */
    |    function finishMinting() public onlyOwner canMint returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjToken':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'AcjToken':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(317)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | */
    |
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(82)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |    event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(268)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |    event Mint(address indexed to, uint256 amount);
    |    event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function mint(address _to, uint256 _amount) public onlyOwner canMint returns (bool) {
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function mint(address _to, uint256 _amount) public onlyOwner canMint returns (bool) {
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Mint(_to, _amount);
    |        Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function proposeNewOwner(address _newOwner) external onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function acceptOwnership() external onlyNewOwner {
    |        require(newOwner != owner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function finishMinting() public onlyOwner canMint returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(243)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | */
    |
  > |contract Ownable {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(168)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   */
    |
  > |    function proposeNewOwner(address _newOwner) external onlyOwner {
    |        require(_newOwner != address(0));
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function acceptOwnership() external onlyNewOwner {
    |        require(newOwner != owner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function proposeNewOwner(address _newOwner) external onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function acceptOwnership() external onlyNewOwner {
    |        require(newOwner != owner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(200)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | */
    |
  > |contract Pausable is Ownable {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(280)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(168)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   */
    |
  > |    function proposeNewOwner(address _newOwner) external onlyOwner {
    |        require(_newOwner != address(0));
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function acceptOwnership() external onlyNewOwner {
    |        require(newOwner != owner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(198)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = true;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(286)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to pause, triggers stopped state
    |     */
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(308)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function proposeNewOwner(address _newOwner) external onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function acceptOwnership() external onlyNewOwner {
    |        require(newOwner != owner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(317)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | **/
    |
  > |contract PausableToken is StandardToken, Pausable {
    |
    |    function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    function proposeNewOwner(address _newOwner) external onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    function acceptOwnership() external onlyNewOwner {
    |        require(newOwner != owner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(317)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |library SafeMath {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | */
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xace518c4cb2b823c2ab2b12c709e71e11cfb8896.sol(142)


