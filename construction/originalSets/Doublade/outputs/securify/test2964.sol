Processing contract: /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol:token
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
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(143)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | */
    |contract token { function transfer(address receiver, uint amount){  } }
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(42)

[31mViolation[0m for TODReceiver in contract 'Crowdsale':
    |  function forwardFunds() internal {
    |    // wallet.transfer(msg.value);
  > |    if (!wallet.send(msg.value)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(143)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    // contributions[msg.sender] = contributions[msg.sender].add(weiAmount);
    |
  > |    tokenReward.transfer(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(134)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function forwardFunds() internal {
    |    // wallet.transfer(msg.value);
  > |    if (!wallet.send(msg.value)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(143)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function withdrawTokens(uint256 _amount) {
    |    if(msg.sender!=wallet) throw;
  > |    tokenReward.transfer(wallet,_amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(157)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    // contributions[msg.sender] = contributions[msg.sender].add(weiAmount);
    |
  > |    tokenReward.transfer(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(134)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  function forwardFunds() internal {
    |    // wallet.transfer(msg.value);
  > |    if (!wallet.send(msg.value)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(143)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  function withdrawTokens(uint256 _amount) {
    |    if(msg.sender!=wallet) throw;
  > |    tokenReward.transfer(wallet,_amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function startSale(){
    |    if (msg.sender != wallet) throw;
  > |    started = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function stopSale(){
    |    if(msg.sender != wallet) throw;
  > |    started = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function setPrice(uint256 _price){
    |    if(msg.sender != wallet) throw;
  > |    price = _price;
    |  }
    |  function changeWallet(address _wallet){
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function changeWallet(address _wallet){
    |  	if(msg.sender != wallet) throw;
  > |  	wallet = _wallet;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function changeTokenReward(address _token){
    |    if(msg.sender!=wallet) throw;
  > |    tokenReward = token(_token);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |    
    |    // if(contributions[msg.sender].add(weiAmount)>10*10**18) throw;
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(129)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(7)

[33mWarning[0m for LockedEther in contract 'token':
    | * as they arrive.
    | */
  > |contract token { function transfer(address receiver, uint amount){  } }
    |contract Crowdsale {
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'token':
    | * as they arrive.
    | */
  > |contract token { function transfer(address receiver, uint amount){  } }
    |contract Crowdsale {
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xc2ca6459ee94aaca86ebdad775eb2a0ba55081d4.sol(41)


