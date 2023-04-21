Processing contract: /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol:Audit
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol:DS
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol:MonteLabsMS
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Audit':
    |}
    |
  > |contract Audit {
    |  event AttachedEvidence(address indexed auditorAddr, bytes32 indexed codeHash, bytes32 ipfsHash);
    |  event NewAudit(address indexed auditorAddr, bytes32 indexed codeHash);
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'Audit':
    |
    |  // Maps auditor address and code's keccak256 to Audit
  > |  mapping (address => mapping (bytes32 => DS.Proof)) public auditedContracts;
    |  // Maps auditor address to a list of audit code hashes
    |  mapping (address => bytes32[]) public auditorContracts;
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'Audit':
    |  mapping (address => mapping (bytes32 => DS.Proof)) public auditedContracts;
    |  // Maps auditor address to a list of audit code hashes
  > |  mapping (address => bytes32[]) public auditorContracts;
    |  
    |  // Returns code audit level, 0 if not present
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'Audit':
    |  
    |  // Returns code audit level, 0 if not present
  > |  function isVerifiedAddress(address _auditorAddr, address _contractAddr) public view returns(uint) {
    |    bytes32 codeHash = keccak256(codeAt(_contractAddr));
    |    return auditedContracts[_auditorAddr][codeHash].level;
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'Audit':
    |  }
    |
  > |  function isVerifiedCode(address _auditorAddr, bytes32 _codeHash) public view returns(uint) {
    |    return auditedContracts[_auditorAddr][_codeHash].level;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'Audit':
    |  
    |  // Add audit information
  > |  function addAudit(bytes32 _codeHash, uint _level, bytes32 _ipfsHash) public {
    |    address auditor = msg.sender;
    |    require(auditedContracts[auditor][_codeHash].insertedBlock == 0);
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'Audit':
    |  // Add evidence to audited code, only author, if _newLevel is different from original
    |  // updates the contract's level
  > |  function addEvidence(bytes32 _codeHash, uint _newLevel, bytes32 _ipfsHash) public {
    |    address auditor = msg.sender;
    |    require(auditedContracts[auditor][_codeHash].insertedBlock != 0);
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'Audit':
    |  }
    |
  > |  function codeAt(address _addr) public view returns (bytes code) {
    |    assembly {
    |      // retrieve the size of the code, this needs assembly
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Audit':
    |
    |library DS {
  > |  struct Proof {
    |    uint level;         // Audit level
    |    uint insertedBlock; // Audit's block
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'Audit':
    |    address auditor = msg.sender;
    |    require(auditedContracts[auditor][_codeHash].insertedBlock == 0);
  > |    auditedContracts[auditor][_codeHash] = DS.Proof({ 
    |        level: _level,
    |        auditedBy: auditor,
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Audit':
    |        ipfsHash: _ipfsHash
    |    });
  > |    auditorContracts[auditor].push(_codeHash);
    |    emit NewAudit(auditor, _codeHash);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Audit':
    |    require(auditedContracts[auditor][_codeHash].insertedBlock != 0);
    |    if (auditedContracts[auditor][_codeHash].level != _newLevel)
  > |      auditedContracts[auditor][_codeHash].level = _newLevel;
    |    emit AttachedEvidence(auditor, _codeHash, _ipfsHash);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(51)

[33mWarning[0m for LockedEther in contract 'DS':
    |pragma solidity ^0.4.24;
    |
  > |library DS {
    |  struct Proof {
    |    uint level;         // Audit level
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(3)

[33mWarning[0m for DAO in contract 'MonteLabsMS':
    |                           keccak256(audit, _codeHash, _level, _ipfsHash));
    |
  > |    address other = ecrecover(prefixedHash, _v, _r, _s);
    |    // At least 2 different owners
    |    assert(other != sender);
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(95)

[33mWarning[0m for DAO in contract 'MonteLabsMS':
    |    assert(other != sender);
    |    if (audit)
  > |      auditContract.addAudit(_codeHash, _level, _ipfsHash);
    |    else
    |      auditContract.addEvidence(_codeHash, _level, _ipfsHash);
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(99)

[33mWarning[0m for DAO in contract 'MonteLabsMS':
    |      auditContract.addAudit(_codeHash, _level, _ipfsHash);
    |    else
  > |      auditContract.addEvidence(_codeHash, _level, _ipfsHash);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(101)

[33mWarning[0m for LockedEther in contract 'MonteLabsMS':
    |}
    |
  > |contract MonteLabsMS {
    |  // MonteLabs owners
    |  mapping (address => bool) public owners;
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'MonteLabsMS':
    |contract MonteLabsMS {
    |  // MonteLabs owners
  > |  mapping (address => bool) public owners;
    |  uint8 constant quorum = 2;
    |  Audit public auditContract;
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'MonteLabsMS':
    |  }
    |
  > |  function addAudit(bytes32 _codeHash, uint _level, bytes32 _ipfsHash,
    |                    uint8 _v, bytes32 _r, bytes32 _s) public {
    |    addAuditOrEvidence(true, _codeHash, _level, _ipfsHash, _v, _r, _s);
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'MonteLabsMS':
    |  }
    |
  > |  function addEvidence(bytes32 _codeHash, uint _version, bytes32 _ipfsHash,
    |                    uint8 _v, bytes32 _r, bytes32 _s) public {
    |    addAuditOrEvidence(false, _codeHash, _version, _ipfsHash, _v, _r, _s);
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'MonteLabsMS':
    |  mapping (address => bool) public owners;
    |  uint8 constant quorum = 2;
  > |  Audit public auditContract;
    |
    |  constructor(address[] _owners, Audit _auditContract) public {
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'MonteLabsMS':
    |  }
    |
  > |  function addAuditOrEvidence(bool audit, bytes32 _codeHash, uint _level,
    |                              bytes32 _ipfsHash, uint8 _v, bytes32 _r, 
    |                              bytes32 _s) internal {
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(86)

[33mWarning[0m for UnhandledException in contract 'MonteLabsMS':
    |                           keccak256(audit, _codeHash, _level, _ipfsHash));
    |
  > |    address other = ecrecover(prefixedHash, _v, _r, _s);
    |    // At least 2 different owners
    |    assert(other != sender);
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(95)

[33mWarning[0m for UnhandledException in contract 'MonteLabsMS':
    |    assert(other != sender);
    |    if (audit)
  > |      auditContract.addAudit(_codeHash, _level, _ipfsHash);
    |    else
    |      auditContract.addEvidence(_codeHash, _level, _ipfsHash);
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(99)

[33mWarning[0m for UnhandledException in contract 'MonteLabsMS':
    |      auditContract.addAudit(_codeHash, _level, _ipfsHash);
    |    else
  > |      auditContract.addEvidence(_codeHash, _level, _ipfsHash);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(101)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MonteLabsMS':
    |                           keccak256(audit, _codeHash, _level, _ipfsHash));
    |
  > |    address other = ecrecover(prefixedHash, _v, _r, _s);
    |    // At least 2 different owners
    |    assert(other != sender);
  at /home/jiaming/mavs_srcs/contract@0x9fe932c142260f215acc81560a315fb45863b17c.sol(95)


