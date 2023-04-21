Processing contract: /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol:EpmSmartToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol:IOwned
Processing contract: /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol:ISmartToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol:ITokenHolder
Processing contract: /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol:SmartToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol:TokenHolder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |    ERC20 Standard Token implementation
    |*/
  > |contract ERC20Token is IERC20Token, SafeMath {
    |    string public standard = 'Token 0.1';
    |    string public name = '';
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    uint256 public totalSupply = 0;
    |    uint256 public maxIssuingSupply = 100000000*10**18;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    uint256 public maxIssuingSupply = 100000000*10**18;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |        @return sum
    |    */
  > |    function safeAdd(uint256 _x, uint256 _y) internal returns (uint256) {
    |        uint256 z = _x + _y;
    |        assert(z >= _x);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |        @return difference
    |    */
  > |    function safeSub(uint256 _x, uint256 _y) internal returns (uint256) {
    |        assert(_x >= _y);
    |        return _x - _y;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |*/
    |contract ERC20Token is IERC20Token, SafeMath {
  > |    string public standard = 'Token 0.1';
    |    string public name = '';
    |    string public symbol = '';
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |contract ERC20Token is IERC20Token, SafeMath {
    |    string public standard = 'Token 0.1';
  > |    string public name = '';
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public standard = 'Token 0.1';
    |    string public name = '';
  > |    string public symbol = '';
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public name = '';
    |    string public symbol = '';
  > |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
    |    uint256 public maxIssuingSupply = 100000000*10**18;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  > |    uint256 public totalSupply = 0;
    |    uint256 public maxIssuingSupply = 100000000*10**18;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  > |    uint256 public maxIssuingSupply = 100000000*10**18;
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |        @return true if the approval was successful, false if it wasn't
    |    */
  > |    function approve(address _spender, uint256 _value)
    |        public
    |        validAddress(_spender)
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(192)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        returns (bool success)
    |    {
  > |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    {
    |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        returns (bool success)
    |    {
  > |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(172)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    {
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(173)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
    |
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(200)

[33mWarning[0m for LockedEther in contract 'EpmSmartToken':
    |
    |/// @title Epm Smart Token
  > |contract EpmSmartToken is SmartToken {
    |    function EpmSmartToken() SmartToken('Epocum', 'EPM', 18) {
    |        disableTransfers(false);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(479)

[31mViolation[0m for MissingInputValidation in contract 'EpmSmartToken':
    |    uint256 public totalSupply = 0;
    |    uint256 public maxIssuingSupply = 100000000*10**18;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'EpmSmartToken':
    |    uint256 public maxIssuingSupply = 100000000*10**18;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'EpmSmartToken':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(285)

[31mViolation[0m for MissingInputValidation in contract 'EpmSmartToken':
    |        @param _disable    true to disable transfers, false to enable them
    |    */
  > |    function disableTransfers(bool _disable) public ownerOnly {
    |        transfersEnabled = !_disable;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(339)

[31mViolation[0m for MissingInputValidation in contract 'EpmSmartToken':
    |        @param _amount     amount to decrease the supply by
    |    */
  > |    function destroy(address _from, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(372)

[33mWarning[0m for MissingInputValidation in contract 'EpmSmartToken':
    |        @return sum
    |    */
  > |    function safeAdd(uint256 _x, uint256 _y) internal returns (uint256) {
    |        uint256 z = _x + _y;
    |        assert(z >= _x);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'EpmSmartToken':
    |        @return difference
    |    */
  > |    function safeSub(uint256 _x, uint256 _y) internal returns (uint256) {
    |        assert(_x >= _y);
    |        return _x - _y;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'EpmSmartToken':
    |*/
    |contract ERC20Token is IERC20Token, SafeMath {
  > |    string public standard = 'Token 0.1';
    |    string public name = '';
    |    string public symbol = '';
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'EpmSmartToken':
    |contract ERC20Token is IERC20Token, SafeMath {
    |    string public standard = 'Token 0.1';
  > |    string public name = '';
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'EpmSmartToken':
    |    string public standard = 'Token 0.1';
    |    string public name = '';
  > |    string public symbol = '';
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'EpmSmartToken':
    |    string public name = '';
    |    string public symbol = '';
  > |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
    |    uint256 public maxIssuingSupply = 100000000*10**18;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'EpmSmartToken':
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  > |    uint256 public totalSupply = 0;
    |    uint256 public maxIssuingSupply = 100000000*10**18;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'EpmSmartToken':
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  > |    uint256 public maxIssuingSupply = 100000000*10**18;
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'EpmSmartToken':
    |        @return true if the transfer was successful, false if it wasn't
    |    */
  > |    function transfer(address _to, uint256 _value)
    |        public
    |        validAddress(_to)
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'EpmSmartToken':
    |        @return true if the transfer was successful, false if it wasn't
    |    */
  > |    function transferFrom(address _from, address _to, uint256 _value)
    |        public
    |        validAddress(_from)
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'EpmSmartToken':
    |        @return true if the approval was successful, false if it wasn't
    |    */
  > |    function approve(address _spender, uint256 _value)
    |        public
    |        validAddress(_spender)
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'EpmSmartToken':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(210)

[33mWarning[0m for MissingInputValidation in contract 'EpmSmartToken':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'EpmSmartToken':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(235)

[33mWarning[0m for MissingInputValidation in contract 'EpmSmartToken':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(243)

[33mWarning[0m for MissingInputValidation in contract 'EpmSmartToken':
    |*/
    |contract SmartToken is ISmartToken, ERC20Token, Owned, TokenHolder {
  > |    string public version = '0.2';
    |
    |    bool public transfersEnabled = true;    // true if transfer/transferFrom are enabled, false if not
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(302)

[33mWarning[0m for MissingInputValidation in contract 'EpmSmartToken':
    |    string public version = '0.2';
    |
  > |    bool public transfersEnabled = true;    // true if transfer/transferFrom are enabled, false if not
    |
    |    // triggered when a smart token is deployed - the _token address is defined for forward compatibility, in case we want to trigger the event from a factory
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(304)

[33mWarning[0m for UnhandledException in contract 'EpmSmartToken':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EpmSmartToken':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(292)

[31mViolation[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |        returns (bool success)
    |    {
  > |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |    {
    |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |        returns (bool success)
    |    {
  > |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(172)

[31mViolation[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |    {
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(173)

[31mViolation[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(174)

[31mViolation[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |        notThis(_to)
    |    {
  > |        totalSupply = safeAdd(totalSupply, _amount);
    |        //Token cant be generated max of 100 Milions
    |        if (totalSupply > maxIssuingSupply) revert();
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(356)

[31mViolation[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |        //Token cant be generated max of 100 Milions
    |        if (totalSupply > maxIssuingSupply) revert();
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _amount);
    |
    |        Issuance(_amount);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(359)

[31mViolation[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |        ownerOnly
    |    {
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _amount);
    |        totalSupply = safeSub(totalSupply, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(376)

[31mViolation[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |    {
    |        balanceOf[_from] = safeSub(balanceOf[_from], _amount);
  > |        totalSupply = safeSub(totalSupply, _amount);
    |
    |        Transfer(_from, this, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(377)

[31mViolation[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |        // transferring to the contract address destroys tokens
    |        if (_to == address(this)) {
  > |            balanceOf[_to] -= _value;
    |            totalSupply -= _value;
    |            Destruction(_value);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(400)

[31mViolation[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |        if (_to == address(this)) {
    |            balanceOf[_to] -= _value;
  > |            totalSupply -= _value;
    |            Destruction(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(401)

[31mViolation[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |        // transferring to the contract address destroys tokens
    |        if (_to == address(this)) {
  > |            balanceOf[_to] -= _value;
    |            totalSupply -= _value;
    |            Destruction(_value);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(424)

[31mViolation[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |        if (_to == address(this)) {
    |            balanceOf[_to] -= _value;
  > |            totalSupply -= _value;
    |            Destruction(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(425)

[33mWarning[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
    |
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |    */
    |    function disableTransfers(bool _disable) public ownerOnly {
  > |        transfersEnabled = !_disable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'EpmSmartToken':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(247)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |/// @dev The Ownable contract has an owner address, and provides basic authorization control functions, this simplifies
    |/// & the implementation of "user permissions".
  > |contract Ownable {
    |    address public owner;
    |    address public newOwnerCandidate;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(436)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |/// & the implementation of "user permissions".
    |contract Ownable {
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(437)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed _by, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(438)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    /// @dev Proposes to transfer control of the contract to a newOwnerCandidate.
    |    /// @param _newOwnerCandidate address The address to transfer ownership to.
  > |    function transferOwnership(address _newOwnerCandidate) onlyOwner {
    |        require(_newOwnerCandidate != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(459)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |    /// @dev Accept ownership transfer. This me thod needs to be called by the perviously proposed owner.
  > |    function acceptOwnership() {
    |        if (msg.sender == newOwnerCandidate) {
    |            owner = newOwnerCandidate;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(468)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function acceptOwnership() {
    |        if (msg.sender == newOwnerCandidate) {
  > |            owner = newOwnerCandidate;
    |            newOwnerCandidate = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(470)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        if (msg.sender == newOwnerCandidate) {
    |            owner = newOwnerCandidate;
  > |            newOwnerCandidate = address(0);
    |
    |            OwnershipTransferred(owner, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(471)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwnerCandidate != address(0));
    |
  > |        newOwnerCandidate = _newOwnerCandidate;
    |
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(462)

[33mWarning[0m for LockedEther in contract 'Owned':
    |    Provides support and utilities for contract ownership
    |*/
  > |contract Owned is IOwned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(209)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(210)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(235)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(247)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |    Overflow protected math functions
    |*/
  > |contract SafeMath {
    |    /**
    |        constructor
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(50)

[33mWarning[0m for LockedEther in contract 'SmartToken':
    |    'Owned' is specified here for readability reasons
    |*/
  > |contract SmartToken is ISmartToken, ERC20Token, Owned, TokenHolder {
    |    string public version = '0.2';
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(301)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |    uint256 public totalSupply = 0;
    |    uint256 public maxIssuingSupply = 100000000*10**18;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |    uint256 public maxIssuingSupply = 100000000*10**18;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(285)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |        @param _disable    true to disable transfers, false to enable them
    |    */
  > |    function disableTransfers(bool _disable) public ownerOnly {
    |        transfersEnabled = !_disable;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(339)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |        @param _amount     amount to decrease the supply by
    |    */
  > |    function destroy(address _from, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(372)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return sum
    |    */
  > |    function safeAdd(uint256 _x, uint256 _y) internal returns (uint256) {
    |        uint256 z = _x + _y;
    |        assert(z >= _x);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return difference
    |    */
  > |    function safeSub(uint256 _x, uint256 _y) internal returns (uint256) {
    |        assert(_x >= _y);
    |        return _x - _y;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |*/
    |contract ERC20Token is IERC20Token, SafeMath {
  > |    string public standard = 'Token 0.1';
    |    string public name = '';
    |    string public symbol = '';
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |contract ERC20Token is IERC20Token, SafeMath {
    |    string public standard = 'Token 0.1';
  > |    string public name = '';
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |    string public standard = 'Token 0.1';
    |    string public name = '';
  > |    string public symbol = '';
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |    string public name = '';
    |    string public symbol = '';
  > |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
    |    uint256 public maxIssuingSupply = 100000000*10**18;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  > |    uint256 public totalSupply = 0;
    |    uint256 public maxIssuingSupply = 100000000*10**18;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  > |    uint256 public maxIssuingSupply = 100000000*10**18;
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return true if the transfer was successful, false if it wasn't
    |    */
  > |    function transfer(address _to, uint256 _value)
    |        public
    |        validAddress(_to)
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return true if the transfer was successful, false if it wasn't
    |    */
  > |    function transferFrom(address _from, address _to, uint256 _value)
    |        public
    |        validAddress(_from)
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return true if the approval was successful, false if it wasn't
    |    */
  > |    function approve(address _spender, uint256 _value)
    |        public
    |        validAddress(_spender)
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(210)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(235)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(243)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |*/
    |contract SmartToken is ISmartToken, ERC20Token, Owned, TokenHolder {
  > |    string public version = '0.2';
    |
    |    bool public transfersEnabled = true;    // true if transfer/transferFrom are enabled, false if not
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(302)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |    string public version = '0.2';
    |
  > |    bool public transfersEnabled = true;    // true if transfer/transferFrom are enabled, false if not
    |
    |    // triggered when a smart token is deployed - the _token address is defined for forward compatibility, in case we want to trigger the event from a factory
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(304)

[33mWarning[0m for UnhandledException in contract 'SmartToken':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartToken':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(292)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        returns (bool success)
    |    {
  > |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |    {
    |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        returns (bool success)
    |    {
  > |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(172)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |    {
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(173)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(174)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        notThis(_to)
    |    {
  > |        totalSupply = safeAdd(totalSupply, _amount);
    |        //Token cant be generated max of 100 Milions
    |        if (totalSupply > maxIssuingSupply) revert();
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(356)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        //Token cant be generated max of 100 Milions
    |        if (totalSupply > maxIssuingSupply) revert();
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _amount);
    |
    |        Issuance(_amount);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(359)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        ownerOnly
    |    {
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _amount);
    |        totalSupply = safeSub(totalSupply, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(376)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |    {
    |        balanceOf[_from] = safeSub(balanceOf[_from], _amount);
  > |        totalSupply = safeSub(totalSupply, _amount);
    |
    |        Transfer(_from, this, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(377)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        // transferring to the contract address destroys tokens
    |        if (_to == address(this)) {
  > |            balanceOf[_to] -= _value;
    |            totalSupply -= _value;
    |            Destruction(_value);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(400)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        if (_to == address(this)) {
    |            balanceOf[_to] -= _value;
  > |            totalSupply -= _value;
    |            Destruction(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(401)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        // transferring to the contract address destroys tokens
    |        if (_to == address(this)) {
  > |            balanceOf[_to] -= _value;
    |            totalSupply -= _value;
    |            Destruction(_value);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(424)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        if (_to == address(this)) {
    |            balanceOf[_to] -= _value;
  > |            totalSupply -= _value;
    |            Destruction(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(425)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
    |
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |    */
    |    function disableTransfers(bool _disable) public ownerOnly {
  > |        transfersEnabled = !_disable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(247)

[33mWarning[0m for LockedEther in contract 'TokenHolder':
    |    the owner to send tokens that were sent to the contract by mistake back to their sender.
    |*/
  > |contract TokenHolder is ITokenHolder, Owned {
    |    /**
    |        @dev constructor
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(258)

[31mViolation[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(285)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(210)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(235)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(243)

[33mWarning[0m for UnhandledException in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9804aa42afebfef98c515b34095b8b8ee1ad7b2e.sol(247)


