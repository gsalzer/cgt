Processing contract: /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol:CrowdsaleConfig
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol:RefundVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol:SelfKeyCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol:SelfKeyToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol:TokenTimelock
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
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(225)

[33mWarning[0m for LockedEther in contract 'CrowdsaleConfig':
    | * @dev Holds all constants for SelfKeyCrowdsale contract
    |*/
  > |contract CrowdsaleConfig {
    |    uint256 public constant TOKEN_DECIMALS = 18;
    |    uint256 public constant MIN_TOKEN_UNIT = 10 ** uint256(TOKEN_DECIMALS);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |*/
    |contract CrowdsaleConfig {
  > |    uint256 public constant TOKEN_DECIMALS = 18;
    |    uint256 public constant MIN_TOKEN_UNIT = 10 ** uint256(TOKEN_DECIMALS);
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |contract CrowdsaleConfig {
    |    uint256 public constant TOKEN_DECIMALS = 18;
  > |    uint256 public constant MIN_TOKEN_UNIT = 10 ** uint256(TOKEN_DECIMALS);
    |
    |    // Initial distribution amounts
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |
    |    // Initial distribution amounts
  > |    uint256 public constant TOTAL_SUPPLY_CAP = 6000000000 * MIN_TOKEN_UNIT;
    |
    |    // 33% of the total supply cap
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |
    |    // 33% of the total supply cap
  > |    uint256 public constant SALE_CAP = 1980000000 * MIN_TOKEN_UNIT;
    |
    |    // Minimum cap per purchaser on public sale = $100 in KEY (at $0.015)
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |
    |    // Minimum cap per purchaser on public sale = $100 in KEY (at $0.015)
  > |    uint256 public constant PURCHASER_MIN_TOKEN_CAP = 6666 * MIN_TOKEN_UNIT;
    |
    |    // Maximum cap per purchaser on first day of public sale = $3,000 in KEY (at $0.015)
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |
    |    // Maximum cap per purchaser on first day of public sale = $3,000 in KEY (at $0.015)
  > |    uint256 public constant PURCHASER_MAX_TOKEN_CAP_DAY1 = 200000 * MIN_TOKEN_UNIT;
    |
    |    // Maximum cap per purchaser on public sale = $18,000 in KEY (at $0.015)
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |
    |    // Maximum cap per purchaser on public sale = $18,000 in KEY (at $0.015)
  > |    uint256 public constant PURCHASER_MAX_TOKEN_CAP = 1200000 * MIN_TOKEN_UNIT;
    |
    |    // 16.5%
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |
    |    // 16.5%
  > |    uint256 public constant FOUNDATION_POOL_TOKENS = 876666666 * MIN_TOKEN_UNIT;
    |    uint256 public constant FOUNDATION_POOL_TOKENS_VESTED = 113333334 * MIN_TOKEN_UNIT;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |    // 16.5%
    |    uint256 public constant FOUNDATION_POOL_TOKENS = 876666666 * MIN_TOKEN_UNIT;
  > |    uint256 public constant FOUNDATION_POOL_TOKENS_VESTED = 113333334 * MIN_TOKEN_UNIT;
    |
    |    // Approx 33%
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |
    |    // Approx 33%
  > |    uint256 public constant COMMUNITY_POOL_TOKENS = 1980000000 * MIN_TOKEN_UNIT;
    |
    |    // Founders' distribution. Total = 16.5%
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |
    |    // Founders' distribution. Total = 16.5%
  > |    uint256 public constant FOUNDERS_TOKENS = 330000000 * MIN_TOKEN_UNIT;
    |    uint256 public constant FOUNDERS_TOKENS_VESTED_1 = 330000000 * MIN_TOKEN_UNIT;
    |    uint256 public constant FOUNDERS_TOKENS_VESTED_2 = 330000000 * MIN_TOKEN_UNIT;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |    // Founders' distribution. Total = 16.5%
    |    uint256 public constant FOUNDERS_TOKENS = 330000000 * MIN_TOKEN_UNIT;
  > |    uint256 public constant FOUNDERS_TOKENS_VESTED_1 = 330000000 * MIN_TOKEN_UNIT;
    |    uint256 public constant FOUNDERS_TOKENS_VESTED_2 = 330000000 * MIN_TOKEN_UNIT;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |    uint256 public constant FOUNDERS_TOKENS = 330000000 * MIN_TOKEN_UNIT;
    |    uint256 public constant FOUNDERS_TOKENS_VESTED_1 = 330000000 * MIN_TOKEN_UNIT;
  > |    uint256 public constant FOUNDERS_TOKENS_VESTED_2 = 330000000 * MIN_TOKEN_UNIT;
    |
    |    // 1% for legal advisors
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |
    |    // 1% for legal advisors
  > |    uint256 public constant LEGAL_EXPENSES_1_TOKENS = 54000000 * MIN_TOKEN_UNIT;
    |    uint256 public constant LEGAL_EXPENSES_2_TOKENS = 6000000 * MIN_TOKEN_UNIT;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |    // 1% for legal advisors
    |    uint256 public constant LEGAL_EXPENSES_1_TOKENS = 54000000 * MIN_TOKEN_UNIT;
  > |    uint256 public constant LEGAL_EXPENSES_2_TOKENS = 6000000 * MIN_TOKEN_UNIT;
    |
    |    // KEY price in USD (thousandths)
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |
    |    // KEY price in USD (thousandths)
  > |    uint256 public constant TOKEN_PRICE_THOUSANDTH = 15;  // $0.015 per KEY
    |
    |    // Contract wallet addresses for initial allocation
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |
    |    // Contract wallet addresses for initial allocation
  > |    address public constant CROWDSALE_WALLET_ADDR = 0xE0831b1687c9faD3447a517F9371E66672505dB0;
    |    address public constant FOUNDATION_POOL_ADDR = 0xD68947892Ef4D94Cdef7165b109Cf6Cd3f58A8e8;
    |    address public constant FOUNDATION_POOL_ADDR_VEST = 0xd0C24Bb82e71A44eA770e84A3c79979F9233308D;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |    // Contract wallet addresses for initial allocation
    |    address public constant CROWDSALE_WALLET_ADDR = 0xE0831b1687c9faD3447a517F9371E66672505dB0;
  > |    address public constant FOUNDATION_POOL_ADDR = 0xD68947892Ef4D94Cdef7165b109Cf6Cd3f58A8e8;
    |    address public constant FOUNDATION_POOL_ADDR_VEST = 0xd0C24Bb82e71A44eA770e84A3c79979F9233308D;
    |    address public constant COMMUNITY_POOL_ADDR = 0x0506c5485AE54aB14C598Ef16C459409E5d8Fc03;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |    address public constant CROWDSALE_WALLET_ADDR = 0xE0831b1687c9faD3447a517F9371E66672505dB0;
    |    address public constant FOUNDATION_POOL_ADDR = 0xD68947892Ef4D94Cdef7165b109Cf6Cd3f58A8e8;
  > |    address public constant FOUNDATION_POOL_ADDR_VEST = 0xd0C24Bb82e71A44eA770e84A3c79979F9233308D;
    |    address public constant COMMUNITY_POOL_ADDR = 0x0506c5485AE54aB14C598Ef16C459409E5d8Fc03;
    |    address public constant FOUNDERS_POOL_ADDR = 0x4452d6454e777743a5Ee233fbe873055008fF528;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |    address public constant FOUNDATION_POOL_ADDR = 0xD68947892Ef4D94Cdef7165b109Cf6Cd3f58A8e8;
    |    address public constant FOUNDATION_POOL_ADDR_VEST = 0xd0C24Bb82e71A44eA770e84A3c79979F9233308D;
  > |    address public constant COMMUNITY_POOL_ADDR = 0x0506c5485AE54aB14C598Ef16C459409E5d8Fc03;
    |    address public constant FOUNDERS_POOL_ADDR = 0x4452d6454e777743a5Ee233fbe873055008fF528;
    |    address public constant LEGAL_EXPENSES_ADDR_1 = 0xb57911380F13A0a9a6Ba6562248674B5f56D7BFE;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |    address public constant FOUNDATION_POOL_ADDR_VEST = 0xd0C24Bb82e71A44eA770e84A3c79979F9233308D;
    |    address public constant COMMUNITY_POOL_ADDR = 0x0506c5485AE54aB14C598Ef16C459409E5d8Fc03;
  > |    address public constant FOUNDERS_POOL_ADDR = 0x4452d6454e777743a5Ee233fbe873055008fF528;
    |    address public constant LEGAL_EXPENSES_ADDR_1 = 0xb57911380F13A0a9a6Ba6562248674B5f56D7BFE;
    |    address public constant LEGAL_EXPENSES_ADDR_2 = 0x9be281CdcF34B3A01468Ad1008139410Ba5BB2fB;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |    address public constant COMMUNITY_POOL_ADDR = 0x0506c5485AE54aB14C598Ef16C459409E5d8Fc03;
    |    address public constant FOUNDERS_POOL_ADDR = 0x4452d6454e777743a5Ee233fbe873055008fF528;
  > |    address public constant LEGAL_EXPENSES_ADDR_1 = 0xb57911380F13A0a9a6Ba6562248674B5f56D7BFE;
    |    address public constant LEGAL_EXPENSES_ADDR_2 = 0x9be281CdcF34B3A01468Ad1008139410Ba5BB2fB;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |    address public constant FOUNDERS_POOL_ADDR = 0x4452d6454e777743a5Ee233fbe873055008fF528;
    |    address public constant LEGAL_EXPENSES_ADDR_1 = 0xb57911380F13A0a9a6Ba6562248674B5f56D7BFE;
  > |    address public constant LEGAL_EXPENSES_ADDR_2 = 0x9be281CdcF34B3A01468Ad1008139410Ba5BB2fB;
    |
    |    // 6 months period, in seconds, for pre-commitment half-vesting
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleConfig':
    |
    |    // 6 months period, in seconds, for pre-commitment half-vesting
  > |    uint64 public constant PRECOMMITMENT_VESTING_SECONDS = 15552000;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(145)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(382)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(187)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(573)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(586)

[33mWarning[0m for LockedEther in contract 'RefundVault':
    | * and forwarding it if crowdsale is successful.
    | */
  > |contract RefundVault is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(545)

[31mViolation[0m for TODAmount in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(573)

[31mViolation[0m for TODReceiver in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(573)

[33mWarning[0m for TODReceiver in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(586)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(573)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |    uint256 depositedValue = deposited[investor];
    |    deposited[investor] = 0;
  > |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(586)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |    state = State.Closed;
    |    Closed();
  > |    wallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(573)

[31mViolation[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(state == State.Refunding);
    |    uint256 depositedValue = deposited[investor];
  > |    deposited[investor] = 0;
    |    investor.transfer(depositedValue);
    |    Refunded(investor, depositedValue);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(585)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function deposit(address investor) onlyOwner public payable {
    |    require(state == State.Active);
  > |    deposited[investor] = deposited[investor].add(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(566)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function close() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Closed;
    |    Closed();
    |    wallet.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(571)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |  function enableRefunds() onlyOwner public {
    |    require(state == State.Active);
  > |    state = State.Refunding;
    |    RefundsEnabled();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(578)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
    |    assert(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(77)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(8)

[33mWarning[0m for DAO in contract 'SelfKeyCrowdsale':
    |
    |        // Sends ETH contribution to the RefundVault and tokens to participant
  > |        vault.deposit.value(msg.value)(participant);
    |        token.safeTransfer(participant, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(931)

[33mWarning[0m for LockedEther in contract 'SelfKeyCrowdsale':
    | */
    |// solhint-disable-next-line max-states-count
  > |contract SelfKeyCrowdsale is Ownable, CrowdsaleConfig {
    |    using SafeMath for uint256;
    |    using SafeERC20 for SelfKeyToken;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(598)

[33mWarning[0m for UnhandledException in contract 'SelfKeyCrowdsale':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(79)

[33mWarning[0m for UnhandledException in contract 'SelfKeyCrowdsale':
    |        require(!goalReached());
    |
  > |        vault.refund(participant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(794)

[33mWarning[0m for UnhandledException in contract 'SelfKeyCrowdsale':
    |     */
    |    function releaseLockFounders1() public {
  > |        foundersTimelock1.release();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(808)

[33mWarning[0m for UnhandledException in contract 'SelfKeyCrowdsale':
    |
    |    function releaseLockFounders2() public {
  > |        foundersTimelock2.release();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(812)

[33mWarning[0m for UnhandledException in contract 'SelfKeyCrowdsale':
    |
    |    function releaseLockFoundation() public {
  > |        foundationTimelock.release();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(816)

[33mWarning[0m for UnhandledException in contract 'SelfKeyCrowdsale':
    |
    |        TokenTimelock timelock = TokenTimelock(vestedTokens[participant]);
  > |        timelock.release();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(826)

[33mWarning[0m for UnhandledException in contract 'SelfKeyCrowdsale':
    |        if (goalReached()) {
    |            burnUnsold();
  > |            vault.close();
    |            token.enableTransfers();
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(894)

[33mWarning[0m for UnhandledException in contract 'SelfKeyCrowdsale':
    |            burnUnsold();
    |            vault.close();
  > |            token.enableTransfers();
    |        } else {
    |            vault.enableRefunds();
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(895)

[33mWarning[0m for UnhandledException in contract 'SelfKeyCrowdsale':
    |            token.enableTransfers();
    |        } else {
  > |            vault.enableRefunds();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(897)

[33mWarning[0m for UnhandledException in contract 'SelfKeyCrowdsale':
    |
    |        // Sends ETH contribution to the RefundVault and tokens to participant
  > |        vault.deposit.value(msg.value)(participant);
    |        token.safeTransfer(participant, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(931)

[33mWarning[0m for UnhandledException in contract 'SelfKeyCrowdsale':
    |    function burnUnsold() internal {
    |        // All tokens held by this contract get burned
  > |        token.burn(token.balanceOf(this));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(948)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SelfKeyCrowdsale':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(79)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SelfKeyCrowdsale':
    |        require(!goalReached());
    |
  > |        vault.refund(participant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(794)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SelfKeyCrowdsale':
    |     */
    |    function releaseLockFounders1() public {
  > |        foundersTimelock1.release();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(808)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SelfKeyCrowdsale':
    |
    |    function releaseLockFounders2() public {
  > |        foundersTimelock2.release();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(812)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SelfKeyCrowdsale':
    |
    |    function releaseLockFoundation() public {
  > |        foundationTimelock.release();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(816)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SelfKeyCrowdsale':
    |
    |        TokenTimelock timelock = TokenTimelock(vestedTokens[participant]);
  > |        timelock.release();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(826)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SelfKeyCrowdsale':
    |        if (goalReached()) {
    |            burnUnsold();
  > |            vault.close();
    |            token.enableTransfers();
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(894)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SelfKeyCrowdsale':
    |            burnUnsold();
    |            vault.close();
  > |            token.enableTransfers();
    |        } else {
    |            vault.enableRefunds();
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(895)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SelfKeyCrowdsale':
    |            token.enableTransfers();
    |        } else {
  > |            vault.enableRefunds();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(897)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SelfKeyCrowdsale':
    |
    |        // Sends ETH contribution to the RefundVault and tokens to participant
  > |        vault.deposit.value(msg.value)(participant);
    |        token.safeTransfer(participant, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(931)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SelfKeyCrowdsale':
    |    function burnUnsold() internal {
    |        // All tokens held by this contract get burned
  > |        token.burn(token.balanceOf(this));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(948)

[31mViolation[0m for UnrestrictedWrite in contract 'SelfKeyCrowdsale':
    |     */
    |    function verifyKYC(address participant) public verifierOnly {
  > |        kycVerified[participant] = true;
    |
    |        VerifiedKYC(participant);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(834)

[31mViolation[0m for UnrestrictedWrite in contract 'SelfKeyCrowdsale':
    |        require(now < startTime); // solhint-disable-line not-rely-on-time
    |
  > |        kycVerified[beneficiary] = true;
    |
    |        uint256 tokens = tokensAllocated;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(854)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyCrowdsale':
    |
    |        ethPrice = _ethPrice;
  > |        rate = ethPrice.mul(1000).div(TOKEN_PRICE_THOUSANDTH);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(769)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyCrowdsale':
    |
    |        uint256 tokens = tokensAllocated;
  > |        totalPurchased = totalPurchased.add(tokens);
    |        tokensPurchased[beneficiary] = tokensPurchased[beneficiary].add(tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(857)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyCrowdsale':
    |        uint256 tokens = tokensAllocated;
    |        totalPurchased = totalPurchased.add(tokens);
  > |        tokensPurchased[beneficiary] = tokensPurchased[beneficiary].add(tokens);
    |
    |        if (halfVesting) {
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(858)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyCrowdsale':
    |            if (vestedTokens[beneficiary] == 0x0) {
    |                timelock = new TokenTimelock(token, beneficiary, endTimeLock);
  > |                vestedTokens[beneficiary] = address(timelock);
    |            } else {
    |                timelock = TokenTimelock(vestedTokens[beneficiary]);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(870)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyCrowdsale':
    |
    |        // Update state
  > |        tokensPurchased[participant] = tokensPurchased[participant].add(tokens);
    |        totalPurchased = totalPurchased.add(tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(917)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyCrowdsale':
    |        // Update state
    |        tokensPurchased[participant] = tokensPurchased[participant].add(tokens);
  > |        totalPurchased = totalPurchased.add(tokens);
    |
    |        require(totalPurchased <= SALE_CAP);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(918)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyCrowdsale':
    |     */
    |    function addVerifier (address _address) public onlyOwner {
  > |        isVerifier[_address] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(725)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyCrowdsale':
    |     */
    |    function removeVerifier (address _address) public onlyOwner {
  > |        isVerifier[_address] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(733)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyCrowdsale':
    |        require(_startTime < endTime);
    |
  > |        startTime = _startTime;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(745)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyCrowdsale':
    |        require(_endTime > startTime);
    |
  > |        endTime = _endTime;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(757)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyCrowdsale':
    |        require(_ethPrice > 0);
    |
  > |        ethPrice = _ethPrice;
    |        rate = ethPrice.mul(1000).div(TOKEN_PRICE_THOUSANDTH);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(768)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyCrowdsale':
    |        Finalized();
    |
  > |        isFinalized = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(783)

[33mWarning[0m for LockedEther in contract 'SelfKeyToken':
    | * @dev SelfKey Token implementation.
    | */
  > |contract SelfKeyToken is MintableToken {
    |    string public constant name = 'SelfKey'; //solhint-disable-line const-name-snakecase
    |    string public constant symbol = 'KEY'; //solhint-disable-line const-name-snakecase
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(402)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burned(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(480)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burned(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(481)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfKeyToken':
    |     */
    |    function enableTransfers() public onlyOwner {
  > |        transfersEnabled = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(469)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(332)

[33mWarning[0m for LockedEther in contract 'TokenTimelock':
    | * beneficiary to extract the tokens after a given release time
    | */
  > |contract TokenTimelock {
    |  using SafeERC20 for ERC20Basic;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(502)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(79)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |    require(now >= releaseTime);
    |
  > |    uint256 amount = token.balanceOf(this);
    |    require(amount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(527)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(79)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |    require(now >= releaseTime);
    |
  > |    uint256 amount = token.balanceOf(this);
    |    require(amount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x8d4b2cffe2dcbbf06eaa5920401db86ca5fb8177.sol(527)


