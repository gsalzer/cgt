Processing contract: /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol:DadiSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(105)

[33mWarning[0m for LockedEther in contract 'DadiSale':
    |* @title A DADI Contract
    |*/
  > |contract DadiSale is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(219)

[33mWarning[0m for TODAmount in contract 'DadiSale':
    |            accountNumber = getRandom(saleWallets.length) - 1;
    |            account = saleWallets[accountNumber];
  > |            account.transfer(_value);
    |            LogFundTransfer(account, _value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(609)

[33mWarning[0m for UnhandledException in contract 'DadiSale':
    |
    |        if (remaining > 0) {
  > |            token.transfer(recipient, remaining);
    |            LogRedistributeTokens(recipient, state, remaining);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(422)

[33mWarning[0m for UnhandledException in contract 'DadiSale':
    |        investors[_address].distributed = true;
    |
  > |        token.transfer(_address, tokens);
    |      
    |        LogTokenDistribution(_address, tokens);
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(451)

[33mWarning[0m for UnhandledException in contract 'DadiSale':
    |        investors[_purchaseAddress].distributed = true;
    |
  > |        token.transfer(_tokenAddress, tokens);
    |      
    |        LogTokenDistribution(_tokenAddress, tokens);
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(474)

[33mWarning[0m for UnhandledException in contract 'DadiSale':
    |        // set flag, so they can't be redistributed
    |        investors[investorAddress].distributed = true;
  > |        token.transfer(recipient, tokens);
    |
    |        LogRedistributeTokens(recipient, state, tokens);
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(492)

[33mWarning[0m for UnhandledException in contract 'DadiSale':
    |            accountNumber = getRandom(saleWallets.length) - 1;
    |            account = saleWallets[accountNumber];
  > |            account.transfer(_value);
    |            LogFundTransfer(account, _value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(609)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DadiSale':
    |
    |        if (remaining > 0) {
  > |            token.transfer(recipient, remaining);
    |            LogRedistributeTokens(recipient, state, remaining);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(422)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DadiSale':
    |        investors[_address].distributed = true;
    |
  > |        token.transfer(_address, tokens);
    |      
    |        LogTokenDistribution(_address, tokens);
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(451)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DadiSale':
    |        investors[_purchaseAddress].distributed = true;
    |
  > |        token.transfer(_tokenAddress, tokens);
    |      
    |        LogTokenDistribution(_tokenAddress, tokens);
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(474)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DadiSale':
    |        // set flag, so they can't be redistributed
    |        investors[investorAddress].distributed = true;
  > |        token.transfer(recipient, tokens);
    |
    |        LogRedistributeTokens(recipient, state, tokens);
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(492)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DadiSale':
    |            accountNumber = getRandom(saleWallets.length) - 1;
    |            account = saleWallets[accountNumber];
  > |            account.transfer(_value);
    |            LogFundTransfer(account, _value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(609)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |
    |/**
  > | * @title SafeMath
    | * @dev Math operations with safety checks that throw on error
    | */
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |    function addWhitelistUser(address userAddress, uint256 pledged) public onlyOwner {
    |        if (!isWhitelisted(userAddress)) {
  > |            whitelisted[userAddress].index = whitelistedIndex.push(userAddress) - 1;
    |          
    |            LogNewWhitelistUser(userAddress, whitelisted[userAddress].index, pledged);
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |        }
    |
  > |        whitelisted[userAddress].pledged = pledged * 1000;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |        // add the user to the investorIndex if this is their first contribution
    |        if (!isInvested(_address)) {
  > |            investors[_address].index = investorIndex.push(_address) - 1;
    |        }
    |      
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(590)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |        }
    |      
  > |        investors[_address].tokens = investors[_address].tokens.add(_tokens);
    |        investors[_address].contribution = investors[_address].contribution.add(_value);
    |        investors[_address].distributed = false;
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(593)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |      
    |        investors[_address].tokens = investors[_address].tokens.add(_tokens);
  > |        investors[_address].contribution = investors[_address].contribution.add(_value);
    |        investors[_address].distributed = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(594)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |        investors[_address].tokens = investors[_address].tokens.add(_tokens);
    |        investors[_address].contribution = investors[_address].contribution.add(_value);
  > |        investors[_address].distributed = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(595)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |    */
    |    function updateSaleParameters (uint256 _tokens) internal {
  > |        tokensPurchased = tokensPurchased.add(_tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(671)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |
    |/**
  > | * @title SafeMath
    | * @dev Math operations with safety checks that throw on error
    | */
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |    function addSaleWallet (address _wallet) public onlyOwner returns (bool) {
    |        require(_wallet != address(0));
  > |        saleWallets.push(_wallet);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |    */
    |    function setState (uint256 _state) public onlyOwner {
  > |        state = SaleState(uint(_state));
    |        LogStateChange(state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |    */
    |    function startSale (uint256 rate) public onlyOwner {
  > |        state = SaleState.Sale;
    |        updateEthRate(rate);
    |        LogStateChange(state);
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |        require(rate >= 100000);
    |        
  > |        ethRate = rate;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |    function updateTokenSupply (uint256 _tokenSupply)  public onlyOwner returns (bool) {
    |        require(_tokenSupply != 0);
  > |        tokenSupply = _tokenSupply * (uint256(10) ** 18);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |    */
    |    function finalizeSale () public onlyOwner {
  > |        state = SaleState.Success;
    |        LogStateChange(state);
    |
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(400)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |    */
    |    function closeSale (address recipient) public onlyOwner {
  > |        state = SaleState.Closed;
    |        LogStateChange(state);
    |
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |    */
    |    function setTokenDistribution () public onlyOwner {
  > |        state = SaleState.TokenDistribution;
    |        LogStateChange(state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(431)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |        require(investors[_address].distributed == false);
    |
  > |        investors[_address].distributed = true;
    |
    |        token.transfer(_address, tokens);
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(449)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |        require(investors[_purchaseAddress].distributed == false);
    |
  > |        investors[_purchaseAddress].distributed = true;
    |
    |        token.transfer(_tokenAddress, tokens);
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiSale':
    |        
    |        // set flag, so they can't be redistributed
  > |        investors[investorAddress].distributed = true;
    |        token.transfer(recipient, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(491)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(70)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xebaa1766c577a1ea5833f0502bd9984aef22c61f.sol(208)


