Processing contract: /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol:DadiMaxCapSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(105)

[33mWarning[0m for LockedEther in contract 'DadiMaxCapSale':
    |* @title The DADI MaxCap Contract
    |*/
  > |contract DadiMaxCapSale is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(219)

[33mWarning[0m for TODAmount in contract 'DadiMaxCapSale':
    |            accountNumber = getRandom(saleWallets.length) - 1;
    |            account = saleWallets[accountNumber];
  > |            account.transfer(_value);
    |            LogFundTransfer(account, _value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(570)

[33mWarning[0m for UnhandledException in contract 'DadiMaxCapSale':
    |
    |        if (remaining > 0) {
  > |            token.transfer(recipient, remaining);
    |            LogRedistributeTokens(recipient, state, remaining);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(382)

[33mWarning[0m for UnhandledException in contract 'DadiMaxCapSale':
    |        investors[_address].distributed = true;
    |
  > |        token.transfer(_address, tokens);
    |      
    |        LogTokenDistribution(_address, tokens);
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(411)

[33mWarning[0m for UnhandledException in contract 'DadiMaxCapSale':
    |        investors[_purchaseAddress].distributed = true;
    |
  > |        token.transfer(_tokenAddress, tokens);
    |      
    |        LogTokenDistribution(_tokenAddress, tokens);
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(433)

[33mWarning[0m for UnhandledException in contract 'DadiMaxCapSale':
    |        investors[investorAddress].distributed = true;
    |
  > |        token.transfer(recipient, tokens);
    |
    |        LogRedistributeTokens(recipient, state, tokens);
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(453)

[33mWarning[0m for UnhandledException in contract 'DadiMaxCapSale':
    |            accountNumber = getRandom(saleWallets.length) - 1;
    |            account = saleWallets[accountNumber];
  > |            account.transfer(_value);
    |            LogFundTransfer(account, _value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(570)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DadiMaxCapSale':
    |
    |        if (remaining > 0) {
  > |            token.transfer(recipient, remaining);
    |            LogRedistributeTokens(recipient, state, remaining);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(382)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DadiMaxCapSale':
    |        investors[_address].distributed = true;
    |
  > |        token.transfer(_address, tokens);
    |      
    |        LogTokenDistribution(_address, tokens);
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(411)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DadiMaxCapSale':
    |        investors[_purchaseAddress].distributed = true;
    |
  > |        token.transfer(_tokenAddress, tokens);
    |      
    |        LogTokenDistribution(_tokenAddress, tokens);
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(433)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DadiMaxCapSale':
    |        investors[investorAddress].distributed = true;
    |
  > |        token.transfer(recipient, tokens);
    |
    |        LogRedistributeTokens(recipient, state, tokens);
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(453)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DadiMaxCapSale':
    |            accountNumber = getRandom(saleWallets.length) - 1;
    |            account = saleWallets[accountNumber];
  > |            account.transfer(_value);
    |            LogFundTransfer(account, _value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(570)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiMaxCapSale':
    |
    |/**
  > | * @title SafeMath
    | * @dev Math operations with safety checks that throw on error
    | */
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiMaxCapSale':
    |    function addWhitelistUser(address userAddress) public onlyOwner {
    |        if (!isWhitelisted(userAddress)) {
  > |            whitelisted[userAddress].index = whitelistedIndex.push(userAddress) - 1;
    |          
    |            LogNewWhitelistUser(userAddress, whitelisted[userAddress].index);
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiMaxCapSale':
    |        // add the user to the investorIndex if this is their first contribution
    |        if (!isInvested(_address)) {
  > |            investors[_address].index = investorIndex.push(_address) - 1;
    |        }
    |      
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(552)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiMaxCapSale':
    |        }
    |      
  > |        investors[_address].tokens = investors[_address].tokens.add(_tokens);
    |        investors[_address].contribution = investors[_address].contribution.add(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(555)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiMaxCapSale':
    |      
    |        investors[_address].tokens = investors[_address].tokens.add(_tokens);
  > |        investors[_address].contribution = investors[_address].contribution.add(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(556)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiMaxCapSale':
    |    */
    |    function updateSaleParameters (uint256 _tokens) internal {
  > |        tokensPurchased = tokensPurchased.add(_tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(641)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiMaxCapSale':
    |
    |/**
  > | * @title SafeMath
    | * @dev Math operations with safety checks that throw on error
    | */
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiMaxCapSale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiMaxCapSale':
    |    function addSaleWallet (address _wallet) public onlyOwner returns (bool) {
    |        require(_wallet != address(0));
  > |        saleWallets.push(_wallet);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiMaxCapSale':
    |    */
    |    function setState (uint256 _state) public onlyOwner {
  > |        state = SaleState(uint(_state));
    |        LogStateChange(state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiMaxCapSale':
    |    */
    |    function startSale () public onlyOwner {
  > |        state = SaleState.Sale;
    |        LogStateChange(state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiMaxCapSale':
    |    */
    |    function finalizeSale () public onlyOwner {
  > |        state = SaleState.Success;
    |        LogStateChange(state);
    |
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiMaxCapSale':
    |    */
    |    function closeSale (address recipient) public onlyOwner {
  > |        state = SaleState.Closed;
    |        LogStateChange(state);
    |
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiMaxCapSale':
    |    */
    |    function setTokenDistribution () public onlyOwner {
  > |        state = SaleState.TokenDistribution;
    |        LogStateChange(state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiMaxCapSale':
    |        require(investors[_address].distributed == false);
    |
  > |        investors[_address].distributed = true;
    |
    |        token.transfer(_address, tokens);
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiMaxCapSale':
    |
    |        require(investors[_purchaseAddress].distributed == false);
  > |        investors[_purchaseAddress].distributed = true;
    |
    |        token.transfer(_tokenAddress, tokens);
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(431)

[33mWarning[0m for UnrestrictedWrite in contract 'DadiMaxCapSale':
    |        require(investors[investorAddress].distributed == false);
    |
  > |        investors[investorAddress].distributed = true;
    |
    |        token.transfer(recipient, tokens);
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(451)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(70)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x567b27ae0d0ea4fca292f447d819aa1b366375c4.sol(208)


