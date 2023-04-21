Processing contract: /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol:CrowdSale
Processing contract: /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol:InvestorsStorage
Processing contract: /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol:PreSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol:TokenContract
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(96)

[31mViolation[0m for DAOConstantGas in contract 'PreSale':
    |        executeSell(investor, toSell, sellInWei); 
    |        weiRised = weiRised.add(sellInWei);
  > |        owner.transfer(amount);
    |        if (amount > 0) {
    |          toSell = amount.div(pricePerToken);
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(223)

[31mViolation[0m for DAOConstantGas in contract 'PreSale':
    |        }
    |        if (remaining > 0) { // if there is any mount left, it means that is the the last level an there is no more tokens to sell
  > |          investor.transfer(remaining);
    |          owner.transfer(address(this).balance);
    |          presaleEnded = true;
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(228)

[31mViolation[0m for DAOConstantGas in contract 'PreSale':
    |        if (remaining > 0) { // if there is any mount left, it means that is the the last level an there is no more tokens to sell
    |          investor.transfer(remaining);
  > |          owner.transfer(address(this).balance);
    |          presaleEnded = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(229)

[33mWarning[0m for DAOConstantGas in contract 'PreSale':
    |      weiRised = weiRised.add(_amount);
    |      executeSell(investor, toSell, _amount);
  > |      owner.transfer(_amount);
    |    } else { // if not, sell from 2 or more different levels
    |      while (amount > 0) {
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(202)

[33mWarning[0m for DAOConstantGas in contract 'PreSale':
    |   */
    |  function getFunds() onlyOwner public { // request the funds
  > |    owner.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(305)

[33mWarning[0m for LockedEther in contract 'PreSale':
    | * @dev PreSale Contract which executes and handles presale of the tokens
    | */
  > |contract PreSale  is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(138)

[31mViolation[0m for TODAmount in contract 'PreSale':
    |        if (remaining > 0) { // if there is any mount left, it means that is the the last level an there is no more tokens to sell
    |          investor.transfer(remaining);
  > |          owner.transfer(address(this).balance);
    |          presaleEnded = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(229)

[31mViolation[0m for TODAmount in contract 'PreSale':
    |   */
    |  function getFunds() onlyOwner public { // request the funds
  > |    owner.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(305)

[33mWarning[0m for TODAmount in contract 'PreSale':
    |        executeSell(investor, toSell, sellInWei); 
    |        weiRised = weiRised.add(sellInWei);
  > |        owner.transfer(amount);
    |        if (amount > 0) {
    |          toSell = amount.div(pricePerToken);
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(223)

[33mWarning[0m for TODAmount in contract 'PreSale':
    |        }
    |        if (remaining > 0) { // if there is any mount left, it means that is the the last level an there is no more tokens to sell
  > |          investor.transfer(remaining);
    |          owner.transfer(address(this).balance);
    |          presaleEnded = true;
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(228)

[31mViolation[0m for TODReceiver in contract 'PreSale':
    |      weiRised = weiRised.add(_amount);
    |      executeSell(investor, toSell, _amount);
  > |      owner.transfer(_amount);
    |    } else { // if not, sell from 2 or more different levels
    |      while (amount > 0) {
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(202)

[31mViolation[0m for TODReceiver in contract 'PreSale':
    |        executeSell(investor, toSell, sellInWei); 
    |        weiRised = weiRised.add(sellInWei);
  > |        owner.transfer(amount);
    |        if (amount > 0) {
    |          toSell = amount.div(pricePerToken);
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(223)

[31mViolation[0m for TODReceiver in contract 'PreSale':
    |        if (remaining > 0) { // if there is any mount left, it means that is the the last level an there is no more tokens to sell
    |          investor.transfer(remaining);
  > |          owner.transfer(address(this).balance);
    |          presaleEnded = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(229)

[31mViolation[0m for TODReceiver in contract 'PreSale':
    |   */
    |  function getFunds() onlyOwner public { // request the funds
  > |    owner.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(305)

[33mWarning[0m for TODReceiver in contract 'PreSale':
    |        }
    |        if (remaining > 0) { // if there is any mount left, it means that is the the last level an there is no more tokens to sell
  > |          investor.transfer(remaining);
    |          owner.transfer(address(this).balance);
    |          presaleEnded = true;
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(228)

[33mWarning[0m for UnhandledException in contract 'PreSale':
    |      weiRised = weiRised.add(_amount);
    |      executeSell(investor, toSell, _amount);
  > |      owner.transfer(_amount);
    |    } else { // if not, sell from 2 or more different levels
    |      while (amount > 0) {
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(202)

[33mWarning[0m for UnhandledException in contract 'PreSale':
    |        executeSell(investor, toSell, sellInWei); 
    |        weiRised = weiRised.add(sellInWei);
  > |        owner.transfer(amount);
    |        if (amount > 0) {
    |          toSell = amount.div(pricePerToken);
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(223)

[33mWarning[0m for UnhandledException in contract 'PreSale':
    |        }
    |        if (remaining > 0) { // if there is any mount left, it means that is the the last level an there is no more tokens to sell
  > |          investor.transfer(remaining);
    |          owner.transfer(address(this).balance);
    |          presaleEnded = true;
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(228)

[33mWarning[0m for UnhandledException in contract 'PreSale':
    |        if (remaining > 0) { // if there is any mount left, it means that is the the last level an there is no more tokens to sell
    |          investor.transfer(remaining);
  > |          owner.transfer(address(this).balance);
    |          presaleEnded = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(229)

[33mWarning[0m for UnhandledException in contract 'PreSale':
    |    uint256 totalTokens = _tokens * (10 ** 18);
    |    tokensSold += _tokens; // update tokens sold
  > |    investorsStorage.newInvestment(_investor, _weiAmount); // register the invested amount in the storage
    |
    |    require(tkn.transfer(_investor, totalTokens)); // transfer the tokens to the investor
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(245)

[33mWarning[0m for UnhandledException in contract 'PreSale':
    |    investorsStorage.newInvestment(_investor, _weiAmount); // register the invested amount in the storage
    |
  > |    require(tkn.transfer(_investor, totalTokens)); // transfer the tokens to the investor
    |    emit NewInvestment(_investor, totalTokens);   
    |  }
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(247)

[33mWarning[0m for UnhandledException in contract 'PreSale':
    |   */
    |  function getFunds() onlyOwner public { // request the funds
  > |    owner.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(305)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreSale':
    |      weiRised = weiRised.add(_amount);
    |      executeSell(investor, toSell, _amount);
  > |      owner.transfer(_amount);
    |    } else { // if not, sell from 2 or more different levels
    |      while (amount > 0) {
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreSale':
    |        if (remaining > 0) { // if there is any mount left, it means that is the the last level an there is no more tokens to sell
    |          investor.transfer(remaining);
  > |          owner.transfer(address(this).balance);
    |          presaleEnded = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(229)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreSale':
    |    uint256 totalTokens = _tokens * (10 ** 18);
    |    tokensSold += _tokens; // update tokens sold
  > |    investorsStorage.newInvestment(_investor, _weiAmount); // register the invested amount in the storage
    |
    |    require(tkn.transfer(_investor, totalTokens)); // transfer the tokens to the investor
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(245)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreSale':
    |    investorsStorage.newInvestment(_investor, _weiAmount); // register the invested amount in the storage
    |
  > |    require(tkn.transfer(_investor, totalTokens)); // transfer the tokens to the investor
    |    emit NewInvestment(_investor, totalTokens);   
    |  }
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(247)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreSale':
    |   */
    |  function getFunds() onlyOwner public { // request the funds
  > |    owner.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(305)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreSale':
    |        executeSell(investor, toSell, sellInWei); 
    |        weiRised = weiRised.add(sellInWei);
  > |        owner.transfer(amount);
    |        if (amount > 0) {
    |          toSell = amount.div(pricePerToken);
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(223)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreSale':
    |        }
    |        if (remaining > 0) { // if there is any mount left, it means that is the the last level an there is no more tokens to sell
  > |          investor.transfer(remaining);
    |          owner.transfer(address(this).balance);
    |          presaleEnded = true;
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |
    |    if (toSell < levelTokens) { // if there is enough tokens left in the current level, sell from it
  > |      levelTokens = levelTokens.sub(toSell);
    |      weiRised = weiRised.add(_amount);
    |      executeSell(investor, toSell, _amount);
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |    if (toSell < levelTokens) { // if there is enough tokens left in the current level, sell from it
    |      levelTokens = levelTokens.sub(toSell);
  > |      weiRised = weiRised.add(_amount);
    |      executeSell(investor, toSell, _amount);
    |      owner.transfer(_amount);
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |          amount = amount.sub(sellInWei);
    |          if (currentLevel < 11) { // if is the last level, sell only the tokens left,
  > |            currentLevel += 1;
    |            levelTokens = baseTokens;
    |          } else {
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |          if (currentLevel < 11) { // if is the last level, sell only the tokens left,
    |            currentLevel += 1;
  > |            levelTokens = baseTokens;
    |          } else {
    |            remaining = amount;
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |        
    |        executeSell(investor, toSell, sellInWei); 
  > |        weiRised = weiRised.add(sellInWei);
    |        owner.transfer(amount);
    |        if (amount > 0) {
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |          investor.transfer(remaining);
    |          owner.transfer(address(this).balance);
  > |          presaleEnded = true;
    |        }
    |      }
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |  function executeSell(address _investor, uint256 _tokens, uint256 _weiAmount) private {
    |    uint256 totalTokens = _tokens * (10 ** 18);
  > |    tokensSold += _tokens; // update tokens sold
    |    investorsStorage.newInvestment(_investor, _weiAmount); // register the invested amount in the storage
    |
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |    uint256 centBase = 1 * 10 ** 16;
    |    require(_ethPrice > 0);
  > |    ethPrice = _ethPrice;
    |    usdCentValue = centBase.div(_ethPrice);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |    require(_ethPrice > 0);
    |    ethPrice = _ethPrice;
  > |    usdCentValue = centBase.div(_ethPrice);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |   */
    |  function setCrowdSaleAddress(address _crowdSale) onlyOwner public { // set the crowdsale contract address
  > |    cSale = CrowdSale(_crowdSale);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |   */
    |  function setStorageAddress(address _investorsStorage) onlyOwner public { // set the storage contract address
  > |    investorsStorage = InvestorsStorage(_investorsStorage);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'PreSale':
    |   */
    |  function pausePresale(bool _paused) onlyOwner public { // pause the presale
  > |    presalePaused = _paused;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(298)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x757f9a1ca2d3af327111c786ef923e67ab586b03.sol(13)


