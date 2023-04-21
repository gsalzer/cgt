Processing contract: /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol:token
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
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(148)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | */
    |contract token { function transfer(address receiver, uint amount){  } }
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(43)

[31mViolation[0m for TODReceiver in contract 'Crowdsale':
    |  function forwardFunds() internal {
    |    // wallet.transfer(msg.value);
  > |    if (!wallet.send(msg.value)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(148)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    // contributions[msg.sender] = contributions[msg.sender].add(weiAmount);
    |
  > |    tokenReward.transfer(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(139)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function forwardFunds() internal {
    |    // wallet.transfer(msg.value);
  > |    if (!wallet.send(msg.value)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(148)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function withdrawTokens(uint256 _amount) {
    |    if(msg.sender!=wallet) throw;
  > |    tokenReward.transfer(wallet,_amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(162)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    // contributions[msg.sender] = contributions[msg.sender].add(weiAmount);
    |
  > |    tokenReward.transfer(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(139)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  function forwardFunds() internal {
    |    // wallet.transfer(msg.value);
  > |    if (!wallet.send(msg.value)) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(148)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  function withdrawTokens(uint256 _amount) {
    |    if(msg.sender!=wallet) throw;
  > |    tokenReward.transfer(wallet,_amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function startSale(){
    |    if (msg.sender != wallet) throw;
  > |    started = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function stopSale(){
    |    if(msg.sender != wallet) throw;
  > |    started = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function setPrice(uint256 _price){
    |    if(msg.sender != wallet) throw;
  > |    price = _price;
    |  }
    |  function changeWallet(address _wallet){
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function changeWallet(address _wallet){
    |  	if(msg.sender != wallet) throw;
  > |  	wallet = _wallet;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function changeTokenReward(address _token){
    |    if(msg.sender!=wallet) throw;
  > |    tokenReward = token(_token);
    |    addressOfTokenUsedAsReward = _token;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    if(msg.sender!=wallet) throw;
    |    tokenReward = token(_token);
  > |    addressOfTokenUsedAsReward = _token;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |    
    |    // if(contributions[msg.sender].add(weiAmount)>10*10**18) throw;
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(134)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(7)

[33mWarning[0m for LockedEther in contract 'token':
    | * as they arrive.
    | */
  > |contract token { function transfer(address receiver, uint amount){  } }
    |contract Crowdsale {
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'token':
    | * as they arrive.
    | */
  > |contract token { function transfer(address receiver, uint amount){  } }
    |contract Crowdsale {
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x91db07e4401c2559c7eb8290a77a0feef50843fd.sol(42)


