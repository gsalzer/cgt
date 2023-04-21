Processing contract: /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol:BCDToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol:VestedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol:WhitelistsRegistration
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
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(71)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(7)

[33mWarning[0m for LockedEther in contract 'VestedToken':
    | * - token tradability delay
    | */
  > |contract VestedToken {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'VestedToken':
    |
    |        uint256 _allowance = allowed[_from][msg.sender];
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'VestedToken':
    |        uint256 _allowance = allowed[_from][msg.sender];
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'VestedToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |        
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'VestedToken':
    |    // approve ERC20 function
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'VestedToken':
    |    
    |    function privateTransfer (address _to, uint256 _value) private returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'VestedToken':
    |    function privateTransfer (address _to, uint256 _value) private returns (bool success) {
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(147)

[33mWarning[0m for LockedEther in contract 'WhitelistsRegistration':
    | * @dev This is an extension to add 2 levels whitelists to the crowdsale
    | */
  > |contract WhitelistsRegistration is Ownable {
    |    // List of whitelisted addresses for KYC under 10 ETH
    |    mapping(address => bool) silverWhiteList;
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(161)

[31mViolation[0m for MissingInputValidation in contract 'WhitelistsRegistration':
    |    
    |    // Return registration status of an specified address
  > |    function checkRegistrationStatus(address _address) public constant returns (WhiteListState) {
    |        if (goldWhiteList[_address]) { return WhiteListState.Gold; }
    |        if (silverWhiteList[_address]) { return WhiteListState.Silver; }
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'WhitelistsRegistration':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'WhitelistsRegistration':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'WhitelistsRegistration':
    |    }
    |    
  > |    address public whiteLister;
    |
    |    event SilverWhitelist(address indexed _address, bool _isRegistered);
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'WhitelistsRegistration':
    |    * @param _newWhiteLister The address to transfer whitelist to.
    |    */
  > |    function setWhitelister(address _newWhiteLister) public onlyOwnerOrWhiteLister {
    |      require(_newWhiteLister != address(0));
    |      SetWhitelister(_newWhiteLister);
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistsRegistration':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistsRegistration':
    |    // Change registration status for an address in the whitelist for KYC under 10 ETH
    |    function changeRegistrationStatusForSilverWhiteList(address _address, bool _isRegistered) public onlyOwnerOrWhiteLister {
  > |        silverWhiteList[_address] = _isRegistered;
    |        SilverWhitelist(_address, _isRegistered);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistsRegistration':
    |    // Change registration status for an address in the whitelist for KYC over 10 ETH
    |    function changeRegistrationStatusForGoldWhiteList(address _address, bool _isRegistered) public onlyOwnerOrWhiteLister {
  > |        goldWhiteList[_address] = _isRegistered;
    |        GoldWhitelist(_address, _isRegistered);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistsRegistration':
    |      require(_newWhiteLister != address(0));
    |      SetWhitelister(_newWhiteLister);
  > |      whiteLister = _newWhiteLister;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xacfa209fb73bf3dd5bbfb1101b9bc999c49062a5.sol(232)


