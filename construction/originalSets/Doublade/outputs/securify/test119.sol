Processing contract: /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol:BitEther
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol:ContractReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol:tokenRecipient
[33mWarning[0m for DAO in contract 'BitEther':
    |    {
    |      ContractReceiver rx = ContractReceiver( to );
  > |      require( rx.call.value(0)
    |               (bytes4(keccak256(custom_fallback)), msg.sender, value, data) );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(190)

[33mWarning[0m for DAO in contract 'BitEther':
    |
    |    ContractReceiver rx = ContractReceiver(to);
  > |    rx.tokenFallback( msg.sender, value, data );
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(216)

[33mWarning[0m for LockedEther in contract 'BitEther':
    |// - https://github.com/Dexaran/ERC23-tokens/blob/Recommended/ERC223_Token.sol
    |
  > |contract BitEther is owned
    |{
    |  string  public name;        // ERC20
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'BitEther':
    |  }
    |
  > |  function changeOwner( address newowner ) public onlyOwner {
    |    owner = newowner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'BitEther':
    |
    |  // ERC20
  > |  function balanceOf( address owner ) public constant returns (uint) {
    |    return balances_[owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'BitEther':
    |
    |  // ERC20
  > |  function approve( address spender, uint256 value ) public
    |  returns (bool success)
    |  {
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'BitEther':
    | 
    |  // ERC20
  > |  function allowance( address owner, address spender ) public constant
    |  returns (uint256 remaining)
    |  {
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'BitEther':
    |
    |  // ERC20
  > |  function transferFrom( address from, address to, uint256 value ) public
    |  returns (bool success)
    |  {
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'BitEther':
    |
    |  // Ethereum Token
  > |  function approveAndCall( address spender, uint256 value, bytes context )
    |  public returns (bool success)
    |  {
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'BitEther':
    |
    |  // Ethereum Token
  > |  function burnFrom( address from, uint256 value ) public returns (bool success)
    |  {
    |    require( balances_[from] >= value );
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'BitEther':
    |
    |contract owned {
  > |  address public owner;
    |
    |  function owned() public { owner = msg.sender; }
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'BitEther':
    |contract BitEther is owned
    |{
  > |  string  public name;        // ERC20
    |  string  public symbol;      // ERC20
    |  uint8   public decimals;    // ERC20
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'BitEther':
    |{
    |  string  public name;        // ERC20
  > |  string  public symbol;      // ERC20
    |  uint8   public decimals;    // ERC20
    |  uint256 public totalSupply; // ERC20
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'BitEther':
    |  string  public name;        // ERC20
    |  string  public symbol;      // ERC20
  > |  uint8   public decimals;    // ERC20
    |  uint256 public totalSupply; // ERC20
    |
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'BitEther':
    |  string  public symbol;      // ERC20
    |  uint8   public decimals;    // ERC20
  > |  uint256 public totalSupply; // ERC20
    |
    |  mapping( address => uint256 ) balances_;
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'BitEther':
    |
    |  // Ethereum Token
  > |  function burn( uint256 value ) public returns (bool success)
    |  {
    |    require( balances_[msg.sender] >= value );
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'BitEther':
    |  }
    |
  > |  function _transfer( address from,
    |                      address to,
    |                      uint value,
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'BitEther':
    |
    |  // ERC223 Transfer to contract and invoke tokenFallback() method
  > |  function transferToContract( address to, uint value, bytes data ) private
    |  returns (bool success)
    |  {
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(210)

[33mWarning[0m for MissingInputValidation in contract 'BitEther':
    |
    |  // ERC223 fetch contract size (must be nonzero to be a contract)
  > |  function isContract( address _addr ) private constant returns (bool)
    |  {
    |    uint length;
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(222)

[33mWarning[0m for UnhandledException in contract 'BitEther':
    |    {
    |      tokenRecipient recip = tokenRecipient( spender );
  > |      recip.receiveApproval( msg.sender, value, context );
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(133)

[33mWarning[0m for UnhandledException in contract 'BitEther':
    |    {
    |      ContractReceiver rx = ContractReceiver( to );
  > |      require( rx.call.value(0)
    |               (bytes4(keccak256(custom_fallback)), msg.sender, value, data) );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(190)

[33mWarning[0m for UnhandledException in contract 'BitEther':
    |
    |    ContractReceiver rx = ContractReceiver(to);
  > |    rx.tokenFallback( msg.sender, value, data );
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitEther':
    |    {
    |      tokenRecipient recip = tokenRecipient( spender );
  > |      recip.receiveApproval( msg.sender, value, context );
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'BitEther':
    |    require( balances_[msg.sender] >= value );
    |    balances_[msg.sender] -= value;
  > |    totalSupply -= value;
    |
    |    Burn( msg.sender, value );
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'BitEther':
    |    require( value <= allowances_[from][msg.sender] );
    |
  > |    balances_[from] -= value;
    |    allowances_[from][msg.sender] -= value;
    |    totalSupply -= value;
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(156)

[31mViolation[0m for UnrestrictedWrite in contract 'BitEther':
    |    balances_[from] -= value;
    |    allowances_[from][msg.sender] -= value;
  > |    totalSupply -= value;
    |
    |    Burn( from, value );
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(158)

[31mViolation[0m for UnrestrictedWrite in contract 'BitEther':
    |    require( balances_[to] + value > balances_[to] ); // catch overflow
    |
  > |    balances_[from] -= value;
    |    balances_[to] += value;
    |
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(173)

[31mViolation[0m for UnrestrictedWrite in contract 'BitEther':
    |
    |    balances_[from] -= value;
  > |    balances_[to] += value;
    |
    |    Transfer( from, to, value, data );
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'BitEther':
    |  returns (bool success)
    |  {
  > |    allowances_[msg.sender][spender] = value;
    |    Approval( msg.sender, spender, value );
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BitEther':
    |    require( value <= allowances_[from][msg.sender] );
    |
  > |    allowances_[from][msg.sender] -= value;
    |    bytes memory empty;
    |    _transfer( from, to, value, empty );
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'BitEther':
    |  {
    |    require( balances_[msg.sender] >= value );
  > |    balances_[msg.sender] -= value;
    |    totalSupply -= value;
    |
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'BitEther':
    |
    |    balances_[from] -= value;
  > |    allowances_[from][msg.sender] -= value;
    |    totalSupply -= value;
    |
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'BitEther':
    |    require( balances_[to] + value > balances_[to] ); // catch overflow
    |
  > |    balances_[from] -= value;
    |    balances_[to] += value;
    |
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'BitEther':
    |
    |  function changeOwner( address newowner ) public onlyOwner {
  > |    owner = newowner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'BitEther':
    |      revert();
    |
  > |    totalSupply += newTokens;
    |    balances_[owner] += newTokens;
    |    bytes memory empty;
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BitEther':
    |
    |    totalSupply += newTokens;
  > |    balances_[owner] += newTokens;
    |    bytes memory empty;
    |    Transfer( address(this), owner, newTokens, empty );
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(78)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.19;
    |
  > |contract owned {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |  }
    |
  > |  function changeOwner( address newowner ) public onlyOwner {
    |    owner = newowner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |  address public owner;
    |
    |  function owned() public { owner = msg.sender; }
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(8)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |  function changeOwner( address newowner ) public onlyOwner {
  > |    owner = newowner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x080aa07e2c7185150d7e4da98838a8d2feac3dfc.sol(18)


