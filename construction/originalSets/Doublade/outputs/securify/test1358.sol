Processing contract: /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol:ContractReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol:ERC223Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol:tokenRecipient
[33mWarning[0m for DAO in contract 'ERC223Token':
    |
    |    ContractReceiver rx = ContractReceiver(to);
  > |    rx.tokenFallback( msg.sender, value, data );
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(180)

[33mWarning[0m for LockedEther in contract 'ERC223Token':
    |// - https://github.com/Dexaran/ERC23-tokens/blob/Recommended/ERC223_Token.sol
    |
  > |contract ERC223Token
    |{
    |  string  public name;        // ERC20
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'ERC223Token':
    |
    |  // ERC20
  > |  function balanceOf( address owner ) public constant returns (uint) {
    |    return balances_[owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'ERC223Token':
    |
    |  // ERC20
  > |  function approve( address spender, uint256 value ) public
    |  returns (bool success)
    |  {
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'ERC223Token':
    | 
    |  // ERC20
  > |  function allowance( address owner, address spender ) public constant
    |  returns (uint256 remaining)
    |  {
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'ERC223Token':
    |
    |  // ERC20
  > |  function transferFrom( address from, address to, uint256 value ) public
    |  returns (bool success)
    |  {
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'ERC223Token':
    |
    |  // Ethereum Token
  > |  function approveAndCall( address spender,
    |                           uint256 value,
    |                           bytes context ) public
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'ERC223Token':
    |
    |  // Ethereum Token
  > |  function burnFrom( address from, uint256 value ) public
    |  returns (bool success)
    |  {
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'ERC223Token':
    |
    |  // ERC223 Transfer and invoke specified callback
  > |  function transfer( address to,
    |                     uint value,
    |                     bytes data,
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'ERC223Token':
    |contract ERC223Token
    |{
  > |  string  public name;        // ERC20
    |  string  public symbol;      // ERC20
    |  uint8   public decimals;    // ERC20
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'ERC223Token':
    |{
    |  string  public name;        // ERC20
  > |  string  public symbol;      // ERC20
    |  uint8   public decimals;    // ERC20
    |  uint256 public totalSupply; // ERC20
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'ERC223Token':
    |  string  public name;        // ERC20
    |  string  public symbol;      // ERC20
  > |  uint8   public decimals;    // ERC20
    |  uint256 public totalSupply; // ERC20
    |
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'ERC223Token':
    |  string  public symbol;      // ERC20
    |  uint8   public decimals;    // ERC20
  > |  uint256 public totalSupply; // ERC20
    |
    |  mapping( address => uint256 ) balances_;
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'ERC223Token':
    |
    |  // Ethereum Token
  > |  function burn( uint256 value ) public
    |  returns (bool success)
    |  {
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'ERC223Token':
    |
    |  // ERC223 Transfer to contract and invoke tokenFallback() method
  > |  function transferToContract( address to, uint value, bytes data ) private
    |  returns (bool success)
    |  {
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'ERC223Token':
    |
    |  // ERC223 fetch contract size (must be nonzero to be a contract)
  > |  function isContract( address _addr ) private constant returns (bool)
    |  {
    |    uint length;
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'ERC223Token':
    |  }
    |
  > |  function _transfer( address from,
    |                      address to,
    |                      uint value,
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(193)

[33mWarning[0m for UnhandledException in contract 'ERC223Token':
    |    {
    |      tokenRecipient recip = tokenRecipient( spender );
  > |      recip.receiveApproval( msg.sender, value, context );
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(108)

[33mWarning[0m for UnhandledException in contract 'ERC223Token':
    |    {
    |      ContractReceiver rx = ContractReceiver( to );
  > |      require( rx.call.value(0)(bytes4(keccak256(custom_fallback)),
    |               msg.sender,
    |               value,
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(152)

[33mWarning[0m for UnhandledException in contract 'ERC223Token':
    |
    |    ContractReceiver rx = ContractReceiver(to);
  > |    rx.tokenFallback( msg.sender, value, data );
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(180)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC223Token':
    |    {
    |      tokenRecipient recip = tokenRecipient( spender );
  > |      recip.receiveApproval( msg.sender, value, context );
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(108)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC223Token':
    |    {
    |      ContractReceiver rx = ContractReceiver( to );
  > |      require( rx.call.value(0)(bytes4(keccak256(custom_fallback)),
    |               msg.sender,
    |               value,
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC223Token':
    |
    |    ContractReceiver rx = ContractReceiver(to);
  > |    rx.tokenFallback( msg.sender, value, data );
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC223Token':
    |    require( balances_[msg.sender] >= value );
    |    balances_[msg.sender] -= value;
  > |    totalSupply -= value;
    |
    |    Burn( msg.sender, value );
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC223Token':
    |    require( value <= allowances_[from][msg.sender] );
    |
  > |    balances_[from] -= value;
    |    allowances_[from][msg.sender] -= value;
    |    totalSupply -= value;
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC223Token':
    |    balances_[from] -= value;
    |    allowances_[from][msg.sender] -= value;
  > |    totalSupply -= value;
    |
    |    Burn( from, value );
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC223Token':
    |    require( balances_[to] + value > balances_[to] ); // catch overflow
    |
  > |    balances_[from] -= value;
    |    balances_[to] += value;
    |
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(202)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC223Token':
    |
    |    balances_[from] -= value;
  > |    balances_[to] += value;
    |
    |    //Transfer( from, to, value, data ); ERC223-compat version
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |  returns (bool success)
    |  {
  > |    allowances_[msg.sender][spender] = value;
    |    Approval( msg.sender, spender, value );
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |    require( value <= allowances_[from][msg.sender] );
    |
  > |    allowances_[from][msg.sender] -= value;
    |    bytes memory empty;
    |    _transfer( from, to, value, empty );
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |  {
    |    require( balances_[msg.sender] >= value );
  > |    balances_[msg.sender] -= value;
    |    totalSupply -= value;
    |
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |
    |    balances_[from] -= value;
  > |    allowances_[from][msg.sender] -= value;
    |    totalSupply -= value;
    |
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |    require( balances_[to] + value > balances_[to] ); // catch overflow
    |
  > |    balances_[from] -= value;
    |    balances_[to] += value;
    |
  at /home/jiaming/mavs_srcs/contract@0x5651ad6511e243e4529fc9363cf88fffc7a2a669.sol(202)


