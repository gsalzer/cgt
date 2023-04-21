Processing contract: /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol:IOwned
Processing contract: /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol:ISmartToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol:ITokenHolder
Processing contract: /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol:SmartToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol:TokenHolder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol:Utils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |    ERC20 Standard Token implementation
    |*/
  > |contract ERC20Token is IERC20Token, Utils {
    |    string public standard = 'Token 0.1';
    |    string public name = '';
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(197)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(203)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(204)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |        @return sum
    |    */
  > |    function safeAdd(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        uint256 z = _x + _y;
    |        assert(z >= _x);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |        @return difference
    |    */
  > |    function safeSub(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        assert(_x >= _y);
    |        return _x - _y;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |*/
    |contract ERC20Token is IERC20Token, Utils {
  > |    string public standard = 'Token 0.1';
    |    string public name = '';
    |    string public symbol = '';
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(198)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |contract ERC20Token is IERC20Token, Utils {
    |    string public standard = 'Token 0.1';
  > |    string public name = '';
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public standard = 'Token 0.1';
    |    string public name = '';
  > |    string public symbol = '';
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public name = '';
    |    string public symbol = '';
  > |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(201)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  > |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |        @return true if the approval was successful, false if it wasn't
    |    */
  > |    function approve(address _spender, uint256 _value)
    |        public
    |        validAddress(_spender)
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(280)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        returns (bool success)
    |    {
  > |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(238)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    {
    |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(239)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        returns (bool success)
    |    {
  > |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(260)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    {
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(261)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
    |
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(288)

[33mWarning[0m for LockedEther in contract 'Owned':
    |    Provides support and utilities for contract ownership
    |*/
  > |contract Owned is IOwned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(133)

[33mWarning[0m for LockedEther in contract 'SmartToken':
    |    'Owned' is specified here for readability reasons
    |*/
  > |contract SmartToken is ISmartToken, Owned, ERC20Token, TokenHolder {
    |    string public version = '0.3';
    |    bool public transfersEnabled = true;    // true if transfer/transferFrom are enabled, false if not
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(308)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(166)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(203)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(204)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |        @param _disable    true to disable transfers, false to enable them
    |    */
  > |    function disableTransfers(bool _disable) public ownerOnly {
    |        transfersEnabled = !_disable;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(359)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |        @param _freezeOrNot true means freeze, false means unfreeze
    |    */
  > |    function freeze(address _address, bool _freezeOrNot) public ownerOnly {
    |        isFrozen[_address] = _freezeOrNot;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(370)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |        @return true if the transfer was successful, false if it wasn't
    |    */
  > |    function transferFrom(address _from, address _to, uint256 _value)
    |        public
    |        transfersAllowed
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(446)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return sum
    |    */
  > |    function safeAdd(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        uint256 z = _x + _y;
    |        assert(z >= _x);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return difference
    |    */
  > |    function safeSub(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        assert(_x >= _y);
    |        return _x - _y;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |*/
    |contract ERC20Token is IERC20Token, Utils {
  > |    string public standard = 'Token 0.1';
    |    string public name = '';
    |    string public symbol = '';
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(198)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |contract ERC20Token is IERC20Token, Utils {
    |    string public standard = 'Token 0.1';
  > |    string public name = '';
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |    string public standard = 'Token 0.1';
    |    string public name = '';
  > |    string public symbol = '';
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |    string public name = '';
    |    string public symbol = '';
  > |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(201)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  > |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return true if the transfer was successful, false if it wasn't
    |    */
  > |    function transfer(address _to, uint256 _value)
    |        public
    |        validAddress(_to)
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return true if the transfer was successful, false if it wasn't
    |    */
  > |    function transferFrom(address _from, address _to, uint256 _value)
    |        public
    |        validAddress(_from)
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(254)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return true if the approval was successful, false if it wasn't
    |    */
  > |    function approve(address _spender, uint256 _value)
    |        public
    |        validAddress(_spender)
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(280)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |*/
    |contract SmartToken is ISmartToken, Owned, ERC20Token, TokenHolder {
  > |    string public version = '0.3';
    |    bool public transfersEnabled = true;    // true if transfer/transferFrom are enabled, false if not
    |
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(309)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |contract SmartToken is ISmartToken, Owned, ERC20Token, TokenHolder {
    |    string public version = '0.3';
  > |    bool public transfersEnabled = true;    // true if transfer/transferFrom are enabled, false if not
    |
    |    mapping (address => bool) isFrozen;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(310)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |
    |    mapping (address => bool) isFrozen;
  > |    uint256 public constant MAX_SUPPLY = 10000000000000000000000000000; // ten billion
    |
    |    // triggered when a smart token is deployed - the _token address is defined for forward compatibility, in case we want to trigger the event from a factory
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(313)

[33mWarning[0m for UnhandledException in contract 'SmartToken':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(173)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartToken':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(173)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        returns (bool success)
    |    {
  > |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(238)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |    {
    |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(239)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        returns (bool success)
    |    {
  > |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(260)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |    {
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(261)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(262)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        notReachCap(_amount)
    |    {
  > |        totalSupply = safeAdd(totalSupply, _amount);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(388)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |    {
    |        totalSupply = safeAdd(totalSupply, _amount);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _amount);
    |
    |        emit Issuance(_amount);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(389)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        // validate input
    |
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _amount);
    |        totalSupply = safeSub(totalSupply, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(406)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |
    |        balanceOf[_from] = safeSub(balanceOf[_from], _amount);
  > |        totalSupply = safeSub(totalSupply, _amount);
    |
    |        emit Transfer(_from, this, _amount);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
    |
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |    */
    |    function disableTransfers(bool _disable) public ownerOnly {
  > |        transfersEnabled = !_disable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |    */
    |    function freeze(address _address, bool _freezeOrNot) public ownerOnly {
  > |        isFrozen[_address] = _freezeOrNot;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        emit OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(133)

[33mWarning[0m for LockedEther in contract 'TokenHolder':
    |    the owner to send tokens that were sent to the contract by mistake back to their sender.
    |*/
  > |contract TokenHolder is ITokenHolder, Owned, Utils {
    |    /**
    |        @dev constructor
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(151)

[31mViolation[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(129)

[33mWarning[0m for UnhandledException in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(173)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        emit OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(133)

[33mWarning[0m for LockedEther in contract 'Utils':
    |    Utilities & Common Modifiers
    |*/
  > |contract Utils {
    |    /**
    |        constructor
  at /home/jiaming/mavs_srcs/contract@0xd33996d55fd5c5dabf5ec7eb24a94b57263de169.sol(6)


