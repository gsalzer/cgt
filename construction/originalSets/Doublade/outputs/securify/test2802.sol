Processing contract: /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol:Airdrop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol:SMEBankingPlatformAirdrop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol:SMEBankingPlatformToken
[31mViolation[0m for LockedEther in contract 'Airdrop':
    |
    |
  > |contract Airdrop is Ownable {
    |  uint256 airdropAmount = 10000 * 10 ** 18;
    |
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'Airdrop':
    |  SMEBankingPlatformToken public token;
    |
  > |  mapping(address=>bool) public participated;
    |
    |  mapping(address=>bool) public whitelisted;
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'Airdrop':
    |  mapping(address=>bool) public participated;
    |
  > |  mapping(address=>bool) public whitelisted;
    |
    |  event TokenAirdrop(address indexed beneficiary, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Airdrop':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Airdrop':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Airdrop':
    |  uint256 airdropAmount = 10000 * 10 ** 18;
    |
  > |  SMEBankingPlatformToken public token;
    |
    |  mapping(address=>bool) public participated;
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Airdrop':
    |  }
    |
  > |  function setAirdropAmount(uint256 _airdropAmount) public onlyOwner {
    |    require(_airdropAmount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Airdrop':
    |  }
    |
  > |  function getTokens(address beneficiary) public payable {
    |    require(beneficiary != 0x0);
    |    require(validPurchase(beneficiary));
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Airdrop':
    |  }
    |
  > |  function whitelistAddresses(address[] beneficiaries) public onlyOwner {
    |    for (uint i = 0 ; i < beneficiaries.length ; i++) {
    |      address beneficiary = beneficiaries[i];
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Airdrop':
    |  }
    |
  > |  function validPurchase(address beneficiary) internal view returns (bool) {
    |    bool isWhitelisted = whitelisted[beneficiary];
    |    bool hasParticipated = participated[beneficiary];
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(95)

[33mWarning[0m for UnhandledException in contract 'Airdrop':
    |    require(validPurchase(beneficiary));
    |
  > |    token.transfer(beneficiary, airdropAmount);
    |
    |    TokenAirdrop(beneficiary, airdropAmount);
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(79)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Airdrop':
    |    require(validPurchase(beneficiary));
    |
  > |    token.transfer(beneficiary, airdropAmount);
    |
    |    TokenAirdrop(beneficiary, airdropAmount);
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'Airdrop':
    |    TokenAirdrop(beneficiary, airdropAmount);
    |
  > |    participated[beneficiary] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'Airdrop':
    |      address beneficiary = beneficiaries[i];
    |      require(beneficiary != 0x0);
  > |      whitelisted[beneficiary] = true;
    |      AddressWhitelist(beneficiary);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdrop':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdrop':
    |    require(_airdropAmount > 0);
    |
  > |    airdropAmount = _airdropAmount;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(72)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(43)

[31mViolation[0m for LockedEther in contract 'SMEBankingPlatformAirdrop':
    |
    |
  > |contract SMEBankingPlatformAirdrop is Airdrop {
    |  function SMEBankingPlatformAirdrop(address _tokenAddress) public
    |    Airdrop(_tokenAddress)
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'SMEBankingPlatformAirdrop':
    |  SMEBankingPlatformToken public token;
    |
  > |  mapping(address=>bool) public participated;
    |
    |  mapping(address=>bool) public whitelisted;
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'SMEBankingPlatformAirdrop':
    |  mapping(address=>bool) public participated;
    |
  > |  mapping(address=>bool) public whitelisted;
    |
    |  event TokenAirdrop(address indexed beneficiary, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'SMEBankingPlatformAirdrop':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'SMEBankingPlatformAirdrop':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'SMEBankingPlatformAirdrop':
    |  uint256 airdropAmount = 10000 * 10 ** 18;
    |
  > |  SMEBankingPlatformToken public token;
    |
    |  mapping(address=>bool) public participated;
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'SMEBankingPlatformAirdrop':
    |  }
    |
  > |  function setAirdropAmount(uint256 _airdropAmount) public onlyOwner {
    |    require(_airdropAmount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'SMEBankingPlatformAirdrop':
    |  }
    |
  > |  function getTokens(address beneficiary) public payable {
    |    require(beneficiary != 0x0);
    |    require(validPurchase(beneficiary));
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'SMEBankingPlatformAirdrop':
    |  }
    |
  > |  function whitelistAddresses(address[] beneficiaries) public onlyOwner {
    |    for (uint i = 0 ; i < beneficiaries.length ; i++) {
    |      address beneficiary = beneficiaries[i];
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'SMEBankingPlatformAirdrop':
    |  }
    |
  > |  function validPurchase(address beneficiary) internal view returns (bool) {
    |    bool isWhitelisted = whitelisted[beneficiary];
    |    bool hasParticipated = participated[beneficiary];
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'SMEBankingPlatformAirdrop':
    |  }
    |
  > |  function drainRemainingTokens () public onlyOwner {
    |    token.transfer(owner, token.balanceOf(this));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(111)

[33mWarning[0m for UnhandledException in contract 'SMEBankingPlatformAirdrop':
    |    require(validPurchase(beneficiary));
    |
  > |    token.transfer(beneficiary, airdropAmount);
    |
    |    TokenAirdrop(beneficiary, airdropAmount);
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(79)

[33mWarning[0m for UnhandledException in contract 'SMEBankingPlatformAirdrop':
    |
    |  function drainRemainingTokens () public onlyOwner {
  > |    token.transfer(owner, token.balanceOf(this));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(112)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SMEBankingPlatformAirdrop':
    |    require(validPurchase(beneficiary));
    |
  > |    token.transfer(beneficiary, airdropAmount);
    |
    |    TokenAirdrop(beneficiary, airdropAmount);
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(79)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SMEBankingPlatformAirdrop':
    |
    |  function drainRemainingTokens () public onlyOwner {
  > |    token.transfer(owner, token.balanceOf(this));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'SMEBankingPlatformAirdrop':
    |    TokenAirdrop(beneficiary, airdropAmount);
    |
  > |    participated[beneficiary] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'SMEBankingPlatformAirdrop':
    |      address beneficiary = beneficiaries[i];
    |      require(beneficiary != 0x0);
  > |      whitelisted[beneficiary] = true;
    |      AddressWhitelist(beneficiary);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'SMEBankingPlatformAirdrop':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'SMEBankingPlatformAirdrop':
    |    require(_airdropAmount > 0);
    |
  > |    airdropAmount = _airdropAmount;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb81aa5339756c630491a6f06e086ac91667d3bc4.sol(72)


