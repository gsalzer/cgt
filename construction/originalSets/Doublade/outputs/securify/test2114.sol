Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol:Blacklist
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol:BlacklistInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol:Claimable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol:Contactable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol:XTRD
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic, Blacklist {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |     */
    |    function blacklist(address node) public onlyOwner {
  > |        blacklisted[node] = true;
    |        Blacklisted(node);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |     */
    |    function unblacklist(address node) public onlyOwner {
  > |        blacklisted[node] = false;
    |        Unblacklisted(node);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(156)

[33mWarning[0m for LockedEther in contract 'Blacklist':
    |}
    |
  > |contract Blacklist is BlacklistInterface, Ownable {
    |
    |    mapping (address => bool) blacklisted;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(138)

[31mViolation[0m for MissingInputValidation in contract 'Blacklist':
    |     * @param node The node to add to the blacklist.
    |     */
  > |    function blacklist(address node) public onlyOwner {
    |        blacklisted[node] = true;
    |        Blacklisted(node);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(146)

[31mViolation[0m for MissingInputValidation in contract 'Blacklist':
    |     * @param node The node to remove from the blacklist.
    |     */
  > |    function unblacklist(address node) public onlyOwner {
    |        blacklisted[node] = false;
    |        Unblacklisted(node);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(155)

[31mViolation[0m for MissingInputValidation in contract 'Blacklist':
    |    }
    |    
  > |    function isBanned(address node) onlyOwner returns (bool) {
    |        if (blacklisted[node]) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'Blacklist':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Blacklist':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'Blacklist':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Blacklist':
    |     */
    |    function blacklist(address node) public onlyOwner {
  > |        blacklisted[node] = true;
    |        Blacklisted(node);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'Blacklist':
    |     */
    |    function unblacklist(address node) public onlyOwner {
  > |        blacklisted[node] = false;
    |        Unblacklisted(node);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(156)

[33mWarning[0m for LockedEther in contract 'Claimable':
    | * This allows the new owner to accept the transfer.
    | */
  > |contract Claimable is Ownable {
    |  address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'Claimable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    pendingOwner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(189)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Claimable is Ownable {
  > |  address public pendingOwner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |   * @dev Allows the pendingOwner address to finalize the transfer.
    |   */
  > |  function claimOwnership() onlyPendingOwner public {
    |    OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |  function claimOwnership() onlyPendingOwner public {
    |    OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |    OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(199)

[31mViolation[0m for LockedEther in contract 'Contactable':
    | * contact information.
    | */
  > |contract Contactable is Ownable {
    |
    |  string public contactInformation;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'Contactable':
    | * contact information.
    | */
  > |contract Contactable is Ownable {
    |
    |  string public contactInformation;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Contactable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Contactable':
    | * contact information.
    | */
  > |contract Contactable is Ownable {
    |
    |  string public contactInformation;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(113)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is PausableToken {
    |
    |  event Mint(address indexed to, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(449)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) onlyPayloadSize(2) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) onlyPayloadSize(2) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    require(totalSupply_.add(_amount) <= limit);
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(470)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(totalSupply_.add(_amount) <= limit);
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(this), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(471)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(488)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function blacklist(address node) public onlyOwner {
  > |        blacklisted[node] = true;
    |        Blacklisted(node);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function unblacklist(address node) public onlyOwner {
  > |        blacklisted[node] = false;
    |        Unblacklisted(node);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(411)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(104)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(376)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(380)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(402)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(411)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) onlyPayloadSize(2) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) onlyPayloadSize(2) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function blacklist(address node) public onlyOwner {
  > |        blacklisted[node] = true;
    |        Blacklisted(node);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function unblacklist(address node) public onlyOwner {
  > |        blacklisted[node] = false;
    |        Unblacklisted(node);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(411)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
    |    assert(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(55)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) onlyPayloadSize(2) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) onlyPayloadSize(2) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function blacklist(address node) public onlyOwner {
  > |        blacklisted[node] = true;
    |        Blacklisted(node);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function unblacklist(address node) public onlyOwner {
  > |        blacklisted[node] = false;
    |        Unblacklisted(node);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(156)

[31mViolation[0m for LockedEther in contract 'XTRD':
    |}
    |
  > |contract XTRD is MintableToken, Claimable, Contactable {
    |  /*----------- ERC20 GLOBALS -----------*/
    |  string public constant name = "XTRD"; 
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(494)

[31mViolation[0m for UnrestrictedWrite in contract 'XTRD':
    |}
    |
  > |contract XTRD is MintableToken, Claimable, Contactable {
    |  /*----------- ERC20 GLOBALS -----------*/
    |  string public constant name = "XTRD"; 
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(494)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |   */
    |  function approve(address _spender, uint256 _value) onlyPayloadSize(2) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) onlyPayloadSize(2) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    require(totalSupply_.add(_amount) <= limit);
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(470)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |    require(totalSupply_.add(_amount) <= limit);
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(this), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(471)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(488)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |     */
    |    function blacklist(address node) public onlyOwner {
  > |        blacklisted[node] = true;
    |        Blacklisted(node);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |     */
    |    function unblacklist(address node) public onlyOwner {
  > |        blacklisted[node] = false;
    |        Unblacklisted(node);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |  function claimOwnership() onlyPendingOwner public {
    |    OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |    OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(411)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |}
    |
  > |contract XTRD is MintableToken, Claimable, Contactable {
    |  /*----------- ERC20 GLOBALS -----------*/
    |  string public constant name = "XTRD"; 
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(494)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |      require(reclaimableOwner == address(0));
    |
  > |      reclaimableOwner = msg.sender;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(517)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |   */
    |  function resetReclaim() public onlyReclaimableOwner {
  > |      reclaimableOwner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(524)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |
    |      // Erase any pending transfer.
  > |      pendingOwner = address(0);
    |
    |      // Transfer ownership.
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(535)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |      // Transfer ownership.
    |      OwnershipTransferred(owner, reclaimableOwner);
  > |      owner = reclaimableOwner;
    |
    |      // Reset reclaimableOwner.
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(539)

[33mWarning[0m for UnrestrictedWrite in contract 'XTRD':
    |
    |      // Reset reclaimableOwner.
  > |      reclaimableOwner = address(0);
    |
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8a4bc94944b2df58fc6d9cf108b8bd213df56972.sol(542)


