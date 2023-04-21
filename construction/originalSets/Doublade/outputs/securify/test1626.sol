Processing contract: /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol:Authorizable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol:ExchangeRate
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol:FoxToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol:MainSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Authorizable':
    | * [{"constant":true,"inputs":[{"name":"authorizerIndex","type":"uint256"}],"name":"getAuthorizer","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_addr","type":"address"}],"name":"addAuthorized","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_addr","type":"address"}],"name":"isAuthorized","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"inputs":[],"payable":false,"type":"constructor"}]
    | */
  > |contract Authorizable {
    | 
    |  address[] authorizers;
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'Authorizable':
    | * [{"constant":true,"inputs":[{"name":"authorizerIndex","type":"uint256"}],"name":"getAuthorizer","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_addr","type":"address"}],"name":"addAuthorized","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_addr","type":"address"}],"name":"isAuthorized","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"inputs":[],"payable":false,"type":"constructor"}]
    | */
  > |contract Authorizable {
    | 
    |  address[] authorizers;
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'Authorizable':
    |   */
    |  function addAuthorized(address _addr) external onlyAuthorized {
  > |    authorizerIndex[_addr] = authorizers.length;
    |    authorizers.length++;
    |    authorizers[authorizers.length - 1] = _addr;
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'Authorizable':
    |    authorizerIndex[_addr] = authorizers.length;
    |    authorizers.length++;
  > |    authorizers[authorizers.length - 1] = _addr;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(101)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances. 
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint;
    | 
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(262)

[33mWarning[0m for LockedEther in contract 'ExchangeRate':
    | * [{"constant":false,"inputs":[{"name":"_symbol","type":"string"},{"name":"_rate","type":"uint256"}],"name":"updateRate","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"data","type":"uint256[]"}],"name":"updateRates","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_symbol","type":"string"}],"name":"getRate","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"bytes32"}],"name":"rates","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"newOwner","type":"address"}],"name":"transferOwnership","outputs":[],"payable":false,"type":"function"},{"anonymous":false,"inputs":[{"indexed":false,"name":"timestamp","type":"uint256"},{"indexed":false,"name":"symbol","type":"bytes32"},{"indexed":false,"name":"rate","type":"uint256"}],"name":"RateUpdated","type":"event"}]
    | */
  > |contract ExchangeRate is Ownable {
    | 
    |  event RateUpdated(uint timestamp, bytes32 symbol, uint rate);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'ExchangeRate':
    |  event RateUpdated(uint timestamp, bytes32 symbol, uint rate);
    | 
  > |  mapping(bytes32 => uint) public rates;
    | 
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'ExchangeRate':
    | */
    |contract Ownable {
  > |  address public owner;
    | 
    | 
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'ExchangeRate':
    |   * @param newOwner The address to transfer ownership to. 
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'ExchangeRate':
    |   * @param data an array that alternates sha3 hashes of the symbol and the corresponding rate . 
    |   */
  > |  function updateRates(uint[] data) public onlyOwner {
    |    if (data.length % 2 > 0)
    |      return;
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'ExchangeRate':
    |   * @param _symbol the symbol to be retrieved. 
    |   */
  > |  function getRate(string _symbol) public constant returns(uint) {
    |    return rates[sha3(_symbol)];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'ExchangeRate':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(39)

[33mWarning[0m for LockedEther in contract 'FoxToken':
    | * [{"constant":true,"inputs":[],"name":"mintingFinished","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_spender","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"startTrading","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_amount","type":"uint256"}],"name":"mint","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"tradingStarted","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_owner","type":"address"}],"name":"balanceOf","outputs":[{"name":"balance","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"finishMinting","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_owner","type":"address"},{"name":"_spender","type":"address"}],"name":"allowance","outputs":[{"name":"remaining","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"newOwner","type":"address"}],"name":"transferOwnership","outputs":[],"payable":false,"type":"function"},{"anonymous":false,"inputs":[{"indexed":true,"name":"to","type":"address"},{"indexed":false,"name":"value","type":"uint256"}],"name":"Mint","type":"event"},{"anonymous":false,"inputs":[],"name":"MintFinished","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"owner","type":"address"},{"indexed":true,"name":"spender","type":"address"},{"indexed":false,"name":"value","type":"uint256"}],"name":"Approval","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"from","type":"address"},{"indexed":true,"name":"to","type":"address"},{"indexed":false,"name":"value","type":"uint256"}],"name":"Transfer","type":"event"}]
    | */
  > |contract FoxToken is MintableToken {
    | 
    |  string public name = "Fox Token";
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'FoxToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'FoxToken':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'FoxToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'FoxToken':
    |    // if (_value > _allowance) throw;
    | 
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'FoxToken':
    | 
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'FoxToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'FoxToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) return;
    | 
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'FoxToken':
    |   */
    |  function mint(address _to, uint _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'FoxToken':
    |  function mint(address _to, uint _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'FoxToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'FoxToken':
    |   */
    |  function startTrading() onlyOwner {
  > |    tradingStarted = true;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(417)

[33mWarning[0m for DAOConstantGas in contract 'MainSale':
    |    uint tokens = rate.mul(msg.value).div(1 ether);
    |    token.mint(recipient, tokens);
  > |    require(multisigVault.send(msg.value));
    |    TokenSold(recipient, msg.value, tokens, rate);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(489)

[33mWarning[0m for LockedEther in contract 'MainSale':
    | * [{"constant":false,"inputs":[{"name":"_multisigVault","type":"address"}],"name":"setMultisigVault","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"authorizerIndex","type":"uint256"}],"name":"getAuthorizer","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"exchangeRate","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"altDeposits","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"recipient","type":"address"},{"name":"tokens","type":"uint256"}],"name":"authorizedCreateTokens","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"finishMinting","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_exchangeRate","type":"address"}],"name":"setExchangeRate","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_token","type":"address"}],"name":"retrieveTokens","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"totalAltDeposits","type":"uint256"}],"name":"setAltDeposit","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"start","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"recipient","type":"address"}],"name":"createTokens","outputs":[],"payable":true,"type":"function"},{"constant":false,"inputs":[{"name":"_addr","type":"address"}],"name":"addAuthorized","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"multisigVault","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_hardcap","type":"uint256"}],"name":"setHardCap","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"newOwner","type":"address"}],"name":"transferOwnership","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_start","type":"uint256"}],"name":"setStart","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"token","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_addr","type":"address"}],"name":"isAuthorized","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"payable":true,"type":"fallback"},{"anonymous":false,"inputs":[{"indexed":false,"name":"recipient","type":"address"},{"indexed":false,"name":"ether_amount","type":"uint256"},{"indexed":false,"name":"pay_amount","type":"uint256"},{"indexed":false,"name":"exchangerate","type":"uint256"}],"name":"TokenSold","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"name":"recipient","type":"address"},{"indexed":false,"name":"pay_amount","type":"uint256"}],"name":"AuthorizedCreate","type":"event"},{"anonymous":false,"inputs":[],"name":"MainSaleClosed","type":"event"}]
    | */
  > |contract MainSale is Ownable, Authorizable {
    |  using SafeMath for uint;
    |  event TokenSold(address recipient, uint ether_amount, uint pay_amount, uint exchangerate);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(449)

[31mViolation[0m for TODReceiver in contract 'MainSale':
    |    uint tokens = rate.mul(msg.value).div(1 ether);
    |    token.mint(recipient, tokens);
  > |    require(multisigVault.send(msg.value));
    |    TokenSold(recipient, msg.value, tokens, rate);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(489)

[33mWarning[0m for UnhandledException in contract 'MainSale':
    |   */
    |  function createTokens(address recipient) public isUnderHardCap saleIsOn payable {
  > |    uint rate = exchangeRate.getRate("ETH");
    |    uint tokens = rate.mul(msg.value).div(1 ether);
    |    token.mint(recipient, tokens);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(486)

[33mWarning[0m for UnhandledException in contract 'MainSale':
    |    uint rate = exchangeRate.getRate("ETH");
    |    uint tokens = rate.mul(msg.value).div(1 ether);
  > |    token.mint(recipient, tokens);
    |    require(multisigVault.send(msg.value));
    |    TokenSold(recipient, msg.value, tokens, rate);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(488)

[33mWarning[0m for UnhandledException in contract 'MainSale':
    |    uint tokens = rate.mul(msg.value).div(1 ether);
    |    token.mint(recipient, tokens);
  > |    require(multisigVault.send(msg.value));
    |    TokenSold(recipient, msg.value, tokens, rate);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(489)

[33mWarning[0m for UnhandledException in contract 'MainSale':
    |   */
    |  function authorizedCreateTokens(address recipient, uint tokens) public onlyAuthorized {
  > |    token.mint(recipient, tokens);
    |    AuthorizedCreate(recipient, tokens);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(508)

[33mWarning[0m for UnhandledException in contract 'MainSale':
    |   */
    |  function finishMinting() public onlyOwner {
  > |    uint issuedTokenSupply = token.totalSupply();
    |    uint restrictedTokens = issuedTokenSupply.mul(49).div(51);
    |    token.mint(multisigVault, restrictedTokens);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(553)

[33mWarning[0m for UnhandledException in contract 'MainSale':
    |    uint issuedTokenSupply = token.totalSupply();
    |    uint restrictedTokens = issuedTokenSupply.mul(49).div(51);
  > |    token.mint(multisigVault, restrictedTokens);
    |    token.finishMinting();
    |    token.transferOwnership(owner);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(555)

[33mWarning[0m for UnhandledException in contract 'MainSale':
    |    uint restrictedTokens = issuedTokenSupply.mul(49).div(51);
    |    token.mint(multisigVault, restrictedTokens);
  > |    token.finishMinting();
    |    token.transferOwnership(owner);
    |    MainSaleClosed();
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(556)

[33mWarning[0m for UnhandledException in contract 'MainSale':
    |    token.mint(multisigVault, restrictedTokens);
    |    token.finishMinting();
  > |    token.transferOwnership(owner);
    |    MainSaleClosed();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(557)

[33mWarning[0m for UnhandledException in contract 'MainSale':
    |  function retrieveTokens(address _token) public onlyOwner {
    |    ERC20 token = ERC20(_token);
  > |    token.transfer(multisigVault, token.balanceOf(this));
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(567)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MainSale':
    |   */
    |  function createTokens(address recipient) public isUnderHardCap saleIsOn payable {
  > |    uint rate = exchangeRate.getRate("ETH");
    |    uint tokens = rate.mul(msg.value).div(1 ether);
    |    token.mint(recipient, tokens);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(486)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MainSale':
    |    uint rate = exchangeRate.getRate("ETH");
    |    uint tokens = rate.mul(msg.value).div(1 ether);
  > |    token.mint(recipient, tokens);
    |    require(multisigVault.send(msg.value));
    |    TokenSold(recipient, msg.value, tokens, rate);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(488)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MainSale':
    |    uint tokens = rate.mul(msg.value).div(1 ether);
    |    token.mint(recipient, tokens);
  > |    require(multisigVault.send(msg.value));
    |    TokenSold(recipient, msg.value, tokens, rate);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(489)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MainSale':
    |   */
    |  function authorizedCreateTokens(address recipient, uint tokens) public onlyAuthorized {
  > |    token.mint(recipient, tokens);
    |    AuthorizedCreate(recipient, tokens);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(508)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MainSale':
    |   */
    |  function finishMinting() public onlyOwner {
  > |    uint issuedTokenSupply = token.totalSupply();
    |    uint restrictedTokens = issuedTokenSupply.mul(49).div(51);
    |    token.mint(multisigVault, restrictedTokens);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(553)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MainSale':
    |    uint issuedTokenSupply = token.totalSupply();
    |    uint restrictedTokens = issuedTokenSupply.mul(49).div(51);
  > |    token.mint(multisigVault, restrictedTokens);
    |    token.finishMinting();
    |    token.transferOwnership(owner);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(555)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MainSale':
    |    uint restrictedTokens = issuedTokenSupply.mul(49).div(51);
    |    token.mint(multisigVault, restrictedTokens);
  > |    token.finishMinting();
    |    token.transferOwnership(owner);
    |    MainSaleClosed();
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(556)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MainSale':
    |    token.mint(multisigVault, restrictedTokens);
    |    token.finishMinting();
  > |    token.transferOwnership(owner);
    |    MainSaleClosed();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(557)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MainSale':
    |  function retrieveTokens(address _token) public onlyOwner {
    |    ERC20 token = ERC20(_token);
  > |    token.transfer(multisigVault, token.balanceOf(this));
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(567)

[31mViolation[0m for UnrestrictedWrite in contract 'MainSale':
    |   */
    |  function addAuthorized(address _addr) external onlyAuthorized {
  > |    authorizerIndex[_addr] = authorizers.length;
    |    authorizers.length++;
    |    authorizers[authorizers.length - 1] = _addr;
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'MainSale':
    |    authorizerIndex[_addr] = authorizers.length;
    |    authorizers.length++;
  > |    authorizers[authorizers.length - 1] = _addr;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'MainSale':
    | * [{"constant":false,"inputs":[{"name":"_multisigVault","type":"address"}],"name":"setMultisigVault","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"authorizerIndex","type":"uint256"}],"name":"getAuthorizer","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"exchangeRate","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"altDeposits","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"recipient","type":"address"},{"name":"tokens","type":"uint256"}],"name":"authorizedCreateTokens","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"finishMinting","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_exchangeRate","type":"address"}],"name":"setExchangeRate","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_token","type":"address"}],"name":"retrieveTokens","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"totalAltDeposits","type":"uint256"}],"name":"setAltDeposit","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"start","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"recipient","type":"address"}],"name":"createTokens","outputs":[],"payable":true,"type":"function"},{"constant":false,"inputs":[{"name":"_addr","type":"address"}],"name":"addAuthorized","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"multisigVault","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_hardcap","type":"uint256"}],"name":"setHardCap","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"newOwner","type":"address"}],"name":"transferOwnership","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_start","type":"uint256"}],"name":"setStart","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"token","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_addr","type":"address"}],"name":"isAuthorized","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"payable":true,"type":"fallback"},{"anonymous":false,"inputs":[{"indexed":false,"name":"recipient","type":"address"},{"indexed":false,"name":"ether_amount","type":"uint256"},{"indexed":false,"name":"pay_amount","type":"uint256"},{"indexed":false,"name":"exchangerate","type":"uint256"}],"name":"TokenSold","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"name":"recipient","type":"address"},{"indexed":false,"name":"pay_amount","type":"uint256"}],"name":"AuthorizedCreate","type":"event"},{"anonymous":false,"inputs":[],"name":"MainSaleClosed","type":"event"}]
    | */
  > |contract MainSale is Ownable, Authorizable {
    |  using SafeMath for uint;
    |  event TokenSold(address recipient, uint ether_amount, uint pay_amount, uint exchangerate);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(449)

[33mWarning[0m for UnrestrictedWrite in contract 'MainSale':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'MainSale':
    |   */
    |  function setAltDeposit(uint totalAltDeposits) public onlyOwner {
  > |    altDeposits = totalAltDeposits;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'MainSale':
    |   */
    |  function setHardCap(uint _hardcap) public onlyOwner {
  > |    hardcap = _hardcap;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(517)

[33mWarning[0m for UnrestrictedWrite in contract 'MainSale':
    |   */
    |  function setStart(uint _start) public onlyOwner {
  > |    start = _start;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(525)

[33mWarning[0m for UnrestrictedWrite in contract 'MainSale':
    |  function setMultisigVault(address _multisigVault) public onlyOwner {
    |    if (_multisigVault != address(0)) {
  > |      multisigVault = _multisigVault;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(534)

[33mWarning[0m for UnrestrictedWrite in contract 'MainSale':
    |   */
    |  function setExchangeRate(address _exchangeRate) public onlyOwner {
  > |    exchangeRate = ExchangeRate(_exchangeRate);
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(543)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    | 
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint value);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // if (_value > _allowance) throw;
    | 
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    | 
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) return;
    | 
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(383)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions". 
    | */
  > |contract Ownable {
    |  address public owner;
    | 
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    | 
    | 
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to. 
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(39)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(159)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is BasicToken, ERC20 {
    | 
    |  mapping (address => mapping (address => uint)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) return;
    | 
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x67499a8bcdd401ee18c1f8a62c903edbc1883954.sol(324)


