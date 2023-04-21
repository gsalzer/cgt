Processing contract: /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol:Bounty
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol:RealEstateCryptoFund
Processing contract: /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol:RealEstateCryptoFundBounty
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Bounty':
    |
    |
  > |contract Bounty is Ownable {
    |  uint256 public BountyAmount;
    |
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'Bounty':
    |  RealEstateCryptoFund public token;
    |
  > |  mapping(address=>bool) public participated;
    |
    |  event TokenBounty(address indexed beneficiary, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |
    |contract Bounty is Ownable {
  > |  uint256 public BountyAmount;
    |
    |  RealEstateCryptoFund public token;
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |  uint256 public BountyAmount;
    |
  > |  RealEstateCryptoFund public token;
    |
    |  mapping(address=>bool) public participated;
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |  }
    |
  > |  function setBountyAmount(uint256 _BountyAmount) public onlyOwner {
    |    require(_BountyAmount > 0);
    |    BountyAmount = _BountyAmount;
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |  }
    |
  > |  function getTokens(address beneficiary) public payable {
    |    require(beneficiary != address(0));
    |    require(validPurchase(beneficiary));
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |
    |  
  > |  function validPurchase(address beneficiary) internal view returns (bool) {
    |    bool hasParticipated = participated[beneficiary];
    |    return !hasParticipated;
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(85)

[33mWarning[0m for UnhandledException in contract 'Bounty':
    |    require(validPurchase(beneficiary));
    |    
  > |    token.transfer(beneficiary, BountyAmount);
    |
    |    emit TokenBounty(beneficiary, BountyAmount);
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bounty':
    |    require(validPurchase(beneficiary));
    |    
  > |    token.transfer(beneficiary, BountyAmount);
    |
    |    emit TokenBounty(beneficiary, BountyAmount);
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'Bounty':
    |    emit TokenBounty(beneficiary, BountyAmount);
    |
  > |    participated[beneficiary] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Bounty':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Bounty':
    |  function setBountyAmount(uint256 _BountyAmount) public onlyOwner {
    |    require(_BountyAmount > 0);
  > |    BountyAmount = _BountyAmount;
    |    emit BountyAmountUpdate(BountyAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(69)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(43)

[31mViolation[0m for LockedEther in contract 'RealEstateCryptoFundBounty':
    |
    |
  > |contract RealEstateCryptoFundBounty is Bounty {
    |  function RealEstateCryptoFundBounty (address _tokenAddress) public
    |    Bounty(_tokenAddress)
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateCryptoFundBounty':
    |  RealEstateCryptoFund public token;
    |
  > |  mapping(address=>bool) public participated;
    |
    |  event TokenBounty(address indexed beneficiary, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateCryptoFundBounty':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateCryptoFundBounty':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateCryptoFundBounty':
    |
    |contract Bounty is Ownable {
  > |  uint256 public BountyAmount;
    |
    |  RealEstateCryptoFund public token;
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateCryptoFundBounty':
    |  uint256 public BountyAmount;
    |
  > |  RealEstateCryptoFund public token;
    |
    |  mapping(address=>bool) public participated;
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateCryptoFundBounty':
    |  }
    |
  > |  function setBountyAmount(uint256 _BountyAmount) public onlyOwner {
    |    require(_BountyAmount > 0);
    |    BountyAmount = _BountyAmount;
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateCryptoFundBounty':
    |  }
    |
  > |  function getTokens(address beneficiary) public payable {
    |    require(beneficiary != address(0));
    |    require(validPurchase(beneficiary));
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateCryptoFundBounty':
    |
    |  
  > |  function validPurchase(address beneficiary) internal view returns (bool) {
    |    bool hasParticipated = participated[beneficiary];
    |    return !hasParticipated;
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateCryptoFundBounty':
    |  }
    |
  > |  function drainRemainingTokens () public onlyOwner {
    |    token.transfer(owner, token.balanceOf(this));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(99)

[33mWarning[0m for UnhandledException in contract 'RealEstateCryptoFundBounty':
    |    require(validPurchase(beneficiary));
    |    
  > |    token.transfer(beneficiary, BountyAmount);
    |
    |    emit TokenBounty(beneficiary, BountyAmount);
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(77)

[33mWarning[0m for UnhandledException in contract 'RealEstateCryptoFundBounty':
    |
    |  function drainRemainingTokens () public onlyOwner {
  > |    token.transfer(owner, token.balanceOf(this));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(100)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RealEstateCryptoFundBounty':
    |    require(validPurchase(beneficiary));
    |    
  > |    token.transfer(beneficiary, BountyAmount);
    |
    |    emit TokenBounty(beneficiary, BountyAmount);
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RealEstateCryptoFundBounty':
    |
    |  function drainRemainingTokens () public onlyOwner {
  > |    token.transfer(owner, token.balanceOf(this));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'RealEstateCryptoFundBounty':
    |    emit TokenBounty(beneficiary, BountyAmount);
    |
  > |    participated[beneficiary] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'RealEstateCryptoFundBounty':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'RealEstateCryptoFundBounty':
    |  function setBountyAmount(uint256 _BountyAmount) public onlyOwner {
    |    require(_BountyAmount > 0);
  > |    BountyAmount = _BountyAmount;
    |    emit BountyAmountUpdate(BountyAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb98de64d4dbe2956e80149e88ce9135bb05e9400.sol(69)


