Processing contract: /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol:BTC20Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol:BTC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BTC20Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(257)

[33mWarning[0m for LockedEther in contract 'BTC20Crowdsale':
    |    }
    |}
  > |contract BTC20Crowdsale {
    |  using SafeMath for uint256;
    | 
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(151)

[33mWarning[0m for UnhandledException in contract 'BTC20Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(wallet, beneficiary, tokens); 
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    TOKENS_SOLD = TOKENS_SOLD.add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(248)

[33mWarning[0m for UnhandledException in contract 'BTC20Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(257)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BTC20Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(wallet, beneficiary, tokens); 
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    TOKENS_SOLD = TOKENS_SOLD.add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(248)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BTC20Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'BTC20Crowdsale':
    |    
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.mint(wallet, beneficiary, tokens); 
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'BTC20Crowdsale':
    |    token.mint(wallet, beneficiary, tokens); 
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
  > |    TOKENS_SOLD = TOKENS_SOLD.add(tokens);
    |    forwardFunds();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'BTC20Crowdsale':
    |    function changeEndDate(uint256 endTimeUnixTimestamp) public returns(bool) {
    |        require (msg.sender == wallet);
  > |        endTime = endTimeUnixTimestamp;
    |    }
    |    function changeStartDate(uint256 startTimeUnixTimestamp) public returns(bool) {
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'BTC20Crowdsale':
    |    function changeStartDate(uint256 startTimeUnixTimestamp) public returns(bool) {
    |        require (msg.sender == wallet);
  > |        startTime = startTimeUnixTimestamp;
    |    }
    |    function setPriceRate(uint256 newPrice) public returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'BTC20Crowdsale':
    |    function setPriceRate(uint256 newPrice) public returns (bool) {
    |        require (msg.sender == wallet);
  > |        ratePerWei = newPrice;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'BTC20Crowdsale':
    |    function changeMinimumContribution(uint256 minContribution) public returns (bool) {
    |        require (msg.sender == wallet);
  > |        minimumContribution = minContribution * 10 ** 15;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(288)

[33mWarning[0m for LockedEther in contract 'BTC20Token':
    |}
    |
  > |contract BTC20Token is BasicToken,Ownable {
    |
    |   using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'BTC20Token':
    |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    require(tokenBalances[msg.sender]>=_value);
  > |    tokenBalances[msg.sender] = tokenBalances[msg.sender].sub(_value);
    |    tokenBalances[_to] = tokenBalances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'BTC20Token':
    |    require(tokenBalances[msg.sender]>=_value);
    |    tokenBalances[msg.sender] = tokenBalances[msg.sender].sub(_value);
  > |    tokenBalances[_to] = tokenBalances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'BTC20Token':
    |    function mint(address wallet, address buyer, uint256 tokenAmount) public onlyOwner {
    |      require(tokenBalances[wallet] >= tokenAmount);               // checks if it has enough to sell
  > |      tokenBalances[buyer] = tokenBalances[buyer].add(tokenAmount);                  // adds the amount to buyer's balance
    |      tokenBalances[wallet] = tokenBalances[wallet].sub(tokenAmount);                        // subtracts amount from seller's balance
    |      Transfer(wallet, buyer, tokenAmount); 
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'BTC20Token':
    |      require(tokenBalances[wallet] >= tokenAmount);               // checks if it has enough to sell
    |      tokenBalances[buyer] = tokenBalances[buyer].add(tokenAmount);                  // adds the amount to buyer's balance
  > |      tokenBalances[wallet] = tokenBalances[wallet].sub(tokenAmount);                        // subtracts amount from seller's balance
    |      Transfer(wallet, buyer, tokenAmount); 
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'BTC20Token':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(71)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    require(tokenBalances[msg.sender]>=_value);
  > |    tokenBalances[msg.sender] = tokenBalances[msg.sender].sub(_value);
    |    tokenBalances[_to] = tokenBalances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(104)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(71)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | 
    | 
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xf26c7cd79aa1ed2466e7e81a0e0541709ddd050b.sol(13)


