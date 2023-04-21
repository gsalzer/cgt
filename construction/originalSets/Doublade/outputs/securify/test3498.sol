Processing contract: /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol:BlockableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol:StrikeToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol:StrikeTokenCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |    mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |     */
    |    function transfer(address _to, uint256 _value) public returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(145)

[33mWarning[0m for LockedEther in contract 'BlockableToken':
    |}
    |
  > |contract BlockableToken is Ownable{
    |    event Blocked(address blockedAddress);
    |    event UnBlocked(address unBlockedAddress);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(255)

[31mViolation[0m for MissingInputValidation in contract 'BlockableToken':
    |    event UnBlocked(address unBlockedAddress);
    |    //keep mapping of blocked addresses
  > |    mapping (address => bool) public blockedAddresses;
    |    modifier whenNotBlocked(){
    |      require(!blockedAddresses[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(259)

[31mViolation[0m for MissingInputValidation in contract 'BlockableToken':
    |    }
    |
  > |    function blockAddress(address toBeBlocked) onlyOwner public {
    |      blockedAddresses[toBeBlocked] = true;
    |      emit Blocked(toBeBlocked);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(265)

[31mViolation[0m for MissingInputValidation in contract 'BlockableToken':
    |      emit Blocked(toBeBlocked);
    |    }
  > |    function unBlockAddress(address toBeUnblocked) onlyOwner public {
    |      blockedAddresses[toBeUnblocked] = false;
    |      emit UnBlocked(toBeUnblocked);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(269)

[33mWarning[0m for MissingInputValidation in contract 'BlockableToken':
    | */
    |contract Ownable {
  > |    address public owner;
    |    /**
    |     * @dev The Ownable constructor sets the original `owner` of the contract to the sender
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BlockableToken':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockableToken':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockableToken':
    |
    |    function blockAddress(address toBeBlocked) onlyOwner public {
  > |      blockedAddresses[toBeBlocked] = true;
    |      emit Blocked(toBeBlocked);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockableToken':
    |    }
    |    function unBlockAddress(address toBeUnblocked) onlyOwner public {
  > |      blockedAddresses[toBeUnblocked] = false;
    |      emit UnBlocked(toBeUnblocked);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(270)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |    event Mint(address indexed to, uint256 amount);
    |    event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function transfer(address _to, uint256 _value) public returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function transfer(address _to, uint256 _value) public returns (bool) {
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        uint256 _allowance = allowed[_from][msg.sender];
    |
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function mint(address _to, uint256 _amount) public onlyOwner canMint returns (bool) {
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(0X0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function mint(address _to, uint256 _amount) public onlyOwner canMint returns (bool) {
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(0X0, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function finishMinting() public onlyOwner returns (bool) {
  > |        mintingFinished = true;
    |        emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(249)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |    /**
    |     * @dev The Ownable constructor sets the original `owner` of the contract to the sender
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(32)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |    address public owner;
    |    /**
    |     * @dev The Ownable constructor sets the original `owner` of the contract to the sender
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = true;
    |    /**
    |     * @dev modifier to allow actions only when the contract IS paused
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to pause, triggers stopped state
    |     */
  > |    function pause() public onlyOwner whenNotPaused returns (bool) {
    |        paused = true;
    |        emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() public onlyOwner whenPaused returns (bool) {
    |        paused = false;
    |        emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function pause() public onlyOwner whenNotPaused returns (bool) {
  > |        paused = true;
    |        emit Pause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function unpause() public onlyOwner whenPaused returns (bool) {
  > |        paused = false;
    |        emit Unpause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(75)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(85)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev https://github.com/ethereum/EIPs/issues/20
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function transfer(address _to, uint256 _value) public returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(197)

[33mWarning[0m for LockedEther in contract 'StrikeToken':
    |
    |
  > |contract StrikeToken is MintableToken, Pausable, BlockableToken{
    |    string public name = "Dimensions Strike Token";
    |    string public symbol = "DST";
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |     */
    |    function transfer(address _to, uint256 _value) public returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |    function transfer(address _to, uint256 _value) public returns (bool) {
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |        uint256 _allowance = allowed[_from][msg.sender];
    |
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |     */
    |    function mint(address _to, uint256 _amount) public onlyOwner canMint returns (bool) {
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(0X0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |    function mint(address _to, uint256 _amount) public onlyOwner canMint returns (bool) {
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(0X0, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |    // add a record to the END of the list
    |    function add(address whom, uint256 value) internal {
  > |        theList[whom] = XRec(true,0x0,last,value);
    |        if (last != 0x0) {
    |            theList[last].next = whom;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |        theList[whom] = XRec(true,0x0,last,value);
    |        if (last != 0x0) {
  > |            theList[last].next = whom;
    |        } else {
    |            first = whom;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |            theList[last].next = whom;
    |        } else {
  > |            first = whom;
    |        }
    |        last = whom;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |            first = whom;
    |        }
  > |        last = whom;
    |        emit Ev("add",whom,value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |    function remove(address whom) internal {
    |        if (first == whom) {
  > |            first = theList[whom].next;
    |            theList[whom] = XRec(false,0x0,0x0,0);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |        if (first == whom) {
    |            first = theList[whom].next;
  > |            theList[whom] = XRec(false,0x0,0x0,0);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |        address prev = theList[whom].prev;
    |        if (prev != 0x0) {
  > |            theList[prev].next = next;
    |        }
    |        if (next != 0x0) {
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |        }
    |        if (next != 0x0) {
  > |            theList[next].prev = prev;
    |        }
    |        theList[whom] =XRec(false,0x0,0x0,0);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |            theList[next].prev = prev;
    |        }
  > |        theList[whom] =XRec(false,0x0,0x0,0);
    |        emit Ev("remove",whom,0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |                add(whom,value);
    |            } else {
  > |                theList[whom].val = value;
    |                emit Ev("update",whom,value);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |     */
    |    function pause() public onlyOwner whenNotPaused returns (bool) {
  > |        paused = true;
    |        emit Pause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |     */
    |    function unpause() public onlyOwner whenPaused returns (bool) {
  > |        paused = false;
    |        emit Unpause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |     */
    |    function finishMinting() public onlyOwner returns (bool) {
  > |        mintingFinished = true;
    |        emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |
    |    function blockAddress(address toBeBlocked) onlyOwner public {
  > |      blockedAddresses[toBeBlocked] = true;
    |      emit Blocked(toBeBlocked);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |    }
    |    function unBlockAddress(address toBeUnblocked) onlyOwner public {
  > |      blockedAddresses[toBeUnblocked] = false;
    |      emit UnBlocked(toBeUnblocked);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeToken':
    |
    |    function changeOwner(address newOwner) public onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(390)

[33mWarning[0m for DAOConstantGas in contract 'StrikeTokenCrowdsale':
    |
    |        token.mint(beneficiary, tokens);
  > |        hardwareWallet.transfer(msg.value);
    |        emit TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(525)

[31mViolation[0m for TODReceiver in contract 'StrikeTokenCrowdsale':
    |
    |        token.mint(beneficiary, tokens);
  > |        hardwareWallet.transfer(msg.value);
    |        emit TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(525)

[33mWarning[0m for UnhandledException in contract 'StrikeTokenCrowdsale':
    |        tokensSold = finalTokenCount;
    |
  > |        token.mint(beneficiary, tokens);
    |        hardwareWallet.transfer(msg.value);
    |        emit TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(524)

[33mWarning[0m for UnhandledException in contract 'StrikeTokenCrowdsale':
    |
    |        token.mint(beneficiary, tokens);
  > |        hardwareWallet.transfer(msg.value);
    |        emit TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(525)

[33mWarning[0m for UnhandledException in contract 'StrikeTokenCrowdsale':
    |        dstTokenCount = dstTokenCount * etherToWei;
    |        advisorTokensGranted = advisorTokensGranted.add(dstTokenCount);
  > |        token.mint(beneficiary,dstTokenCount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(532)

[33mWarning[0m for UnhandledException in contract 'StrikeTokenCrowdsale':
    |        dstTokenCount = dstTokenCount * etherToWei;
    |        commonPoolTokensGranted = commonPoolTokensGranted.add(dstTokenCount);
  > |        token.mint(beneficiary,dstTokenCount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(538)

[33mWarning[0m for UnhandledException in contract 'StrikeTokenCrowdsale':
    |        require(hasEnded());
    |
  > |        uint issuedTokenSupply = token.totalSupply();
    |        uint publicTokens = issuedTokenSupply-advisorTokensGranted;
    |        if(publicTokens>60*advisorTokensGranted/40 ){
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(545)

[33mWarning[0m for UnhandledException in contract 'StrikeTokenCrowdsale':
    |        if(publicTokens>60*advisorTokensGranted/40 ){
    |          uint restrictedTokens=(publicTokens)*40/60-advisorTokensGranted;
  > |          token.mint(restrictedWallet, restrictedTokens);
    |          advisorTokensGranted=advisorTokensGranted+restrictedTokens;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(549)

[33mWarning[0m for UnhandledException in contract 'StrikeTokenCrowdsale':
    |        else if(publicTokens<60*advisorTokensGranted/40){
    |          uint256 deltaCommonPool=advisorTokensGranted*60/40-publicTokens;
  > |          token.mint(additionalTokensFromCommonPoolWallet,deltaCommonPool);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(554)

[33mWarning[0m for UnhandledException in contract 'StrikeTokenCrowdsale':
    |        }
    |
  > |        token.finishMinting();
    |        token.transferOwnership(owner);
    |        emit MainSaleClosed();
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(557)

[33mWarning[0m for UnhandledException in contract 'StrikeTokenCrowdsale':
    |
    |        token.finishMinting();
  > |        token.transferOwnership(owner);
    |        emit MainSaleClosed();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(558)

[33mWarning[0m for UnhandledException in contract 'StrikeTokenCrowdsale':
    |    }
    |    function pauseTrading() onlyOwner public{
  > |        token.pause();
    |    }
    |    function startTrading() onlyOwner public{
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(587)

[33mWarning[0m for UnhandledException in contract 'StrikeTokenCrowdsale':
    |    }
    |    function startTrading() onlyOwner public{
  > |        token.unpause();
    |    }
    |    function smartBlockAddress(address toBeBlocked) onlyOwner public{
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(590)

[33mWarning[0m for UnhandledException in contract 'StrikeTokenCrowdsale':
    |    }
    |    function smartBlockAddress(address toBeBlocked) onlyOwner public{
  > |        token.blockAddress(toBeBlocked);
    |    }
    |    function smartUnBlockAddress(address toBeUnblocked) onlyOwner public{
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(593)

[33mWarning[0m for UnhandledException in contract 'StrikeTokenCrowdsale':
    |    }
    |    function smartUnBlockAddress(address toBeUnblocked) onlyOwner public{
  > |        token.unBlockAddress(toBeUnblocked);
    |    }
    |    function changeTokenOwner(address newOwner) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(596)

[33mWarning[0m for UnhandledException in contract 'StrikeTokenCrowdsale':
    |    function changeTokenOwner(address newOwner) public onlyOwner {
    |        require(hasEnded());
  > |        token.changeOwner(newOwner);
    |    }
    |    function bulkGrantTokenAdvisors(address [] beneficiaries,uint256 [] granttokencounts) public onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(600)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrikeTokenCrowdsale':
    |        tokensSold = finalTokenCount;
    |
  > |        token.mint(beneficiary, tokens);
    |        hardwareWallet.transfer(msg.value);
    |        emit TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(524)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrikeTokenCrowdsale':
    |
    |        token.mint(beneficiary, tokens);
  > |        hardwareWallet.transfer(msg.value);
    |        emit TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(525)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrikeTokenCrowdsale':
    |        dstTokenCount = dstTokenCount * etherToWei;
    |        advisorTokensGranted = advisorTokensGranted.add(dstTokenCount);
  > |        token.mint(beneficiary,dstTokenCount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(532)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrikeTokenCrowdsale':
    |        dstTokenCount = dstTokenCount * etherToWei;
    |        commonPoolTokensGranted = commonPoolTokensGranted.add(dstTokenCount);
  > |        token.mint(beneficiary,dstTokenCount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(538)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrikeTokenCrowdsale':
    |        require(hasEnded());
    |
  > |        uint issuedTokenSupply = token.totalSupply();
    |        uint publicTokens = issuedTokenSupply-advisorTokensGranted;
    |        if(publicTokens>60*advisorTokensGranted/40 ){
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(545)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrikeTokenCrowdsale':
    |        if(publicTokens>60*advisorTokensGranted/40 ){
    |          uint restrictedTokens=(publicTokens)*40/60-advisorTokensGranted;
  > |          token.mint(restrictedWallet, restrictedTokens);
    |          advisorTokensGranted=advisorTokensGranted+restrictedTokens;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(549)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrikeTokenCrowdsale':
    |        else if(publicTokens<60*advisorTokensGranted/40){
    |          uint256 deltaCommonPool=advisorTokensGranted*60/40-publicTokens;
  > |          token.mint(additionalTokensFromCommonPoolWallet,deltaCommonPool);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(554)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrikeTokenCrowdsale':
    |        }
    |
  > |        token.finishMinting();
    |        token.transferOwnership(owner);
    |        emit MainSaleClosed();
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(557)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrikeTokenCrowdsale':
    |
    |        token.finishMinting();
  > |        token.transferOwnership(owner);
    |        emit MainSaleClosed();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(558)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrikeTokenCrowdsale':
    |    }
    |    function pauseTrading() onlyOwner public{
  > |        token.pause();
    |    }
    |    function startTrading() onlyOwner public{
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(587)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrikeTokenCrowdsale':
    |    }
    |    function startTrading() onlyOwner public{
  > |        token.unpause();
    |    }
    |    function smartBlockAddress(address toBeBlocked) onlyOwner public{
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(590)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrikeTokenCrowdsale':
    |    }
    |    function smartBlockAddress(address toBeBlocked) onlyOwner public{
  > |        token.blockAddress(toBeBlocked);
    |    }
    |    function smartUnBlockAddress(address toBeUnblocked) onlyOwner public{
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(593)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrikeTokenCrowdsale':
    |    }
    |    function smartUnBlockAddress(address toBeUnblocked) onlyOwner public{
  > |        token.unBlockAddress(toBeUnblocked);
    |    }
    |    function changeTokenOwner(address newOwner) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(596)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrikeTokenCrowdsale':
    |    function changeTokenOwner(address newOwner) public onlyOwner {
    |        require(hasEnded());
  > |        token.changeOwner(newOwner);
    |    }
    |    function bulkGrantTokenAdvisors(address [] beneficiaries,uint256 [] granttokencounts) public onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(600)

[31mViolation[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |}
    |
  > |contract StrikeTokenCrowdsale is Ownable, Pausable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |
    |        if (deposits[msg.sender] == 0) {
  > |            numberOfPurchasers++;
    |        }
    |        deposits[msg.sender] = weiAmount.add(deposits[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(502)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |            numberOfPurchasers++;
    |        }
  > |        deposits[msg.sender] = weiAmount.add(deposits[msg.sender]);
    |
    |        uint256 daysInSale = (now - startTimestamp) / (1 days);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |        uint256 finalTokenCount;
    |        finalTokenCount = tokens.add(tokensSold);
  > |        weiRaised = weiRaisedSoFar;
    |        tokensSold = finalTokenCount;
    |
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(521)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |        finalTokenCount = tokens.add(tokensSold);
    |        weiRaised = weiRaisedSoFar;
  > |        tokensSold = finalTokenCount;
    |
    |        token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(522)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |    function grantTokensAdvisors(address beneficiary,uint256 dstTokenCount) public onlyOwner{
    |        dstTokenCount = dstTokenCount * etherToWei;
  > |        advisorTokensGranted = advisorTokensGranted.add(dstTokenCount);
    |        token.mint(beneficiary,dstTokenCount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(531)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |    function grantTokensCommonPool(address beneficiary,uint256 dstTokenCount) public onlyOwner{
    |        dstTokenCount = dstTokenCount * etherToWei;
  > |        commonPoolTokensGranted = commonPoolTokensGranted.add(dstTokenCount);
    |        token.mint(beneficiary,dstTokenCount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(537)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |     */
    |    function pause() public onlyOwner whenNotPaused returns (bool) {
  > |        paused = true;
    |        emit Pause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |     */
    |    function unpause() public onlyOwner whenPaused returns (bool) {
  > |        paused = false;
    |        emit Unpause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |}
    |
  > |contract StrikeTokenCrowdsale is Ownable, Pausable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |
    |    function freeze() public onlyOwner{
  > |      frozen = true;
    |    }
    |    function unfreeze() public onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |    }
    |    function unfreeze() public onlyOwner{
  > |      frozen = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |    function setHardwareWallet(address _wallet) public onlyOwner {
    |        require(_wallet != 0x0);
  > |        hardwareWallet = _wallet;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |    function setRestrictedWallet(address _restrictedWallet) public onlyOwner {
    |        require(_restrictedWallet != 0x0);
  > |        restrictedWallet = _restrictedWallet;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(456)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |    function setAdditionalTokensFromCommonPoolWallet(address _wallet) public onlyOwner {
    |        require(_wallet != 0x0);
  > |        additionalTokensFromCommonPoolWallet = _wallet;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(461)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |    function setHardCapEther(uint256 newEtherAmt) public onlyOwner{
    |        require(newEtherAmt > 0);
  > |        hardCapEther = newEtherAmt;
    |        hardcap = hardCapEther * etherToWei;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |        require(newEtherAmt > 0);
    |        hardCapEther = newEtherAmt;
  > |        hardcap = hardCapEther * etherToWei;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(467)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |          uint restrictedTokens=(publicTokens)*40/60-advisorTokensGranted;
    |          token.mint(restrictedWallet, restrictedTokens);
  > |          advisorTokensGranted=advisorTokensGranted+restrictedTokens;
    |        }
    |        else if(publicTokens<60*advisorTokensGranted/40){
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(550)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |    function setRate(uint256 amount) onlyOwner public {
    |        require(amount>=0);
  > |        rate = amount;
    |    }
    |    function setBonus(uint256 [] amounts) onlyOwner public {
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(569)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |    function setWeiRaisedInPresale(uint256 amount) onlyOwner public {
    |        require(amount>=0);
  > |        weiRaisedInPresale = amount;
    |    }
    |    function setEndTimeStamp(uint256 end) onlyOwner public {
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(577)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |    function setEndTimeStamp(uint256 end) onlyOwner public {
    |        require(end>now);
  > |        endTimestamp = end;
    |    }
    |    function setStartTimeStamp(uint256 start) onlyOwner public {
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(581)

[33mWarning[0m for UnrestrictedWrite in contract 'StrikeTokenCrowdsale':
    |    }
    |    function setStartTimeStamp(uint256 start) onlyOwner public {
  > |        startTimestamp = start;
    |    }
    |    function pauseTrading() onlyOwner public{
  at /home/jiaming/mavs_srcs/contract@0xe55ff8ab3326752c93d695a60b50609e324e1cb0.sol(584)


