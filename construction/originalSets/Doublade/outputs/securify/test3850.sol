Processing contract: /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol:PermissionManager
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol:Registry
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(39)

[33mWarning[0m for LockedEther in contract 'PermissionManager':
    | * Manager that stores permitted addresses 
    | */
  > |contract PermissionManager is Ownable {
    |    mapping (address => bool) permittedAddresses;
    |
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'PermissionManager':
    |    mapping (address => bool) permittedAddresses;
    |
  > |    function addAddress(address newAddress) public onlyOwner {
    |        permittedAddresses[newAddress] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'PermissionManager':
    |    }
    |
  > |    function removeAddress(address remAddress) public onlyOwner {
    |        permittedAddresses[remAddress] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'PermissionManager':
    |    }
    |
  > |    function isPermitted(address pAddress) public view returns(bool) {
    |        if (permittedAddresses[pAddress]) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'PermissionManager':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'PermissionManager':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionManager':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionManager':
    |
    |    function addAddress(address newAddress) public onlyOwner {
  > |        permittedAddresses[newAddress] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionManager':
    |
    |    function removeAddress(address remAddress) public onlyOwner {
  > |        permittedAddresses[remAddress] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(55)

[33mWarning[0m for LockedEther in contract 'Registry':
    |}
    |
  > |contract Registry is Ownable {
    |
    |  struct ContributorData {
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |    uint contributionRNTB;
    |  }
  > |  mapping(address => ContributorData) public contributorList;
    |  mapping(uint => address) private contributorIndexes;
    |
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function isActiveContributor(address contributor) public view returns(bool) {
    |    return contributorList[contributor].isActive;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function removeContribution(address contributor) public onlyPermitted {
    |    contributorList[contributor].isActive = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function setCompleted(bool compl) public onlyPermitted {
    |    completed = compl;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function addContribution(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote ) public onlyPermitted {
    |    
    |    if (contributorList[_contributor].isActive == false) {
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function editContribution(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
    |    if (contributorList[_contributor].isActive == true) {
    |        contributorList[_contributor].contributionETH = _amount;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function addContributor(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
    |    contributorList[_contributor].isActive = true;
    |    contributorList[_contributor].contributionETH = _amount;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(145)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributionETH(address _contributor) public view returns (uint) {
    |      return contributorList[_contributor].contributionETH;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(157)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributionUSD(address _contributor) public view returns (uint) {
    |      return contributorList[_contributor].contributionUSD;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(161)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributionRNTB(address _contributor) public view returns (uint) {
    |      return contributorList[_contributor].contributionRNTB;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(165)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributionTokens(address _contributor) public view returns (uint) {
    |      return contributorList[_contributor].tokensIssued;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(169)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function addRNTBContribution(address _contributor, uint _amount) public onlyPermitted {
    |    if (contributorList[_contributor].isActive == false) {
    |        contributorList[_contributor].isActive = true;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(173)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributorByIndex(uint index) public view  returns (address) {
    |      return contributorIndexes[index];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    |
    |  /* Permission manager contract */
  > |  PermissionManager public permissionManager;
    |
    |  bool public completed;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    |  PermissionManager public permissionManager;
    |
  > |  bool public completed;
    |
    |  modifier onlyPermitted() {
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function setPermissionManager(address _permadr) public onlyOwner {
    |    require(_permadr != 0x0);
    |    permissionManager = PermissionManager(_permadr);
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributorAmount() public view returns(uint) {
    |      return nextContributorIndex;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(188)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |
    |  modifier onlyPermitted() {
  > |    require(permissionManager.isPermitted(msg.sender));
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(87)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |
    |  modifier onlyPermitted() {
  > |    require(permissionManager.isPermitted(msg.sender));
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |
    |  function removeContribution(address contributor) public onlyPermitted {
  > |    contributorList[contributor].isActive = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |
    |  function setCompleted(bool compl) public onlyPermitted {
  > |    completed = compl;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    
    |    if (contributorList[_contributor].isActive == false) {
  > |        contributorList[_contributor].isActive = true;
    |        contributorList[_contributor].contributionETH = _amount;
    |        contributorList[_contributor].contributionUSD = _amusd;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    if (contributorList[_contributor].isActive == false) {
    |        contributorList[_contributor].isActive = true;
  > |        contributorList[_contributor].contributionETH = _amount;
    |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].isActive = true;
    |        contributorList[_contributor].contributionETH = _amount;
  > |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
    |        contributorList[_contributor].quoteUSD = _quote;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].contributionETH = _amount;
    |        contributorList[_contributor].contributionUSD = _amusd;
  > |        contributorList[_contributor].tokensIssued = _tokens;
    |        contributorList[_contributor].quoteUSD = _quote;
    |
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
  > |        contributorList[_contributor].quoteUSD = _quote;
    |
    |        contributorIndexes[nextContributorIndex] = _contributor;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].quoteUSD = _quote;
    |
  > |        contributorIndexes[nextContributorIndex] = _contributor;
    |        nextContributorIndex++;
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |
    |        contributorIndexes[nextContributorIndex] = _contributor;
  > |        nextContributorIndex++;
    |    } else {
    |      contributorList[_contributor].contributionETH += _amount;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        nextContributorIndex++;
    |    } else {
  > |      contributorList[_contributor].contributionETH += _amount;
    |      contributorList[_contributor].contributionUSD += _amusd;
    |      contributorList[_contributor].tokensIssued += _tokens;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    } else {
    |      contributorList[_contributor].contributionETH += _amount;
  > |      contributorList[_contributor].contributionUSD += _amusd;
    |      contributorList[_contributor].tokensIssued += _tokens;
    |      contributorList[_contributor].quoteUSD = _quote;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |      contributorList[_contributor].contributionETH += _amount;
    |      contributorList[_contributor].contributionUSD += _amusd;
  > |      contributorList[_contributor].tokensIssued += _tokens;
    |      contributorList[_contributor].quoteUSD = _quote;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |      contributorList[_contributor].contributionUSD += _amusd;
    |      contributorList[_contributor].tokensIssued += _tokens;
  > |      contributorList[_contributor].quoteUSD = _quote;
    |    }
    |    ContributionAdded(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued, contributorList[_contributor].quoteUSD);
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |  function editContribution(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
    |    if (contributorList[_contributor].isActive == true) {
  > |        contributorList[_contributor].contributionETH = _amount;
    |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    if (contributorList[_contributor].isActive == true) {
    |        contributorList[_contributor].contributionETH = _amount;
  > |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
    |        contributorList[_contributor].quoteUSD = _quote;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].contributionETH = _amount;
    |        contributorList[_contributor].contributionUSD = _amusd;
  > |        contributorList[_contributor].tokensIssued = _tokens;
    |        contributorList[_contributor].quoteUSD = _quote;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
  > |        contributorList[_contributor].quoteUSD = _quote;
    |    }
    |     ContributionEdited(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued, contributorList[_contributor].quoteUSD);
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(140)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |
    |  function addContributor(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
  > |    contributorList[_contributor].isActive = true;
    |    contributorList[_contributor].contributionETH = _amount;
    |    contributorList[_contributor].contributionUSD = _amusd;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |  function addContributor(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
    |    contributorList[_contributor].isActive = true;
  > |    contributorList[_contributor].contributionETH = _amount;
    |    contributorList[_contributor].contributionUSD = _amusd;
    |    contributorList[_contributor].tokensIssued = _tokens;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    contributorList[_contributor].isActive = true;
    |    contributorList[_contributor].contributionETH = _amount;
  > |    contributorList[_contributor].contributionUSD = _amusd;
    |    contributorList[_contributor].tokensIssued = _tokens;
    |    contributorList[_contributor].quoteUSD = _quote;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    contributorList[_contributor].contributionETH = _amount;
    |    contributorList[_contributor].contributionUSD = _amusd;
  > |    contributorList[_contributor].tokensIssued = _tokens;
    |    contributorList[_contributor].quoteUSD = _quote;
    |    contributorIndexes[nextContributorIndex] = _contributor;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    contributorList[_contributor].contributionUSD = _amusd;
    |    contributorList[_contributor].tokensIssued = _tokens;
  > |    contributorList[_contributor].quoteUSD = _quote;
    |    contributorIndexes[nextContributorIndex] = _contributor;
    |    nextContributorIndex++;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    contributorList[_contributor].tokensIssued = _tokens;
    |    contributorList[_contributor].quoteUSD = _quote;
  > |    contributorIndexes[nextContributorIndex] = _contributor;
    |    nextContributorIndex++;
    |    ContributionAdded(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued, contributorList[_contributor].quoteUSD);
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    contributorList[_contributor].quoteUSD = _quote;
    |    contributorIndexes[nextContributorIndex] = _contributor;
  > |    nextContributorIndex++;
    |    ContributionAdded(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued, contributorList[_contributor].quoteUSD);
    | 
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |  function addRNTBContribution(address _contributor, uint _amount) public onlyPermitted {
    |    if (contributorList[_contributor].isActive == false) {
  > |        contributorList[_contributor].isActive = true;
    |        contributorList[_contributor].contributionRNTB = _amount;
    |        contributorIndexes[nextContributorIndex] = _contributor;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(175)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    if (contributorList[_contributor].isActive == false) {
    |        contributorList[_contributor].isActive = true;
  > |        contributorList[_contributor].contributionRNTB = _amount;
    |        contributorIndexes[nextContributorIndex] = _contributor;
    |        nextContributorIndex++;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(176)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].isActive = true;
    |        contributorList[_contributor].contributionRNTB = _amount;
  > |        contributorIndexes[nextContributorIndex] = _contributor;
    |        nextContributorIndex++;
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(177)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].contributionRNTB = _amount;
    |        contributorIndexes[nextContributorIndex] = _contributor;
  > |        nextContributorIndex++;
    |    } else {
    |      contributorList[_contributor].contributionETH += _amount;
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(178)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        nextContributorIndex++;
    |    } else {
  > |      contributorList[_contributor].contributionETH += _amount;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'Registry':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Registry':
    |  function setPermissionManager(address _permadr) public onlyOwner {
    |    require(_permadr != 0x0);
  > |    permissionManager = PermissionManager(_permadr);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd98d04b4935ad0e477f3fb41e0f61adc7647530.sol(100)


