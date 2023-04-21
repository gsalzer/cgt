Processing contract: /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol:ASTRDrop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ASTRDrop':
    | * Airdrop for ASTRCoin
    | */
  > |contract ASTRDrop is Ownable {
    |  ERC20 public token;  // using the ASTRCoin token - will set an address
    |  address public ownerAddress;  // deploy owner
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'ASTRDrop':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'ASTRDrop':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'ASTRDrop':
    | */
    |contract ASTRDrop is Ownable {
  > |  ERC20 public token;  // using the ASTRCoin token - will set an address
    |  address public ownerAddress;  // deploy owner
    |  uint8 internal decimals             = 4; // 4 decimal places should be enough in general
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'ASTRDrop':
    |contract ASTRDrop is Ownable {
    |  ERC20 public token;  // using the ASTRCoin token - will set an address
  > |  address public ownerAddress;  // deploy owner
    |  uint8 internal decimals             = 4; // 4 decimal places should be enough in general
    |  uint256 internal decimalsConversion = 10 ** uint256(decimals);
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'ASTRDrop':
    |  uint8 internal decimals             = 4; // 4 decimal places should be enough in general
    |  uint256 internal decimalsConversion = 10 ** uint256(decimals);
  > |  uint public   AIRDROP_AMOUNT        = 10 * decimalsConversion;
    |
    |  function multisend(address[] dests) onlyOwner public returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'ASTRDrop':
    |  uint public   AIRDROP_AMOUNT        = 10 * decimalsConversion;
    |
  > |  function multisend(address[] dests) onlyOwner public returns (uint256) {
    |
    |    ownerAddress    = ERC20(0x3EFAe2e152F62F5cc12cc0794b816d22d416a721); // 
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'ASTRDrop':
    |
    |  // Change the airdrop rate
  > |  function setAirdropAmount(uint256 _astrAirdrop) onlyOwner public {
    |    if( _astrAirdrop > 0 ) {
    |        AIRDROP_AMOUNT = _astrAirdrop * decimalsConversion;
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'ASTRDrop':
    |
    |  // reset the rate to the default
  > |  function resetAirdropAmount() onlyOwner public {
    |     AIRDROP_AMOUNT = 10 * decimalsConversion;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(99)

[33mWarning[0m for UnhandledException in contract 'ASTRDrop':
    |      uint256 i = 0;
    |      while (i < dests.length) { // probably want to keep this to only 20 or 30 addresses at a time
  > |        token.transferFrom(ownerAddress, dests[i], AIRDROP_AMOUNT);
    |         i += 1;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(84)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ASTRDrop':
    |      uint256 i = 0;
    |      while (i < dests.length) { // probably want to keep this to only 20 or 30 addresses at a time
  > |        token.transferFrom(ownerAddress, dests[i], AIRDROP_AMOUNT);
    |         i += 1;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'ASTRDrop':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'ASTRDrop':
    |  function multisend(address[] dests) onlyOwner public returns (uint256) {
    |
  > |    ownerAddress    = ERC20(0x3EFAe2e152F62F5cc12cc0794b816d22d416a721); // 
    |    token           = ERC20(0x80E7a4d750aDe616Da896C49049B7EdE9e04C191); //  
    |
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'ASTRDrop':
    |
    |    ownerAddress    = ERC20(0x3EFAe2e152F62F5cc12cc0794b816d22d416a721); // 
  > |    token           = ERC20(0x80E7a4d750aDe616Da896C49049B7EdE9e04C191); //  
    |
    |      uint256 i = 0;
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'ASTRDrop':
    |  function setAirdropAmount(uint256 _astrAirdrop) onlyOwner public {
    |    if( _astrAirdrop > 0 ) {
  > |        AIRDROP_AMOUNT = _astrAirdrop * decimalsConversion;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'ASTRDrop':
    |  // reset the rate to the default
    |  function resetAirdropAmount() onlyOwner public {
  > |     AIRDROP_AMOUNT = 10 * decimalsConversion;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(100)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(56)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x443be708b29c70eb7824a308f2b2cc3553b430e1.sol(10)


