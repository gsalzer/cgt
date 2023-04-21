Processing contract: /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol:DecentraSearch
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol:ERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'DecentraSearch':
    |
    |  function retrieve( uint _amount ) isOwner public {
  > |    owner.transfer( _amount );
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(39)

[33mWarning[0m for LockedEther in contract 'DecentraSearch':
    |}
    |
  > |contract DecentraSearch is Ownable {
    |
    |  event SiteSubmitted( string url,
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'DecentraSearch':
    |  constructor() public { owner = msg.sender; }
    |
  > |  function chown( address newowner ) isOwner public { owner = newowner; }
    |
    |  modifier isOwner {
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'DecentraSearch':
    |  }
    |
  > |  function setFee( uint _fee ) isOwner public {
    |    fee_ = _fee;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'DecentraSearch':
    |  }
    |
  > |  function retrieve( uint _amount ) isOwner public {
    |    owner.transfer( _amount );
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'DecentraSearch':
    |  }
    |
  > |  function fwdTokens( address _toksca,
    |                      address _to,
    |                      uint256 _quantity ) isOwner public {
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'DecentraSearch':
    |
    |contract Ownable {
  > |  address public owner;
    |  constructor() public { owner = msg.sender; }
    |
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'DecentraSearch':
    |                       string meta );
    |
  > |  uint256 public fee_ = 1 finney;
    |
    |  function submit( string _url,
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(25)

[33mWarning[0m for TODAmount in contract 'DecentraSearch':
    |
    |  function retrieve( uint _amount ) isOwner public {
  > |    owner.transfer( _amount );
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(39)

[31mViolation[0m for TODReceiver in contract 'DecentraSearch':
    |
    |  function retrieve( uint _amount ) isOwner public {
  > |    owner.transfer( _amount );
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(39)

[33mWarning[0m for UnhandledException in contract 'DecentraSearch':
    |
    |  function retrieve( uint _amount ) isOwner public {
  > |    owner.transfer( _amount );
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(39)

[33mWarning[0m for UnhandledException in contract 'DecentraSearch':
    |                      address _to,
    |                      uint256 _quantity ) isOwner public {
  > |    ERC20Token(_toksca).transfer( _to, _quantity );
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(45)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DecentraSearch':
    |                      address _to,
    |                      uint256 _quantity ) isOwner public {
  > |    ERC20Token(_toksca).transfer( _to, _quantity );
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(45)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DecentraSearch':
    |
    |  function retrieve( uint _amount ) isOwner public {
  > |    owner.transfer( _amount );
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentraSearch':
    |  constructor() public { owner = msg.sender; }
    |
  > |  function chown( address newowner ) isOwner public { owner = newowner; }
    |
    |  modifier isOwner {
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(11)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentraSearch':
    |
    |  function setFee( uint _fee ) isOwner public {
  > |    fee_ = _fee;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(35)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |  constructor() public { owner = msg.sender; }
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |  constructor() public { owner = msg.sender; }
    |
  > |  function chown( address newowner ) isOwner public { owner = newowner; }
    |
    |  modifier isOwner {
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |  constructor() public { owner = msg.sender; }
    |
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(8)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  constructor() public { owner = msg.sender; }
    |
  > |  function chown( address newowner ) isOwner public { owner = newowner; }
    |
    |  modifier isOwner {
  at /home/jiaming/mavs_srcs/contract@0xb12ec483d625ec2cfb6fbdef465a54eea85cf356.sol(11)


