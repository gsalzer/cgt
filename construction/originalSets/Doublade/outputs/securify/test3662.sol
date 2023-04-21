Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:CappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:ContractReceiverInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:DetailedERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:FinalizableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:FriendsFingersBuilder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:FriendsFingersCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:FriendsFingersToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:SafeContract
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(159)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(196)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(514)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * as they arrive.
    | */
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(429)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(489)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(514)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(489)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(514)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(487)

[33mWarning[0m for LockedEther in contract 'FriendsFingersBuilder':
    | * @title FriendsFingersBuilder
    | */
  > |contract FriendsFingersBuilder is Pausable, SafeContract {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(876)

[31mViolation[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |     * @notice Owner can transfer out any accidentally sent ERC20 tokens
    |     */
  > |    function transferAnyERC20Token(address _tokenAddress, uint256 _tokens, address _beneficiary) public onlyOwner returns (bool success) {
    |        return ERC20Basic(_tokenAddress).transfer(_beneficiary, _tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    uint256 public friendsFingersRatePerMille = 50; //5%
    |    address public friendsFingersWallet;
  > |    mapping (address => bool) public enabledAddresses;
    |
    |    uint256 public crowdsaleCount = 0;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(886)

[31mViolation[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |
    |    uint256 public crowdsaleCount = 0;
  > |    mapping (uint256 => address) public crowdsaleList;
    |    mapping (address => address) public crowdsaleCreators;
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(889)

[31mViolation[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    uint256 public crowdsaleCount = 0;
    |    mapping (uint256 => address) public crowdsaleList;
  > |    mapping (address => address) public crowdsaleCreators;
    |
    |    modifier onlyOwnerOrEnabledAddress() {
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(890)

[31mViolation[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    // crowdsale utility methods
    |
  > |    function startCrowdsale(
    |        string _tokenName,
    |        string _tokenSymbol,
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(916)

[31mViolation[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    }
    |
  > |    function restartCrowdsale(
    |        address _ffCrowdsale,
    |        uint256 _cap,
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(970)

[31mViolation[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    }
    |
  > |    function closeCrowdsale(address _ffCrowdsale) onlyOwnerOrCreator(_ffCrowdsale) public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
    |        ffCrowdsale.finalize();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1019)

[31mViolation[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    }
    |
  > |    function updateCrowdsaleInfo(address _ffCrowdsale, string _crowdsaleInfo) onlyOwnerOrCreator(_ffCrowdsale) public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
    |        ffCrowdsale.updateCrowdsaleInfo(_crowdsaleInfo);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1030)

[31mViolation[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    // Only builder owner methods
    |
  > |    function changeEnabledAddressStatus(address _address, bool _status) onlyOwner public {
    |        require(_address != address(0));
    |        enabledAddresses[_address] = _status;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1037)

[31mViolation[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    }
    |
  > |    function setFriendsFingersRateForCrowdsale(address _ffCrowdsale, uint256 _newFriendsFingersRatePerMille) onlyOwner public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
    |        ffCrowdsale.setFriendsFingersRate(_newFriendsFingersRatePerMille);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1053)

[31mViolation[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    }
    |
  > |    function setFriendsFingersWalletForCrowdsale(address _ffCrowdsale, address _newFriendsFingersWallet) onlyOwner public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
    |        ffCrowdsale.setFriendsFingersWallet(_newFriendsFingersWallet);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1058)

[31mViolation[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    }
    |
  > |    function safeTokenWithdrawalFromCrowdsale(address _ffCrowdsale, address _tokenAddress, uint256 _tokens) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
    |        ffCrowdsale.transferAnyERC20Token(_tokenAddress, _tokens, friendsFingersWallet);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1080)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(605)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(627)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(635)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    | * @title FriendsFingersBuilder
    | */
  > |contract FriendsFingersBuilder is Pausable, SafeContract {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(876)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    event CrowdsaleClosed(address ffCrowdsale);
    |
  > |    uint public version = 1;
    |    string public website = "https://www.friendsfingers.com";
    |    uint256 public friendsFingersRatePerMille = 50; //5%
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(882)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |
    |    uint public version = 1;
  > |    string public website = "https://www.friendsfingers.com";
    |    uint256 public friendsFingersRatePerMille = 50; //5%
    |    address public friendsFingersWallet;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(883)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    uint public version = 1;
    |    string public website = "https://www.friendsfingers.com";
  > |    uint256 public friendsFingersRatePerMille = 50; //5%
    |    address public friendsFingersWallet;
    |    mapping (address => bool) public enabledAddresses;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(884)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    string public website = "https://www.friendsfingers.com";
    |    uint256 public friendsFingersRatePerMille = 50; //5%
  > |    address public friendsFingersWallet;
    |    mapping (address => bool) public enabledAddresses;
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(885)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    mapping (address => bool) public enabledAddresses;
    |
  > |    uint256 public crowdsaleCount = 0;
    |    mapping (uint256 => address) public crowdsaleList;
    |    mapping (address => address) public crowdsaleCreators;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(888)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    }
    |
  > |    function setDefaultFriendsFingersRate(uint256 _newFriendsFingersRatePerMille) onlyOwner public {
    |        require(_newFriendsFingersRatePerMille >= 0);
    |        require(_newFriendsFingersRatePerMille < friendsFingersRatePerMille);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1042)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    }
    |
  > |    function setMainWallet(address _newFriendsFingersWallet) onlyOwner public {
    |        require(_newFriendsFingersWallet != address(0));
    |        friendsFingersWallet = _newFriendsFingersWallet;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1048)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    // Emergency methods (only builder owner or enabled addresses)
    |
  > |    function pauseCrowdsale(address _ffCrowdsale) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
    |        ffCrowdsale.pause();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1065)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    }
    |
  > |    function unpauseCrowdsale(address _ffCrowdsale) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
    |        ffCrowdsale.unpause();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1070)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    }
    |
  > |    function blockCrowdsale(address _ffCrowdsale) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
    |        ffCrowdsale.blockCrowdsale();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1075)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    }
    |
  > |    function safeWithdrawalFromCrowdsale(address _ffCrowdsale) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
    |        ffCrowdsale.safeWithdrawal();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1085)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    }
    |
  > |    function setExpiredAndWithdraw(address _ffCrowdsale) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
    |        ffCrowdsale.setExpiredAndWithdraw();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1090)

[33mWarning[0m for MissingInputValidation in contract 'FriendsFingersBuilder':
    |    // Internal methods
    |
  > |    function addCrowdsaleToList(address ffCrowdsale) internal {
    |        crowdsaleList[crowdsaleCount] = ffCrowdsale;
    |        crowdsaleCreators[ffCrowdsale] = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1097)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |     */
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _tokens, address _beneficiary) public onlyOwner returns (bool success) {
  > |        return ERC20Basic(_tokenAddress).transfer(_beneficiary, _tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(77)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |
    |        if (_creatorSupply > 0) {
  > |            token.mint(_wallet, _creatorSupply);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(940)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |
    |        if (crowdsaleCount > 1) {
  > |            ffCrowdsale.pause();
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(960)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |        }
    |
  > |        token.transferOwnership(address(ffCrowdsale));
    |
    |        addCrowdsaleToList(address(ffCrowdsale));
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(963)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
    |        // can't restart twice
  > |        require(ffCrowdsale.nextRoundId() == 0);
    |        // can't restart if goal not reached or rate greater or equal old rate
    |        require(ffCrowdsale.goalReached());
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(981)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |        require(ffCrowdsale.nextRoundId() == 0);
    |        // can't restart if goal not reached or rate greater or equal old rate
  > |        require(ffCrowdsale.goalReached());
    |        require(_rate < ffCrowdsale.rate());
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(983)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |        // can't restart if goal not reached or rate greater or equal old rate
    |        require(ffCrowdsale.goalReached());
  > |        require(_rate < ffCrowdsale.rate());
    |
    |        ffCrowdsale.finalize();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(984)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |        require(_rate < ffCrowdsale.rate());
    |
  > |        ffCrowdsale.finalize();
    |
    |        crowdsaleCount++;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(986)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |
    |        crowdsaleCount++;
  > |        uint256 _round = ffCrowdsale.round();
    |        _round++;
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(989)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |        _round++;
    |
  > |        FriendsFingersToken token = ffCrowdsale.token();
    |
    |        FriendsFingersCrowdsale newFriendsFingersCrowdsale = new FriendsFingersCrowdsale(
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(992)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |            _endTime,
    |            _rate,
  > |            ffCrowdsale.wallet(),
    |            token,
    |            _crowdsaleInfo,
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1001)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |            _crowdsaleInfo,
    |            _round,
  > |            ffCrowdsale.id(),
    |            friendsFingersRatePerMille,
    |            friendsFingersWallet
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1005)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |        );
    |
  > |        token.transferOwnership(address(newFriendsFingersCrowdsale));
    |
    |        ffCrowdsale.setnextRoundId(crowdsaleCount);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1010)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |        token.transferOwnership(address(newFriendsFingersCrowdsale));
    |
  > |        ffCrowdsale.setnextRoundId(crowdsaleCount);
    |
    |        addCrowdsaleToList(address(newFriendsFingersCrowdsale));
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1012)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |    function closeCrowdsale(address _ffCrowdsale) onlyOwnerOrCreator(_ffCrowdsale) public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.finalize();
    |
    |        FriendsFingersToken token = ffCrowdsale.token();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1021)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |        ffCrowdsale.finalize();
    |
  > |        FriendsFingersToken token = ffCrowdsale.token();
    |        token.finishMinting();
    |        token.transferOwnership(crowdsaleCreators[_ffCrowdsale]);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1023)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |
    |        FriendsFingersToken token = ffCrowdsale.token();
  > |        token.finishMinting();
    |        token.transferOwnership(crowdsaleCreators[_ffCrowdsale]);
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1024)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |        FriendsFingersToken token = ffCrowdsale.token();
    |        token.finishMinting();
  > |        token.transferOwnership(crowdsaleCreators[_ffCrowdsale]);
    |
    |        CrowdsaleClosed(ffCrowdsale);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1025)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |    function updateCrowdsaleInfo(address _ffCrowdsale, string _crowdsaleInfo) onlyOwnerOrCreator(_ffCrowdsale) public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.updateCrowdsaleInfo(_crowdsaleInfo);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1032)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |    function setFriendsFingersRateForCrowdsale(address _ffCrowdsale, uint256 _newFriendsFingersRatePerMille) onlyOwner public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.setFriendsFingersRate(_newFriendsFingersRatePerMille);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1055)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |    function setFriendsFingersWalletForCrowdsale(address _ffCrowdsale, address _newFriendsFingersWallet) onlyOwner public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.setFriendsFingersWallet(_newFriendsFingersWallet);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1060)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |    function pauseCrowdsale(address _ffCrowdsale) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.pause();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1067)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |    function unpauseCrowdsale(address _ffCrowdsale) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.unpause();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1072)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |    function blockCrowdsale(address _ffCrowdsale) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.blockCrowdsale();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1077)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |    function safeTokenWithdrawalFromCrowdsale(address _ffCrowdsale, address _tokenAddress, uint256 _tokens) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.transferAnyERC20Token(_tokenAddress, _tokens, friendsFingersWallet);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1082)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |    function safeWithdrawalFromCrowdsale(address _ffCrowdsale) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.safeWithdrawal();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1087)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersBuilder':
    |    function setExpiredAndWithdraw(address _ffCrowdsale) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.setExpiredAndWithdraw();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1092)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |     */
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _tokens, address _beneficiary) public onlyOwner returns (bool success) {
  > |        return ERC20Basic(_tokenAddress).transfer(_beneficiary, _tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |
    |        if (_creatorSupply > 0) {
  > |            token.mint(_wallet, _creatorSupply);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(940)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |
    |        if (crowdsaleCount > 1) {
  > |            ffCrowdsale.pause();
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(960)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |        }
    |
  > |        token.transferOwnership(address(ffCrowdsale));
    |
    |        addCrowdsaleToList(address(ffCrowdsale));
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(963)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
    |        // can't restart twice
  > |        require(ffCrowdsale.nextRoundId() == 0);
    |        // can't restart if goal not reached or rate greater or equal old rate
    |        require(ffCrowdsale.goalReached());
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(981)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |        require(ffCrowdsale.nextRoundId() == 0);
    |        // can't restart if goal not reached or rate greater or equal old rate
  > |        require(ffCrowdsale.goalReached());
    |        require(_rate < ffCrowdsale.rate());
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(983)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |        // can't restart if goal not reached or rate greater or equal old rate
    |        require(ffCrowdsale.goalReached());
  > |        require(_rate < ffCrowdsale.rate());
    |
    |        ffCrowdsale.finalize();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(984)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |        require(_rate < ffCrowdsale.rate());
    |
  > |        ffCrowdsale.finalize();
    |
    |        crowdsaleCount++;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(986)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |
    |        crowdsaleCount++;
  > |        uint256 _round = ffCrowdsale.round();
    |        _round++;
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(989)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |        _round++;
    |
  > |        FriendsFingersToken token = ffCrowdsale.token();
    |
    |        FriendsFingersCrowdsale newFriendsFingersCrowdsale = new FriendsFingersCrowdsale(
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(992)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |            _endTime,
    |            _rate,
  > |            ffCrowdsale.wallet(),
    |            token,
    |            _crowdsaleInfo,
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1001)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |            _crowdsaleInfo,
    |            _round,
  > |            ffCrowdsale.id(),
    |            friendsFingersRatePerMille,
    |            friendsFingersWallet
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1005)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |        );
    |
  > |        token.transferOwnership(address(newFriendsFingersCrowdsale));
    |
    |        ffCrowdsale.setnextRoundId(crowdsaleCount);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1010)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |        token.transferOwnership(address(newFriendsFingersCrowdsale));
    |
  > |        ffCrowdsale.setnextRoundId(crowdsaleCount);
    |
    |        addCrowdsaleToList(address(newFriendsFingersCrowdsale));
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1012)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |    function closeCrowdsale(address _ffCrowdsale) onlyOwnerOrCreator(_ffCrowdsale) public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.finalize();
    |
    |        FriendsFingersToken token = ffCrowdsale.token();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1021)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |        ffCrowdsale.finalize();
    |
  > |        FriendsFingersToken token = ffCrowdsale.token();
    |        token.finishMinting();
    |        token.transferOwnership(crowdsaleCreators[_ffCrowdsale]);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1023)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |
    |        FriendsFingersToken token = ffCrowdsale.token();
  > |        token.finishMinting();
    |        token.transferOwnership(crowdsaleCreators[_ffCrowdsale]);
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1024)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |        FriendsFingersToken token = ffCrowdsale.token();
    |        token.finishMinting();
  > |        token.transferOwnership(crowdsaleCreators[_ffCrowdsale]);
    |
    |        CrowdsaleClosed(ffCrowdsale);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1025)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |    function updateCrowdsaleInfo(address _ffCrowdsale, string _crowdsaleInfo) onlyOwnerOrCreator(_ffCrowdsale) public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.updateCrowdsaleInfo(_crowdsaleInfo);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1032)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |    function setFriendsFingersRateForCrowdsale(address _ffCrowdsale, uint256 _newFriendsFingersRatePerMille) onlyOwner public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.setFriendsFingersRate(_newFriendsFingersRatePerMille);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1055)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |    function setFriendsFingersWalletForCrowdsale(address _ffCrowdsale, address _newFriendsFingersWallet) onlyOwner public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.setFriendsFingersWallet(_newFriendsFingersWallet);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1060)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |    function pauseCrowdsale(address _ffCrowdsale) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.pause();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1067)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |    function unpauseCrowdsale(address _ffCrowdsale) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.unpause();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1072)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |    function blockCrowdsale(address _ffCrowdsale) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.blockCrowdsale();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1077)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |    function safeTokenWithdrawalFromCrowdsale(address _ffCrowdsale, address _tokenAddress, uint256 _tokens) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.transferAnyERC20Token(_tokenAddress, _tokens, friendsFingersWallet);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1082)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |    function safeWithdrawalFromCrowdsale(address _ffCrowdsale) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.safeWithdrawal();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1087)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersBuilder':
    |    function setExpiredAndWithdraw(address _ffCrowdsale) onlyOwnerOrEnabledAddress public {
    |        FriendsFingersCrowdsale ffCrowdsale = FriendsFingersCrowdsale(_ffCrowdsale);
  > |        ffCrowdsale.setExpiredAndWithdraw();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1092)

