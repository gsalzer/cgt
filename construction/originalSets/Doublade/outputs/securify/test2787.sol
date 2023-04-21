Processing contract: /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol:NOLLYCOIN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol:NOLLYCOINCrowdFund
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20 {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    function transfer(address _to, uint256 _value) returns (bool) {
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] = balances[msg.sender].sub(_value);
    |            balances[_to] = balances[_to].add(_value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            uint256 _allowance = allowed[_from][msg.sender];
  > |            allowed[_from][msg.sender] = _allowance.sub(_value);
    |            balances[_to] = balances[_to].add(_value);
    |            balances[_from] = balances[_from].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(109)

[33mWarning[0m for LockedEther in contract 'NOLLYCOIN':
    |
    |
  > |contract NOLLYCOIN is BasicToken {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'NOLLYCOIN':
    |    function transfer(address _to, uint256 _value) returns (bool) {
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] = balances[msg.sender].sub(_value);
    |            balances[_to] = balances[_to].add(_value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'NOLLYCOIN':
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            uint256 _allowance = allowed[_from][msg.sender];
  > |            allowed[_from][msg.sender] = _allowance.sub(_value);
    |            balances[_to] = balances[_to].add(_value);
    |            balances[_from] = balances[_from].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'NOLLYCOIN':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'NOLLYCOIN':
    |    // function to keep track of the total token allocation
    |    function changeTotalSupply(uint256 _amount) onlyCrowdFundAddress {
  > |        totalAllocatedTokens += _amount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'NOLLYCOIN':
    |    // function to change founder multisig wallet address            
    |    function changeFounderMultiSigAddress(address _newFounderMultiSigAddress) onlyFounders nonZeroAddress(_newFounderMultiSigAddress) {
  > |        founderMultiSigAddress = _newFounderMultiSigAddress;
    |        ChangeFoundersWalletAddress(now, founderMultiSigAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(209)

[31mViolation[0m for DAOConstantGas in contract 'NOLLYCOINCrowdFund':
    |    // function to transfer the funds to founders account
    |    function fundTransfer(uint256 weiAmount) internal {
  > |        founderMultiSigAddress.transfer(weiAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(390)

[33mWarning[0m for LockedEther in contract 'NOLLYCOINCrowdFund':
    |
    |
  > |contract NOLLYCOINCrowdFund {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(223)

[31mViolation[0m for TODReceiver in contract 'NOLLYCOINCrowdFund':
    |    // function to transfer the funds to founders account
    |    function fundTransfer(uint256 weiAmount) internal {
  > |        founderMultiSigAddress.transfer(weiAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(390)

[33mWarning[0m for UnhandledException in contract 'NOLLYCOINCrowdFund':
    |    function endCrowdfund() onlyFounders inState(State.Finish) returns(bool) {
    |        require(now > crowdfundEndDate);
  > |        uint256 remainingToken = token.balanceOf(this);  // remaining tokens
    |
    |        if (remainingToken != 0)
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(314)

[33mWarning[0m for UnhandledException in contract 'NOLLYCOINCrowdFund':
    |
    |        if (remainingToken != 0)
  > |            token.transfer(founderMultiSigAddress, remainingToken);
    |        CrowdFundClosed(now);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(317)

[33mWarning[0m for UnhandledException in contract 'NOLLYCOINCrowdFund':
    |            uint256 amount = getNoOfTokens(exchangeRateForETH, msg.value);
    |
  > |            if (token.transfer(beneficiary, amount)) {
    |                tokenSoldInCrowdsale = tokenSoldInCrowdsale.add(amount);
    |                token.changeTotalSupply(amount);
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(344)

[33mWarning[0m for UnhandledException in contract 'NOLLYCOINCrowdFund':
    |            if (token.transfer(beneficiary, amount)) {
    |                tokenSoldInCrowdsale = tokenSoldInCrowdsale.add(amount);
  > |                token.changeTotalSupply(amount);
    |                totalWeiRaised = totalWeiRaised.add(msg.value);
    |                TokenPurchase(beneficiary, msg.value, amount);
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(346)

[33mWarning[0m for UnhandledException in contract 'NOLLYCOINCrowdFund':
    |        fundTransfer(msg.value);
    |
  > |        if (token.transfer(beneficiary, amount)) {
    |            tokenSoldInPresale = tokenSoldInPresale.add(amount);
    |            token.changeTotalSupply(amount);
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(362)

[33mWarning[0m for UnhandledException in contract 'NOLLYCOINCrowdFund':
    |        if (token.transfer(beneficiary, amount)) {
    |            tokenSoldInPresale = tokenSoldInPresale.add(amount);
  > |            token.changeTotalSupply(amount);
    |            totalWeiRaised = totalWeiRaised.add(msg.value);
    |            TokenPurchase(beneficiary, msg.value, amount);
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(364)

[33mWarning[0m for UnhandledException in contract 'NOLLYCOINCrowdFund':
    |    // function to transfer the funds to founders account
    |    function fundTransfer(uint256 weiAmount) internal {
  > |        founderMultiSigAddress.transfer(weiAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(390)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NOLLYCOINCrowdFund':
    |    function endCrowdfund() onlyFounders inState(State.Finish) returns(bool) {
    |        require(now > crowdfundEndDate);
  > |        uint256 remainingToken = token.balanceOf(this);  // remaining tokens
    |
    |        if (remainingToken != 0)
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(314)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NOLLYCOINCrowdFund':
    |
    |        if (remainingToken != 0)
  > |            token.transfer(founderMultiSigAddress, remainingToken);
    |        CrowdFundClosed(now);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(317)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NOLLYCOINCrowdFund':
    |            uint256 amount = getNoOfTokens(exchangeRateForETH, msg.value);
    |
  > |            if (token.transfer(beneficiary, amount)) {
    |                tokenSoldInCrowdsale = tokenSoldInCrowdsale.add(amount);
    |                token.changeTotalSupply(amount);
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(344)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NOLLYCOINCrowdFund':
    |            if (token.transfer(beneficiary, amount)) {
    |                tokenSoldInCrowdsale = tokenSoldInCrowdsale.add(amount);
  > |                token.changeTotalSupply(amount);
    |                totalWeiRaised = totalWeiRaised.add(msg.value);
    |                TokenPurchase(beneficiary, msg.value, amount);
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(346)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NOLLYCOINCrowdFund':
    |        fundTransfer(msg.value);
    |
  > |        if (token.transfer(beneficiary, amount)) {
    |            tokenSoldInPresale = tokenSoldInPresale.add(amount);
    |            token.changeTotalSupply(amount);
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(362)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NOLLYCOINCrowdFund':
    |        if (token.transfer(beneficiary, amount)) {
    |            tokenSoldInPresale = tokenSoldInPresale.add(amount);
  > |            token.changeTotalSupply(amount);
    |            totalWeiRaised = totalWeiRaised.add(msg.value);
    |            TokenPurchase(beneficiary, msg.value, amount);
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(364)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NOLLYCOINCrowdFund':
    |    // function to transfer the funds to founders account
    |    function fundTransfer(uint256 weiAmount) internal {
  > |        founderMultiSigAddress.transfer(weiAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(390)

[33mWarning[0m for UnrestrictedWrite in contract 'NOLLYCOINCrowdFund':
    |
    |            if (token.transfer(beneficiary, amount)) {
  > |                tokenSoldInCrowdsale = tokenSoldInCrowdsale.add(amount);
    |                token.changeTotalSupply(amount);
    |                totalWeiRaised = totalWeiRaised.add(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'NOLLYCOINCrowdFund':
    |                tokenSoldInCrowdsale = tokenSoldInCrowdsale.add(amount);
    |                token.changeTotalSupply(amount);
  > |                totalWeiRaised = totalWeiRaised.add(msg.value);
    |                TokenPurchase(beneficiary, msg.value, amount);
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'NOLLYCOINCrowdFund':
    |
    |        if (token.transfer(beneficiary, amount)) {
  > |            tokenSoldInPresale = tokenSoldInPresale.add(amount);
    |            token.changeTotalSupply(amount);
    |            totalWeiRaised = totalWeiRaised.add(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'NOLLYCOINCrowdFund':
    |            tokenSoldInPresale = tokenSoldInPresale.add(amount);
    |            token.changeTotalSupply(amount);
  > |            totalWeiRaised = totalWeiRaised.add(msg.value);
    |            TokenPurchase(beneficiary, msg.value, amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'NOLLYCOINCrowdFund':
    |    // Function to change the founders multisig address 
    |    function setFounderMultiSigAddress(address _newFounderAddress) onlyFounders  nonZeroAddress(_newFounderAddress) {
  > |        founderMultiSigAddress = _newFounderAddress;
    |        ChangeFoundersWalletAddress(now, founderMultiSigAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'NOLLYCOINCrowdFund':
    |    function setTokenAddress(address _tokenAddress) external onlyOwner nonZeroAddress(_tokenAddress) {
    |        require(isTokenDeployed == false);
  > |        token = NOLLYCOIN(_tokenAddress);
    |        isTokenDeployed = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'NOLLYCOINCrowdFund':
    |        require(isTokenDeployed == false);
    |        token = NOLLYCOIN(_tokenAddress);
  > |        isTokenDeployed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(307)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns(uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xb69096a89389638518725adfcf279f3f82efa2de.sol(5)


