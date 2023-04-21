Processing contract: /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol:ERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol:PortalToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'PortalToken':
    |}
    |
  > |contract PortalToken is ERC20Token {
    |    address public initialOwner;
    |    uint256 public supply   = 1000000000 * 10 ** 18;  // 1,000,000,000
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'PortalToken':
    |    }
    |
  > |    function balanceOf(address _account) constant public returns (uint) {
    |        return balance[_account];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'PortalToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |        if (allowance(_from, msg.sender) < _value) revert();
    |
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'PortalToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant public returns (uint256) {
    |        return m_allowance[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'PortalToken':
    |
    |contract PortalToken is ERC20Token {
  > |    address public initialOwner;
    |    uint256 public supply   = 1000000000 * 10 ** 18;  // 1,000,000,000
    |    string  public name     = 'PortalToken';
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'PortalToken':
    |contract PortalToken is ERC20Token {
    |    address public initialOwner;
  > |    uint256 public supply   = 1000000000 * 10 ** 18;  // 1,000,000,000
    |    string  public name     = 'PortalToken';
    |    uint8   public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'PortalToken':
    |    address public initialOwner;
    |    uint256 public supply   = 1000000000 * 10 ** 18;  // 1,000,000,000
  > |    string  public name     = 'PortalToken';
    |    uint8   public decimals = 18;
    |    string  public symbol   = 'PORTAL';
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'PortalToken':
    |    uint256 public supply   = 1000000000 * 10 ** 18;  // 1,000,000,000
    |    string  public name     = 'PortalToken';
  > |    uint8   public decimals = 18;
    |    string  public symbol   = 'PORTAL';
    |    string  public version  = 'v0.2';
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'PortalToken':
    |    string  public name     = 'PortalToken';
    |    uint8   public decimals = 18;
  > |    string  public symbol   = 'PORTAL';
    |    string  public version  = 'v0.2';
    |    uint    public creationBlock;
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'PortalToken':
    |    uint8   public decimals = 18;
    |    string  public symbol   = 'PORTAL';
  > |    string  public version  = 'v0.2';
    |    uint    public creationBlock;
    |    uint    public creationTime;
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'PortalToken':
    |    string  public symbol   = 'PORTAL';
    |    string  public version  = 'v0.2';
  > |    uint    public creationBlock;
    |    uint    public creationTime;
    |
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'PortalToken':
    |    string  public version  = 'v0.2';
    |    uint    public creationBlock;
  > |    uint    public creationTime;
    |
    |    mapping (address => uint256) balance;
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'PortalToken':
    |    }
    |
  > |    function totalSupply() constant public returns (uint) {
    |        return supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'PortalToken':
    |    }
    |
  > |    function doTransfer(address _from, address _to, uint _value) internal returns (bool success) {
    |        if (balance[_from] >= _value && balance[_to] + _value >= balance[_to]) {
    |            balance[_from] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'PortalToken':
    |    function doTransfer(address _from, address _to, uint _value) internal returns (bool success) {
    |        if (balance[_from] >= _value && balance[_to] + _value >= balance[_to]) {
  > |            balance[_from] -= _value;
    |            balance[_to] += _value;
    |            emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'PortalToken':
    |        if (balance[_from] >= _value && balance[_to] + _value >= balance[_to]) {
    |            balance[_from] -= _value;
  > |            balance[_to] += _value;
    |            emit Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'PortalToken':
    |        if (allowance(_from, msg.sender) < _value) revert();
    |
  > |        m_allowance[_from][msg.sender] -= _value;
    |
    |        if ( !(doTransfer(_from, _to, _value)) ) {
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'PortalToken':
    |    function doTransfer(address _from, address _to, uint _value) internal returns (bool success) {
    |        if (balance[_from] >= _value && balance[_to] + _value >= balance[_to]) {
  > |            balance[_from] -= _value;
    |            balance[_to] += _value;
    |            emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'PortalToken':
    |        if ( (_value != 0) && (allowance(msg.sender, _spender) != 0) ) revert();
    |
  > |        m_allowance[msg.sender][_spender] = _value;
    |
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8db90e3e7d04c875a51997092f9178fcac9defdb.sol(102)


