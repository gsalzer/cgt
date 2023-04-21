Processing contract: /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol:DFNTokens
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'DFNTokens':
    |// Empty out funds that accidentally end up on this contract
    |function emptyTo(address addr) onlyowner public {
  > |    addr.transfer(address(this).balance);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(105)

[33mWarning[0m for LockedEther in contract 'DFNTokens':
  > |contract DFNTokens {
    |  // An identifying string, set by the constructor
    |  string public name;
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(1)

[31mViolation[0m for MissingInputValidation in contract 'DFNTokens':
    |
    |  // mapping from address to balance
  > |  mapping(address => uint) public balance;
    |
    |  // set of addresses that are authorized to transfer
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'DFNTokens':
    |
    |  // set of addresses that are authorized to transfer
  > |  mapping(address => bool) public authorizedToTransfer;
    |
    |  // owner (authorized to do anything)
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'DFNTokens':
    |  address[] public addrList;
    |  // test if address has ever had a non-zero balance
  > |  mapping(address => bool) public seen;
    |  // number of addresses that ever had a non-zero balance
    |  uint public nAddresses = 0;
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'DFNTokens':
    |
    |  // Transfer DFN
  > |  function TransferDFN(address from, address to, uint amt) onlyauthorized alive public {
    |    require(0 < amt && amt <= balance[from]);
    |
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'DFNTokens':
    |
    |// Authorize external contract to transfer 
  > |function AuthorizeToTransfer(address newAddr) onlyowner alive public {
    |    authorizedToTransfer[newAddr] = true;
    |}
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'DFNTokens':
    |
    |// Unauthorize external contract to transfer 
  > |function UnauthorizeToTransfer(address addr) onlyowner alive public {
    |    authorizedToTransfer[addr] = false;
    |}
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'DFNTokens':
    |
    |// Record notarization string (hash)
  > |function Notarize(bytes32 hash) onlyowner alive public {
    |    notarizationList.push(hash);
    |}
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'DFNTokens':
    |
    |// Empty out funds that accidentally end up on this contract
  > |function emptyTo(address addr) onlyowner public {
    |    addr.transfer(address(this).balance);
    |}
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'DFNTokens':
    |contract DFNTokens {
    |  // An identifying string, set by the constructor
  > |  string public name;
    |
    |  // mapping from address to balance
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'DFNTokens':
    |
    |  // owner (authorized to do anything)
  > |  address public owner;
    |
    |  // list of notarizations
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'DFNTokens':
    |
    |  // list of notarizations
  > |  bytes32[] public notarizationList;
    |
    |  // frozen flag
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'DFNTokens':
    |
    |  // frozen flag
  > |  bool public frozen = false;
    |
    |  // freeze requested at height
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'DFNTokens':
    |
    |  // freeze requested at height
  > |  uint public freezeHeight = 0;
    |
    |  // For convenience of external contracts only (not used here)
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'DFNTokens':
    |  // For convenience of external contracts only (not used here)
    |  // list of addresses with balances
  > |  address[] public addrList;
    |  // test if address has ever had a non-zero balance
    |  mapping(address => bool) public seen;
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'DFNTokens':
    |  mapping(address => bool) public seen;
    |  // number of addresses that ever had a non-zero balance
  > |  uint public nAddresses = 0;
    |
    |  // Constructor
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'DFNTokens':
    |
    |// Freeze contract
  > |function Freeze() onlyowner alive public {
    |    // Freeze if this is the second call within 20 blocks
    |    if (freezeHeight > 0 && block.number < freezeHeight + 20) { frozen = true; }
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(95)

[31mViolation[0m for TODAmount in contract 'DFNTokens':
    |// Empty out funds that accidentally end up on this contract
    |function emptyTo(address addr) onlyowner public {
  > |    addr.transfer(address(this).balance);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(105)

[33mWarning[0m for TODReceiver in contract 'DFNTokens':
    |// Empty out funds that accidentally end up on this contract
    |function emptyTo(address addr) onlyowner public {
  > |    addr.transfer(address(this).balance);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(105)

[33mWarning[0m for UnhandledException in contract 'DFNTokens':
    |// Empty out funds that accidentally end up on this contract
    |function emptyTo(address addr) onlyowner public {
  > |    addr.transfer(address(this).balance);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(105)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DFNTokens':
    |// Empty out funds that accidentally end up on this contract
    |function emptyTo(address addr) onlyowner public {
  > |    addr.transfer(address(this).balance);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'DFNTokens':
    |contract DFNTokens {
  > |  // An identifying string, set by the constructor
    |  string public name;
    |
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(2)

[33mWarning[0m for UnrestrictedWrite in contract 'DFNTokens':
    |
    |    // transfer balance
  > |    balance[to] += amt;
    |    balance[from] -= amt;
    |
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'DFNTokens':
    |    // transfer balance
    |    balance[to] += amt;
  > |    balance[from] -= amt;
    |
    |    // maintain records for convenience of external contracts
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'DFNTokens':
    |    // maintain records for convenience of external contracts
    |    if (!seen[to]) {
  > |        addrList.push(to);
    |        seen[to] = true;
    |        nAddresses += 1;
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'DFNTokens':
    |    if (!seen[to]) {
    |        addrList.push(to);
  > |        seen[to] = true;
    |        nAddresses += 1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'DFNTokens':
    |        addrList.push(to);
    |        seen[to] = true;
  > |        nAddresses += 1;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'DFNTokens':
    |// Authorize external contract to transfer 
    |function AuthorizeToTransfer(address newAddr) onlyowner alive public {
  > |    authorizedToTransfer[newAddr] = true;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'DFNTokens':
    |// Unauthorize external contract to transfer 
    |function UnauthorizeToTransfer(address addr) onlyowner alive public {
  > |    authorizedToTransfer[addr] = false;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'DFNTokens':
    |// Record notarization string (hash)
    |function Notarize(bytes32 hash) onlyowner alive public {
  > |    notarizationList.push(hash);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'DFNTokens':
    |function Freeze() onlyowner alive public {
    |    // Freeze if this is the second call within 20 blocks
  > |    if (freezeHeight > 0 && block.number < freezeHeight + 20) { frozen = true; }
    |
    |    // Otherwise set block number of latest freeze request
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'DFNTokens':
    |
    |    // Otherwise set block number of latest freeze request
  > |    freezeHeight = block.number;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xa767c10b70e2d6c33fda2e3b73623bc5c8cd8ca6.sol(100)


