Processing contract: /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol:IOwned
Processing contract: /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol:ITokenHolder
Processing contract: /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol:TokenHolder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol:Utils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol:tSLDToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |    ERC20 Standard Token implementation
    |*/
  > |contract ERC20Token is IERC20Token, Utils {
    |    string public standard = "Token 0.1";
    |    string public name = "";
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |        @return sum
    |    */
  > |    function safeAdd(uint256 _x, uint256 _y) internal returns (uint256) {
    |        uint256 z = _x + _y;
    |        assert(z >= _x);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |        @return difference
    |    */
  > |    function safeSub(uint256 _x, uint256 _y) internal returns (uint256) {
    |        assert(_x >= _y);
    |        return _x - _y;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |*/
    |contract ERC20Token is IERC20Token, Utils {
  > |    string public standard = "Token 0.1";
    |    string public name = "";
    |    string public symbol = "";
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |contract ERC20Token is IERC20Token, Utils {
    |    string public standard = "Token 0.1";
  > |    string public name = "";
    |    string public symbol = "";
    |    uint8 public decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public standard = "Token 0.1";
    |    string public name = "";
  > |    string public symbol = "";
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public name = "";
    |    string public symbol = "";
  > |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public symbol = "";
    |    uint8 public decimals = 0;
  > |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |        @return true if the approval was successful, false if it wasn't
    |    */
  > |    function approve(address _spender, uint256 _value)
    |        public
    |        validAddress(_spender)
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(172)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        returns (bool success)
    |    {
  > |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    {
    |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        returns (bool success)
    |    {
  > |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    {
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
    |
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(180)

[33mWarning[0m for LockedEther in contract 'Owned':
    |    Provides support and utilities for contract ownership
    |*/
  > |contract Owned is IOwned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(201)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(226)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(238)

[33mWarning[0m for LockedEther in contract 'TokenHolder':
    |    the owner to send tokens that were sent to the contract by mistake back to their sender.
    |*/
  > |contract TokenHolder is ITokenHolder, Owned, Utils {
    |    /**
    |        @dev constructor
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(256)

[31mViolation[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(271)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(201)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(226)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(234)

[33mWarning[0m for UnhandledException in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(278)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(238)

[33mWarning[0m for LockedEther in contract 'Utils':
    |    Utilities & Common Modifiers
    |*/
  > |contract Utils {
    |    /**
    |        constructor
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(5)

[33mWarning[0m for LockedEther in contract 'tSLDToken':
    |
    |
  > |contract tSLDToken is ERC20Token, TokenHolder {
    |
    |///////////////////////////////////////// VARIABLE INITIALIZATION /////////////////////////////////////////
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(283)

[31mViolation[0m for MissingInputValidation in contract 'tSLDToken':
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'tSLDToken':
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'tSLDToken':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(271)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |        @return sum
    |    */
  > |    function safeAdd(uint256 _x, uint256 _y) internal returns (uint256) {
    |        uint256 z = _x + _y;
    |        assert(z >= _x);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |        @return difference
    |    */
  > |    function safeSub(uint256 _x, uint256 _y) internal returns (uint256) {
    |        assert(_x >= _y);
    |        return _x - _y;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |        @return product
    |    */
  > |    function safeMul(uint256 _x, uint256 _y) internal returns (uint256) {
    |        uint256 z = _x * _y;
    |        assert(_x == 0 || z / _x == _y);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |*/
    |contract ERC20Token is IERC20Token, Utils {
  > |    string public standard = "Token 0.1";
    |    string public name = "";
    |    string public symbol = "";
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |contract ERC20Token is IERC20Token, Utils {
    |    string public standard = "Token 0.1";
  > |    string public name = "";
    |    string public symbol = "";
    |    uint8 public decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |    string public standard = "Token 0.1";
    |    string public name = "";
  > |    string public symbol = "";
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |    string public name = "";
    |    string public symbol = "";
  > |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |        @return true if the transfer was successful, false if it wasn't
    |    */
  > |    function transfer(address _to, uint256 _value)
    |        public
    |        validAddress(_to)
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |        @return true if the transfer was successful, false if it wasn't
    |    */
  > |    function transferFrom(address _from, address _to, uint256 _value)
    |        public
    |        validAddress(_from)
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |        @return true if the approval was successful, false if it wasn't
    |    */
  > |    function approve(address _spender, uint256 _value)
    |        public
    |        validAddress(_spender)
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(201)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(226)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(234)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |///////////////////////////////////////// VARIABLE INITIALIZATION /////////////////////////////////////////
    |
  > |    uint256 constant public tSLD_UNIT = 10 ** 18;
    |    uint256 public totalSupply = 2 * (10**9) * tSLD_UNIT;
    |
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(287)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |
    |    uint256 constant public tSLD_UNIT = 10 ** 18;
  > |    uint256 public totalSupply = 2 * (10**9) * tSLD_UNIT;
    |
    |    //  Constants
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(288)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |
    |    //  Constants
  > |    uint256 constant public maxPresaleSupply = 600 * 10**6 * tSLD_UNIT;           // Total presale supply at max bonus
    |    uint256 constant public minCrowdsaleAllocation = 200 * 10**6 * tSLD_UNIT;     // Min amount for crowdsale
    |    uint256 constant public incentivisationAllocation = 600 * 10**6 * tSLD_UNIT;  // Incentivisation Allocation
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(291)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |    //  Constants
    |    uint256 constant public maxPresaleSupply = 600 * 10**6 * tSLD_UNIT;           // Total presale supply at max bonus
  > |    uint256 constant public minCrowdsaleAllocation = 200 * 10**6 * tSLD_UNIT;     // Min amount for crowdsale
    |    uint256 constant public incentivisationAllocation = 600 * 10**6 * tSLD_UNIT;  // Incentivisation Allocation
    |    uint256 constant public storageAllocation = 600 * 10**6 * tSLD_UNIT;          // Advisors Allocation
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(292)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |    uint256 constant public maxPresaleSupply = 600 * 10**6 * tSLD_UNIT;           // Total presale supply at max bonus
    |    uint256 constant public minCrowdsaleAllocation = 200 * 10**6 * tSLD_UNIT;     // Min amount for crowdsale
  > |    uint256 constant public incentivisationAllocation = 600 * 10**6 * tSLD_UNIT;  // Incentivisation Allocation
    |    uint256 constant public storageAllocation = 600 * 10**6 * tSLD_UNIT;          // Advisors Allocation
    |    uint256 constant public sollidaTeamAllocation = 600 * 10**6 * tSLD_UNIT;         // sollida Team allocation
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(293)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |    uint256 constant public minCrowdsaleAllocation = 200 * 10**6 * tSLD_UNIT;     // Min amount for crowdsale
    |    uint256 constant public incentivisationAllocation = 600 * 10**6 * tSLD_UNIT;  // Incentivisation Allocation
  > |    uint256 constant public storageAllocation = 600 * 10**6 * tSLD_UNIT;          // Advisors Allocation
    |    uint256 constant public sollidaTeamAllocation = 600 * 10**6 * tSLD_UNIT;         // sollida Team allocation
    |
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(294)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |    uint256 constant public incentivisationAllocation = 600 * 10**6 * tSLD_UNIT;  // Incentivisation Allocation
    |    uint256 constant public storageAllocation = 600 * 10**6 * tSLD_UNIT;          // Advisors Allocation
  > |    uint256 constant public sollidaTeamAllocation = 600 * 10**6 * tSLD_UNIT;         // sollida Team allocation
    |
    |    address public crowdFundAddress;                                             // Address of the crowdfund
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(295)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |    uint256 constant public sollidaTeamAllocation = 600 * 10**6 * tSLD_UNIT;         // sollida Team allocation
    |
  > |    address public crowdFundAddress;                                             // Address of the crowdfund
    |    address public advisorAddress;                                               // sollida advisor's address
    |    address public incentivisationFundAddress;                                   // Address that holds the incentivization funds
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(297)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |
    |    address public crowdFundAddress;                                             // Address of the crowdfund
  > |    address public advisorAddress;                                               // sollida advisor's address
    |    address public incentivisationFundAddress;                                   // Address that holds the incentivization funds
    |    address public sollidaTeamAddress;                                             // sollida Team address
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(298)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |    address public crowdFundAddress;                                             // Address of the crowdfund
    |    address public advisorAddress;                                               // sollida advisor's address
  > |    address public incentivisationFundAddress;                                   // Address that holds the incentivization funds
    |    address public sollidaTeamAddress;                                             // sollida Team address
    |
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(299)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |    address public advisorAddress;                                               // sollida advisor's address
    |    address public incentivisationFundAddress;                                   // Address that holds the incentivization funds
  > |    address public sollidaTeamAddress;                                             // sollida Team address
    |
    |    //  Variables
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(300)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |    //  Variables
    |
  > |    uint256 public totalAllocatedToAdvisors = 0;                                 // Counter to keep track of advisor token allocation
    |    uint256 public totalAllocatedToTeam = 0;                                     // Counter to keep track of team token allocation
    |    uint256 public totalAllocated = 0;                                           // Counter to keep track of overall token allocation
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(304)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |
    |    uint256 public totalAllocatedToAdvisors = 0;                                 // Counter to keep track of advisor token allocation
  > |    uint256 public totalAllocatedToTeam = 0;                                     // Counter to keep track of team token allocation
    |    uint256 public totalAllocated = 0;                                           // Counter to keep track of overall token allocation
    |    uint256 constant public endTime = 1509494340;                                // 10/31/2017 @ 11:59pm (UTC) crowdsale end time (in seconds)
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(305)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |    uint256 public totalAllocatedToAdvisors = 0;                                 // Counter to keep track of advisor token allocation
    |    uint256 public totalAllocatedToTeam = 0;                                     // Counter to keep track of team token allocation
  > |    uint256 public totalAllocated = 0;                                           // Counter to keep track of overall token allocation
    |    uint256 constant public endTime = 1509494340;                                // 10/31/2017 @ 11:59pm (UTC) crowdsale end time (in seconds)
    |
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(306)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |    uint256 public totalAllocatedToTeam = 0;                                     // Counter to keep track of team token allocation
    |    uint256 public totalAllocated = 0;                                           // Counter to keep track of overall token allocation
  > |    uint256 constant public endTime = 1509494340;                                // 10/31/2017 @ 11:59pm (UTC) crowdsale end time (in seconds)
    |
    |    bool internal isReleasedToPublic = false;                         // Flag to allow transfer/transferFrom before the end of the crowdfund
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(307)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |        @return true if successful, throws if not
    |    */
  > |    function releasesollidaTeamTokens() safeTimelock ownerOnly returns(bool success) {
    |        require(totalAllocatedToTeam < sollidaTeamAllocation);
    |
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(409)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |        @return true if successful, throws if not
    |    */
  > |    function releaseAdvisorTokens() advisorTimelock ownerOnly returns(bool success) {
    |        require(totalAllocatedToAdvisors == 0);
    |        balanceOf[advisorAddress] = safeAdd(balanceOf[advisorAddress], storageAllocation);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(436)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |        @return true if successful, throws if not
    |    */
  > |    function retrieveUnsoldTokens() safeTimelock ownerOnly returns(bool success) {
    |        uint256 amountOfTokens = balanceOf[crowdFundAddress];
    |        balanceOf[crowdFundAddress] = 0;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(452)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |        Transfers will be allowed regardless after the crowdfund end time.
    |    */
  > |    function allowTransfers() ownerOnly {
    |        isReleasedToPublic = true;
    |    } 
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(474)

[33mWarning[0m for MissingInputValidation in contract 'tSLDToken':
    |        Transfers are forbidden before the end of the crowdfund
    |    */
  > |    function isTransferAllowed() internal constant returns(bool) {
    |        if (now > endTime || isReleasedToPublic == true) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(482)

[33mWarning[0m for UnhandledException in contract 'tSLDToken':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(278)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'tSLDToken':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(278)

[31mViolation[0m for UnrestrictedWrite in contract 'tSLDToken':
    |        returns (bool success)
    |    {
  > |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'tSLDToken':
    |    {
    |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'tSLDToken':
    |        returns (bool success)
    |    {
  > |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'tSLDToken':
    |    {
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'tSLDToken':
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'tSLDToken':
    |
    |            uint256 amount = safeMul(sollidaTeamAlloc, 125);
  > |            balanceOf[sollidaTeamAddress] = safeAdd(balanceOf[sollidaTeamAddress], amount);
    |            Transfer(0x0, sollidaTeamAddress, amount);
    |            totalAllocated = safeAdd(totalAllocated, amount);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(419)

[31mViolation[0m for UnrestrictedWrite in contract 'tSLDToken':
    |            balanceOf[sollidaTeamAddress] = safeAdd(balanceOf[sollidaTeamAddress], amount);
    |            Transfer(0x0, sollidaTeamAddress, amount);
  > |            totalAllocated = safeAdd(totalAllocated, amount);
    |            totalAllocatedToTeam = safeAdd(totalAllocatedToTeam, amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(421)

[31mViolation[0m for UnrestrictedWrite in contract 'tSLDToken':
    |            Transfer(0x0, sollidaTeamAddress, amount);
    |            totalAllocated = safeAdd(totalAllocated, amount);
  > |            totalAllocatedToTeam = safeAdd(totalAllocatedToTeam, amount);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(422)

[31mViolation[0m for UnrestrictedWrite in contract 'tSLDToken':
    |    function releaseAdvisorTokens() advisorTimelock ownerOnly returns(bool success) {
    |        require(totalAllocatedToAdvisors == 0);
  > |        balanceOf[advisorAddress] = safeAdd(balanceOf[advisorAddress], storageAllocation);
    |        totalAllocated = safeAdd(totalAllocated, storageAllocation);
    |        totalAllocatedToAdvisors = storageAllocation;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(438)

[31mViolation[0m for UnrestrictedWrite in contract 'tSLDToken':
    |        require(totalAllocatedToAdvisors == 0);
    |        balanceOf[advisorAddress] = safeAdd(balanceOf[advisorAddress], storageAllocation);
  > |        totalAllocated = safeAdd(totalAllocated, storageAllocation);
    |        totalAllocatedToAdvisors = storageAllocation;
    |        Transfer(0x0, advisorAddress, storageAllocation);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(439)

[31mViolation[0m for UnrestrictedWrite in contract 'tSLDToken':
    |        balanceOf[advisorAddress] = safeAdd(balanceOf[advisorAddress], storageAllocation);
    |        totalAllocated = safeAdd(totalAllocated, storageAllocation);
  > |        totalAllocatedToAdvisors = storageAllocation;
    |        Transfer(0x0, advisorAddress, storageAllocation);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(440)

[31mViolation[0m for UnrestrictedWrite in contract 'tSLDToken':
    |        uint256 amountOfTokens = balanceOf[crowdFundAddress];
    |        balanceOf[crowdFundAddress] = 0;
  > |        balanceOf[incentivisationFundAddress] = safeAdd(balanceOf[incentivisationFundAddress], amountOfTokens);
    |        totalAllocated = safeAdd(totalAllocated, amountOfTokens);
    |        Transfer(crowdFundAddress, incentivisationFundAddress, amountOfTokens);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(455)

[31mViolation[0m for UnrestrictedWrite in contract 'tSLDToken':
    |        balanceOf[crowdFundAddress] = 0;
    |        balanceOf[incentivisationFundAddress] = safeAdd(balanceOf[incentivisationFundAddress], amountOfTokens);
  > |        totalAllocated = safeAdd(totalAllocated, amountOfTokens);
    |        Transfer(crowdFundAddress, incentivisationFundAddress, amountOfTokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(456)

[31mViolation[0m for UnrestrictedWrite in contract 'tSLDToken':
    |    */
    |    function addToAllocation(uint256 _amount) crowdfundOnly {
  > |        totalAllocated = safeAdd(totalAllocated, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'tSLDToken':
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
    |
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'tSLDToken':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'tSLDToken':
    |
    |        if(teamTranchesReleased < maxTeamTranches && currentTranche > teamTranchesReleased) {
  > |            teamTranchesReleased++;
    |
    |            uint256 amount = safeMul(sollidaTeamAlloc, 125);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(416)

[33mWarning[0m for UnrestrictedWrite in contract 'tSLDToken':
    |    function retrieveUnsoldTokens() safeTimelock ownerOnly returns(bool success) {
    |        uint256 amountOfTokens = balanceOf[crowdFundAddress];
  > |        balanceOf[crowdFundAddress] = 0;
    |        balanceOf[incentivisationFundAddress] = safeAdd(balanceOf[incentivisationFundAddress], amountOfTokens);
    |        totalAllocated = safeAdd(totalAllocated, amountOfTokens);
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(454)

[33mWarning[0m for UnrestrictedWrite in contract 'tSLDToken':
    |    */
    |    function allowTransfers() ownerOnly {
  > |        isReleasedToPublic = true;
    |    } 
    |
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(475)

[33mWarning[0m for UnrestrictedWrite in contract 'tSLDToken':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'tSLDToken':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcaa95aafb98df23eb62e58392d647985a4df0c08.sol(238)


