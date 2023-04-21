Processing contract: /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol:IOwned
Processing contract: /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol:ISmartToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol:ITokenHolder
Processing contract: /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol:SmartToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol:TokenHolder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol:Utils
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
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |        @return sum
    |    */
  > |    function safeAdd(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        uint256 z = _x + _y;
    |        assert(z >= _x);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |        @return difference
    |    */
  > |    function safeSub(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        assert(_x >= _y);
    |        return _x - _y;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |*/
    |contract ERC20Token is IERC20Token, Utils {
  > |    string public standard = 'Token 0.1';
    |    string public name = '';
    |    string public symbol = '';
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |contract ERC20Token is IERC20Token, Utils {
    |    string public standard = 'Token 0.1';
  > |    string public name = '';
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public standard = 'Token 0.1';
    |    string public name = '';
  > |    string public symbol = '';
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public name = '';
    |    string public symbol = '';
  > |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  > |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |        @return true if the approval was successful, false if it wasn't
    |    */
  > |    function approve(address _spender, uint256 _value)
    |        public
    |        validAddress(_spender)
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(184)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        returns (bool success)
    |    {
  > |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(142)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    {
    |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(143)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        returns (bool success)
    |    {
  > |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    {
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
    |
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(192)

[33mWarning[0m for LockedEther in contract 'Owned':
    |    Provides support and utilities for contract ownership
    |*/
  > |contract Owned is IOwned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(253)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(265)

[33mWarning[0m for LockedEther in contract 'SmartToken':
    |    'Owned' is specified here for readability reasons
    |*/
  > |contract SmartToken is ISmartToken, Owned, ERC20Token, TokenHolder {
    |    string public version = '0.3';
    |
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(320)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(302)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |        @param _disable    true to disable transfers, false to enable them
    |    */
  > |    function disableTransfers(bool _disable) public ownerOnly {
    |        transfersEnabled = !_disable;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(358)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return sum
    |    */
  > |    function safeAdd(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        uint256 z = _x + _y;
    |        assert(z >= _x);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return difference
    |    */
  > |    function safeSub(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        assert(_x >= _y);
    |        return _x - _y;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |*/
    |contract ERC20Token is IERC20Token, Utils {
  > |    string public standard = 'Token 0.1';
    |    string public name = '';
    |    string public symbol = '';
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |contract ERC20Token is IERC20Token, Utils {
    |    string public standard = 'Token 0.1';
  > |    string public name = '';
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |    string public standard = 'Token 0.1';
    |    string public name = '';
  > |    string public symbol = '';
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |    string public name = '';
    |    string public symbol = '';
  > |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  > |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return true if the transfer was successful, false if it wasn't
    |    */
  > |    function transfer(address _to, uint256 _value)
    |        public
    |        validAddress(_to)
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return true if the transfer was successful, false if it wasn't
    |    */
  > |    function transferFrom(address _from, address _to, uint256 _value)
    |        public
    |        validAddress(_from)
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return true if the approval was successful, false if it wasn't
    |    */
  > |    function approve(address _spender, uint256 _value)
    |        public
    |        validAddress(_spender)
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(253)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(261)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |*/
    |contract SmartToken is ISmartToken, Owned, ERC20Token, TokenHolder {
  > |    string public version = '0.3';
    |
    |    bool public transfersEnabled = true;    // true if transfer/transferFrom are enabled, false if not
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(321)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |    string public version = '0.3';
    |
  > |    bool public transfersEnabled = true;    // true if transfer/transferFrom are enabled, false if not
    |
    |    // triggered when a smart token is deployed - the _token address is defined for forward compatibility, in case we want to trigger the event from a factory
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(323)

[33mWarning[0m for UnhandledException in contract 'SmartToken':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(309)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartToken':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(309)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        returns (bool success)
    |    {
  > |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(142)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |    {
    |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(143)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        returns (bool success)
    |    {
  > |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |    {
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        notThis(_to)
    |    {
  > |        totalSupply = safeAdd(totalSupply, _amount);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(375)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |    {
    |        totalSupply = safeAdd(totalSupply, _amount);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _amount);
    |
    |        emit Issuance(_amount);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(376)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        require(msg.sender == _from || msg.sender == owner); // validate input
    |
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _amount);
    |        totalSupply = safeSub(totalSupply, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(392)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |
    |        balanceOf[_from] = safeSub(balanceOf[_from], _amount);
  > |        totalSupply = safeSub(totalSupply, _amount);
    |
    |        emit Transfer(_from, this, _amount);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
    |
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        emit OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |    */
    |    function disableTransfers(bool _disable) public ownerOnly {
  > |        transfersEnabled = !_disable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(359)

[33mWarning[0m for LockedEther in contract 'TokenHolder':
    |    the owner to send tokens that were sent to the contract by mistake back to their sender.
    |*/
  > |contract TokenHolder is ITokenHolder, Owned, Utils {
    |    /**
    |        @dev constructor
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(287)

[31mViolation[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(302)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(253)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(261)

[33mWarning[0m for UnhandledException in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(309)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        emit OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(265)

[33mWarning[0m for LockedEther in contract 'Utils':
    |    Utilities & Common Modifiers
    |*/
  > |contract Utils {
    |    /**
    |        constructor
  at /home/jiaming/mavs_srcs/contract@0x47e116fb5b43f7b4ac1b0083d71fba5831c74e04.sol(27)