[31mViolation[0m for UnrestrictedWrite in contract 'FriendsFingersBuilder':
    |    ) whenNotPaused public returns (FriendsFingersCrowdsale)
    |    {
  > |        crowdsaleCount++;
    |        uint256 _round = 1;
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(930)

[31mViolation[0m for UnrestrictedWrite in contract 'FriendsFingersBuilder':
    |
    |    function addCrowdsaleToList(address ffCrowdsale) internal {
  > |        crowdsaleList[crowdsaleCount] = ffCrowdsale;
    |        crowdsaleCreators[ffCrowdsale] = msg.sender;
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1098)

[31mViolation[0m for UnrestrictedWrite in contract 'FriendsFingersBuilder':
    |    function addCrowdsaleToList(address ffCrowdsale) internal {
    |        crowdsaleList[crowdsaleCount] = ffCrowdsale;
  > |        crowdsaleCreators[ffCrowdsale] = msg.sender;
    |
    |        CrowdsaleStarted(ffCrowdsale);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1099)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersBuilder':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersBuilder':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(628)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersBuilder':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(636)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersBuilder':
    |        ffCrowdsale.finalize();
    |
  > |        crowdsaleCount++;
    |        uint256 _round = ffCrowdsale.round();
    |        _round++;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(988)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersBuilder':
    |    function changeEnabledAddressStatus(address _address, bool _status) onlyOwner public {
    |        require(_address != address(0));
  > |        enabledAddresses[_address] = _status;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1039)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersBuilder':
    |        require(_newFriendsFingersRatePerMille >= 0);
    |        require(_newFriendsFingersRatePerMille < friendsFingersRatePerMille);
  > |        friendsFingersRatePerMille = _newFriendsFingersRatePerMille;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1045)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersBuilder':
    |    function setMainWallet(address _newFriendsFingersWallet) onlyOwner public {
    |        require(_newFriendsFingersWallet != address(0));
  > |        friendsFingersWallet = _newFriendsFingersWallet;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(1050)

[31mViolation[0m for DAOConstantGas in contract 'FriendsFingersCrowdsale':
    |            }
    |
  > |            wallet.transfer(this.balance);
    |        } else {
    |            state = State.Refunding;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(853)

[33mWarning[0m for DAOConstantGas in contract 'FriendsFingersCrowdsale':
    |        uint256 depositedValue = deposited[investor];
    |        deposited[investor] = 0;
  > |        investor.transfer(depositedValue);
    |        Refunded(investor, depositedValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(761)

[33mWarning[0m for DAOConstantGas in contract 'FriendsFingersCrowdsale':
    |    function safeWithdrawal() onlyOwner public {
    |        require(now >= endTime + 1 years);
  > |        friendsFingersWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(806)

[33mWarning[0m for DAOConstantGas in contract 'FriendsFingersCrowdsale':
    |        require((state == State.Refunding || state == State.Blocked) && now >= endTime + 1 years);
    |        state = State.Expired;
  > |        friendsFingersWallet.transfer(this.balance);
    |        Expired();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(812)

[33mWarning[0m for LockedEther in contract 'FriendsFingersCrowdsale':
    | * @title FriendsFingersCrowdsale
    | */
  > |contract FriendsFingersCrowdsale is CappedCrowdsale, FinalizableCrowdsale, Pausable, SafeContract {
    |
    |    enum State { Active, Refunding, Closed, Blocked, Expired }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(646)

[31mViolation[0m for TODAmount in contract 'FriendsFingersCrowdsale':
    |    function safeWithdrawal() onlyOwner public {
    |        require(now >= endTime + 1 years);
  > |        friendsFingersWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(806)

[31mViolation[0m for TODAmount in contract 'FriendsFingersCrowdsale':
    |        require((state == State.Refunding || state == State.Blocked) && now >= endTime + 1 years);
    |        state = State.Expired;
  > |        friendsFingersWallet.transfer(this.balance);
    |        Expired();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(812)

[31mViolation[0m for TODAmount in contract 'FriendsFingersCrowdsale':
    |            }
    |
  > |            wallet.transfer(this.balance);
    |        } else {
    |            state = State.Refunding;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(853)

[33mWarning[0m for TODAmount in contract 'FriendsFingersCrowdsale':
    |            if (friendsFingersRatePerMille > 0) {
    |                uint256 friendsFingersFee = weiRaised.mul(friendsFingersRatePerMille).div(1000);
  > |                friendsFingersWallet.transfer(friendsFingersFee);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(850)

[31mViolation[0m for TODReceiver in contract 'FriendsFingersCrowdsale':
    |    function safeWithdrawal() onlyOwner public {
    |        require(now >= endTime + 1 years);
  > |        friendsFingersWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(806)

[31mViolation[0m for TODReceiver in contract 'FriendsFingersCrowdsale':
    |        require((state == State.Refunding || state == State.Blocked) && now >= endTime + 1 years);
    |        state = State.Expired;
  > |        friendsFingersWallet.transfer(this.balance);
    |        Expired();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(812)

[31mViolation[0m for TODReceiver in contract 'FriendsFingersCrowdsale':
    |            if (friendsFingersRatePerMille > 0) {
    |                uint256 friendsFingersFee = weiRaised.mul(friendsFingersRatePerMille).div(1000);
  > |                friendsFingersWallet.transfer(friendsFingersFee);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(850)

[33mWarning[0m for TODReceiver in contract 'FriendsFingersCrowdsale':
    |        uint256 depositedValue = deposited[investor];
    |        deposited[investor] = 0;
  > |        investor.transfer(depositedValue);
    |        Refunded(investor, depositedValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(761)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersCrowdsale':
    |     */
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _tokens, address _beneficiary) public onlyOwner returns (bool success) {
  > |        return ERC20Basic(_tokenAddress).transfer(_beneficiary, _tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(77)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersCrowdsale':
    |        weiRaised = weiRaised.add(weiAmount);
    |
  > |        token.mint(beneficiary, tokens);
    |        TokenPurchase(
    |            msg.sender,
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(741)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersCrowdsale':
    |        uint256 depositedValue = deposited[investor];
    |        deposited[investor] = 0;
  > |        investor.transfer(depositedValue);
    |        Refunded(investor, depositedValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(761)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersCrowdsale':
    |    function safeWithdrawal() onlyOwner public {
    |        require(now >= endTime + 1 years);
  > |        friendsFingersWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(806)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersCrowdsale':
    |        require((state == State.Refunding || state == State.Blocked) && now >= endTime + 1 years);
    |        state = State.Expired;
  > |        friendsFingersWallet.transfer(this.balance);
    |        Expired();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(812)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersCrowdsale':
    |            if (friendsFingersRatePerMille > 0) {
    |                uint256 friendsFingersFee = weiRaised.mul(friendsFingersRatePerMille).div(1000);
  > |                friendsFingersWallet.transfer(friendsFingersFee);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(850)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersCrowdsale':
    |            }
    |
  > |            wallet.transfer(this.balance);
    |        } else {
    |            state = State.Refunding;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(853)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersCrowdsale':
    |        if (friendsFingersRatePerMille > 0) {
    |            uint256 friendsFingersSupply = cap.mul(rate).mul(friendsFingersRatePerMille).div(1000);
  > |            token.mint(owner, friendsFingersSupply);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(861)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersCrowdsale':
    |        }
    |
  > |        token.transferOwnership(owner);
    |
    |        super.finalization();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(864)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersCrowdsale':
    |     */
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _tokens, address _beneficiary) public onlyOwner returns (bool success) {
  > |        return ERC20Basic(_tokenAddress).transfer(_beneficiary, _tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersCrowdsale':
    |        weiRaised = weiRaised.add(weiAmount);
    |
  > |        token.mint(beneficiary, tokens);
    |        TokenPurchase(
    |            msg.sender,
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(741)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersCrowdsale':
    |    function safeWithdrawal() onlyOwner public {
    |        require(now >= endTime + 1 years);
  > |        friendsFingersWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(806)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersCrowdsale':
    |        require((state == State.Refunding || state == State.Blocked) && now >= endTime + 1 years);
    |        state = State.Expired;
  > |        friendsFingersWallet.transfer(this.balance);
    |        Expired();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(812)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersCrowdsale':
    |            if (friendsFingersRatePerMille > 0) {
    |                uint256 friendsFingersFee = weiRaised.mul(friendsFingersRatePerMille).div(1000);
  > |                friendsFingersWallet.transfer(friendsFingersFee);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(850)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersCrowdsale':
    |            }
    |
  > |            wallet.transfer(this.balance);
    |        } else {
    |            state = State.Refunding;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(853)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersCrowdsale':
    |        if (friendsFingersRatePerMille > 0) {
    |            uint256 friendsFingersSupply = cap.mul(rate).mul(friendsFingersRatePerMille).div(1000);
  > |            token.mint(owner, friendsFingersSupply);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(861)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersCrowdsale':
    |        }
    |
  > |        token.transferOwnership(owner);
    |
    |        super.finalization();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(864)

[31mViolation[0m for UnrestrictedWrite in contract 'FriendsFingersCrowdsale':
    | * @title FriendsFingersCrowdsale
    | */
  > |contract FriendsFingersCrowdsale is CappedCrowdsale, FinalizableCrowdsale, Pausable, SafeContract {
    |
    |    enum State { Active, Refunding, Closed, Blocked, Expired }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(646)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersCrowdsale':
    |    Finalized();
    |
  > |    isFinalized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(583)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersCrowdsale':
    |
    |        // update state
  > |        weiRaised = weiRaised.add(weiAmount);
    |
    |        token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(739)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersCrowdsale':
    |
    |        uint256 depositedValue = deposited[investor];
  > |        deposited[investor] = 0;
    |        investor.transfer(depositedValue);
    |        Refunded(investor, depositedValue);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(760)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersCrowdsale':
    |    function forwardFunds() internal {
    |        if (deposited[msg.sender] == 0) {
  > |            investorCount++;
    |        }
    |        deposited[msg.sender] = deposited[msg.sender].add(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(835)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersCrowdsale':
    |            investorCount++;
    |        }
  > |        deposited[msg.sender] = deposited[msg.sender].add(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(837)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersCrowdsale':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(628)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersCrowdsale':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(636)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersCrowdsale':
    | * @title FriendsFingersCrowdsale
    | */
  > |contract FriendsFingersCrowdsale is CappedCrowdsale, FinalizableCrowdsale, Pausable, SafeContract {
    |
    |    enum State { Active, Refunding, Closed, Blocked, Expired }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(646)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersCrowdsale':
    |    function blockCrowdsale() onlyOwner public {
    |        require(state == State.Active);
  > |        state = State.Blocked;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(784)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersCrowdsale':
    |
    |    function setnextRoundId(uint256 _nextRoundId) onlyOwner public {
  > |        nextRoundId = _nextRoundId;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(788)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersCrowdsale':
    |        require(_newFriendsFingersRatePerMille >= 0);
    |        require(_newFriendsFingersRatePerMille <= friendsFingersRatePerMille);
  > |        friendsFingersRatePerMille = _newFriendsFingersRatePerMille;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(794)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersCrowdsale':
    |    function setFriendsFingersWallet(address _friendsFingersWallet) onlyOwner public {
    |        require(_friendsFingersWallet != address(0));
  > |        friendsFingersWallet = _friendsFingersWallet;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(799)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersCrowdsale':
    |    function setExpiredAndWithdraw() onlyOwner public {
    |        require((state == State.Refunding || state == State.Blocked) && now >= endTime + 1 years);
  > |        state = State.Expired;
    |        friendsFingersWallet.transfer(this.balance);
    |        Expired();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(811)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersCrowdsale':
    |
    |        if (goalReached()) {
  > |            state = State.Closed;
    |            Closed();
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(845)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersCrowdsale':
    |            wallet.transfer(this.balance);
    |        } else {
  > |            state = State.Refunding;
    |            RefundsEnabled();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(855)

[33mWarning[0m for LockedEther in contract 'FriendsFingersToken':
    | * @title FriendsFingersToken
    | */
  > |contract FriendsFingersToken is DetailedERC20, MintableToken, BurnableToken, SafeContract {
    |
    |    address public builder;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(376)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersToken':
    |     */
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _tokens, address _beneficiary) public onlyOwner returns (bool success) {
  > |        return ERC20Basic(_tokenAddress).transfer(_beneficiary, _tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(77)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersToken':
    |        require(approve(_spender, _amount));
    |
  > |        ContractReceiverInterface(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(407)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersToken':
    |     */
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _tokens, address _beneficiary) public onlyOwner returns (bool success) {
  > |        return ERC20Basic(_tokenAddress).transfer(_beneficiary, _tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersToken':
    |        require(approve(_spender, _amount));
    |
  > |        ContractReceiverInterface(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(365)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(365)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(50)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(601)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(605)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(627)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(635)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(628)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(636)

[33mWarning[0m for LockedEther in contract 'SafeContract':
    |// File: contracts/utility/SafeContract.sol
    |
  > |contract SafeContract is Ownable {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'SafeContract':
    |     * @notice Owner can transfer out any accidentally sent ERC20 tokens
    |     */
  > |    function transferAnyERC20Token(address _tokenAddress, uint256 _tokens, address _beneficiary) public onlyOwner returns (bool success) {
    |        return ERC20Basic(_tokenAddress).transfer(_beneficiary, _tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'SafeContract':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SafeContract':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(47)

[33mWarning[0m for UnhandledException in contract 'SafeContract':
    |     */
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _tokens, address _beneficiary) public onlyOwner returns (bool success) {
  > |        return ERC20Basic(_tokenAddress).transfer(_beneficiary, _tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SafeContract':
    |     */
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _tokens, address _beneficiary) public onlyOwner returns (bool success) {
  > |        return ERC20Basic(_tokenAddress).transfer(_beneficiary, _tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeContract':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(50)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(87)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf01eab46ade80e599209681a5aaa13260ae8735c.sol(318)


