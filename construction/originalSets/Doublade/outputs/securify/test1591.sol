Processing contract: /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol:token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |  function forwardFunds() internal {
    |    // wallet.transfer(msg.value);
  > |    if (!wallet.send(msg.value)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(172)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | */
    |contract token { function transfer(address receiver, uint amount){  } }
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(43)

[31mViolation[0m for TODReceiver in contract 'Crowdsale':
    |  function forwardFunds() internal {
    |    // wallet.transfer(msg.value);
  > |    if (!wallet.send(msg.value)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(172)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    // contributions[msg.sender] = contributions[msg.sender].add(weiAmount);
    |
  > |    tokenReward1.transfer(beneficiary, tokens);
    |    tokenReward2.transfer(beneficiary, tokens);
    |    tokenReward3.transfer(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(159)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |    tokenReward1.transfer(beneficiary, tokens);
  > |    tokenReward2.transfer(beneficiary, tokens);
    |    tokenReward3.transfer(beneficiary, tokens);
    |    tokenReward4.transfer(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(160)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    tokenReward1.transfer(beneficiary, tokens);
    |    tokenReward2.transfer(beneficiary, tokens);
  > |    tokenReward3.transfer(beneficiary, tokens);
    |    tokenReward4.transfer(beneficiary, tokens);
    |    tokenReward5.transfer(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(161)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    tokenReward2.transfer(beneficiary, tokens);
    |    tokenReward3.transfer(beneficiary, tokens);
  > |    tokenReward4.transfer(beneficiary, tokens);
    |    tokenReward5.transfer(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(162)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    tokenReward3.transfer(beneficiary, tokens);
    |    tokenReward4.transfer(beneficiary, tokens);
  > |    tokenReward5.transfer(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(163)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function forwardFunds() internal {
    |    // wallet.transfer(msg.value);
  > |    if (!wallet.send(msg.value)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(172)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function withdrawTokens1(uint256 _amount) {
    |    if(msg.sender!=wallet) throw;
  > |    tokenReward1.transfer(wallet,_amount);
    |  }
    |  function withdrawTokens2(uint256 _amount) {
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(186)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function withdrawTokens2(uint256 _amount) {
    |    if(msg.sender!=wallet) throw;
  > |    tokenReward2.transfer(wallet,_amount);
    |  }
    |  function withdrawTokens3(uint256 _amount) {
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(190)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function withdrawTokens3(uint256 _amount) {
    |    if(msg.sender!=wallet) throw;
  > |    tokenReward3.transfer(wallet,_amount);
    |  }
    |  function withdrawTokens4(uint256 _amount) {
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(194)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function withdrawTokens4(uint256 _amount) {
    |    if(msg.sender!=wallet) throw;
  > |    tokenReward4.transfer(wallet,_amount);
    |  }
    |  function withdrawTokens5(uint256 _amount) {
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(198)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function withdrawTokens5(uint256 _amount) {
    |    if(msg.sender!=wallet) throw;
  > |    tokenReward5.transfer(wallet,_amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    // contributions[msg.sender] = contributions[msg.sender].add(weiAmount);
    |
  > |    tokenReward1.transfer(beneficiary, tokens);
    |    tokenReward2.transfer(beneficiary, tokens);
    |    tokenReward3.transfer(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(159)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |    tokenReward1.transfer(beneficiary, tokens);
  > |    tokenReward2.transfer(beneficiary, tokens);
    |    tokenReward3.transfer(beneficiary, tokens);
    |    tokenReward4.transfer(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(160)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    tokenReward1.transfer(beneficiary, tokens);
    |    tokenReward2.transfer(beneficiary, tokens);
  > |    tokenReward3.transfer(beneficiary, tokens);
    |    tokenReward4.transfer(beneficiary, tokens);
    |    tokenReward5.transfer(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(161)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    tokenReward2.transfer(beneficiary, tokens);
    |    tokenReward3.transfer(beneficiary, tokens);
  > |    tokenReward4.transfer(beneficiary, tokens);
    |    tokenReward5.transfer(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(162)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    tokenReward3.transfer(beneficiary, tokens);
    |    tokenReward4.transfer(beneficiary, tokens);
  > |    tokenReward5.transfer(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(163)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  function forwardFunds() internal {
    |    // wallet.transfer(msg.value);
  > |    if (!wallet.send(msg.value)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(172)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  function withdrawTokens1(uint256 _amount) {
    |    if(msg.sender!=wallet) throw;
  > |    tokenReward1.transfer(wallet,_amount);
    |  }
    |  function withdrawTokens2(uint256 _amount) {
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(186)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  function withdrawTokens2(uint256 _amount) {
    |    if(msg.sender!=wallet) throw;
  > |    tokenReward2.transfer(wallet,_amount);
    |  }
    |  function withdrawTokens3(uint256 _amount) {
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(190)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  function withdrawTokens3(uint256 _amount) {
    |    if(msg.sender!=wallet) throw;
  > |    tokenReward3.transfer(wallet,_amount);
    |  }
    |  function withdrawTokens4(uint256 _amount) {
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(194)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  function withdrawTokens4(uint256 _amount) {
    |    if(msg.sender!=wallet) throw;
  > |    tokenReward4.transfer(wallet,_amount);
    |  }
    |  function withdrawTokens5(uint256 _amount) {
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(198)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  function withdrawTokens5(uint256 _amount) {
    |    if(msg.sender!=wallet) throw;
  > |    tokenReward5.transfer(wallet,_amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function startSale(){
    |    if (msg.sender != wallet) throw;
  > |    started = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function stopSale(){
    |    if(msg.sender != wallet) throw;
  > |    started = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function setPrice(uint256 _price){
    |    if(msg.sender != wallet) throw;
  > |    price = _price;
    |  }
    |  function changeWallet(address _wallet){
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function changeWallet(address _wallet){
    |  	if(msg.sender != wallet) throw;
  > |  	wallet = _wallet;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |    
    |    // if(contributions[msg.sender].add(weiAmount)>10*10**18) throw;
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(154)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(7)

[33mWarning[0m for LockedEther in contract 'token':
    | * as they arrive.
    | */
  > |contract token { function transfer(address receiver, uint amount){  } }
    |contract Crowdsale {
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'token':
    | * as they arrive.
    | */
  > |contract token { function transfer(address receiver, uint amount){  } }
    |contract Crowdsale {
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x65061cfa23aa566316b0215c9eecabeafd4d9e81.sol(42)


