Processing contract: /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol:Authorizable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol:CoinCrowdExchangeRates
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol:Ownable
[33mWarning[0m for LockedEther in contract 'Authorizable':
    | * functions, this simplifies the implementation of "multiple user permissions".
    | */
  > |contract Authorizable is Ownable {
    |  mapping(address => bool) public authorized;
    |  
  at /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'Authorizable':
    | */
    |contract Authorizable is Ownable {
  > |  mapping(address => bool) public authorized;
    |  
    |  event AuthorizationSet(address indexed addressAuthorized, bool indexed authorization);
  at /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'Authorizable':
    |   * @param addressAuthorized The address to change authorization.
    |   */
  > |  function setAuthorized(address addressAuthorized, bool authorization) onlyOwner public {
    |    AuthorizationSet(addressAuthorized, authorization);
    |    authorized[addressAuthorized] = authorization;
  at /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Authorizable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Authorizable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Authorizable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Authorizable':
    |  function setAuthorized(address addressAuthorized, bool authorization) onlyOwner public {
    |    AuthorizationSet(addressAuthorized, authorization);
  > |    authorized[addressAuthorized] = authorization;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol(77)

[33mWarning[0m for LockedEther in contract 'CoinCrowdExchangeRates':
    |}
    |
  > |contract CoinCrowdExchangeRates is Ownable, Authorizable {
    |    uint256 public constant decimals = 18;
    |    mapping (string  => uint256) rate;
  at /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'CoinCrowdExchangeRates':
    | */
    |contract Authorizable is Ownable {
  > |  mapping(address => bool) public authorized;
    |  
    |  event AuthorizationSet(address indexed addressAuthorized, bool indexed authorization);
  at /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'CoinCrowdExchangeRates':
    |   * @param addressAuthorized The address to change authorization.
    |   */
  > |  function setAuthorized(address addressAuthorized, bool authorization) onlyOwner public {
    |    AuthorizationSet(addressAuthorized, authorization);
    |    authorized[addressAuthorized] = authorization;
  at /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'CoinCrowdExchangeRates':
    | */
    |contract Ownable {
  > |  address public owner;
    |  
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'CoinCrowdExchangeRates':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'CoinCrowdExchangeRates':
    |
    |contract CoinCrowdExchangeRates is Ownable, Authorizable {
  > |    uint256 public constant decimals = 18;
    |    mapping (string  => uint256) rate;
    |    
  at /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'CoinCrowdExchangeRates':
    |    mapping (string  => uint256) rate;
    |    
  > |    function readRate(string _currency) public view returns (uint256 oneEtherValue) {
    |        return rate[_currency];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'CoinCrowdExchangeRates':
    |    
    |    function writeRate(string _currency, uint256 oneEtherValue) onlyAuthorized public returns (bool result) {
  > |        rate[_currency] = oneEtherValue;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCrowdExchangeRates':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCrowdExchangeRates':
    |  function setAuthorized(address addressAuthorized, bool authorization) onlyOwner public {
    |    AuthorizationSet(addressAuthorized, authorization);
  > |    authorized[addressAuthorized] = authorization;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xaf0e27602eaa73fdf4849806d75bdfc77fb95217.sol(77)


