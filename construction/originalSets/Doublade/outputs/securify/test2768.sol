Processing contract: /home/jiaming/mavs_srcs/contract@0xb5124ab26c97be4975b242bfc26de88e22e6d644.sol:Audit
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb5124ab26c97be4975b242bfc26de88e22e6d644.sol:DS
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Audit':
    |}
    |
  > |contract Audit {
    |  event AttachedEvidence(address indexed auditorAddr, bytes32 indexed codeHash, bytes32 ipfsHash);
    |  event NewAudit(address indexed auditorAddr, bytes32 indexed codeHash);
  at /home/jiaming/mavs_srcs/contract@0xb5124ab26c97be4975b242bfc26de88e22e6d644.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'Audit':
    |
    |  // Maps auditor address and code's keccak256 to Audit
  > |  mapping (address => mapping (bytes32 => DS.Proof)) public auditedContracts;
    |  // Maps auditor address to a list of audit code hashes
    |  mapping (address => bytes32[]) public auditorContracts;
  at /home/jiaming/mavs_srcs/contract@0xb5124ab26c97be4975b242bfc26de88e22e6d644.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'Audit':
    |  mapping (address => mapping (bytes32 => DS.Proof)) public auditedContracts;
    |  // Maps auditor address to a list of audit code hashes
  > |  mapping (address => bytes32[]) public auditorContracts;
    |  
    |  // Returns code audit level, 0 if not present
  at /home/jiaming/mavs_srcs/contract@0xb5124ab26c97be4975b242bfc26de88e22e6d644.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'Audit':
    |  
    |  // Returns code audit level, 0 if not present
  > |  function isVerifiedAddress(address _auditorAddr, address _contractAddr) public view returns(uint) {
    |    bytes32 codeHash = keccak256(codeAt(_contractAddr));
    |    return auditedContracts[_auditorAddr][codeHash].level;
  at /home/jiaming/mavs_srcs/contract@0xb5124ab26c97be4975b242bfc26de88e22e6d644.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'Audit':
    |  }
    |
  > |  function isVerifiedCode(address _auditorAddr, bytes32 _codeHash) public view returns(uint) {
    |    return auditedContracts[_auditorAddr][_codeHash].level;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb5124ab26c97be4975b242bfc26de88e22e6d644.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'Audit':
    |  
    |  // Add audit information
  > |  function addAudit(bytes32 _codeHash, uint _level, bytes32 _ipfsHash) public {
    |    address auditor = msg.sender;
    |    require(auditedContracts[auditor][_codeHash].insertedBlock == 0);
  at /home/jiaming/mavs_srcs/contract@0xb5124ab26c97be4975b242bfc26de88e22e6d644.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'Audit':
    |  // Add evidence to audited code, only author, if _newLevel is different from original
    |  // updates the contract's level
  > |  function addEvidence(bytes32 _codeHash, uint _newLevel, bytes32 _ipfsHash) public {
    |    address auditor = msg.sender;
    |    require(auditedContracts[auditor][_codeHash].insertedBlock != 0);
  at /home/jiaming/mavs_srcs/contract@0xb5124ab26c97be4975b242bfc26de88e22e6d644.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'Audit':
    |  }
    |
  > |  function codeAt(address _addr) public view returns (bytes code) {
    |    assembly {
    |      // retrieve the size of the code, this needs assembly
  at /home/jiaming/mavs_srcs/contract@0xb5124ab26c97be4975b242bfc26de88e22e6d644.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Audit':
    |
    |library DS {
  > |  struct Proof {
    |    uint level;         // Audit level
    |    uint insertedBlock; // Audit's block
  at /home/jiaming/mavs_srcs/contract@0xb5124ab26c97be4975b242bfc26de88e22e6d644.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'Audit':
    |    address auditor = msg.sender;
    |    require(auditedContracts[auditor][_codeHash].insertedBlock == 0);
  > |    auditedContracts[auditor][_codeHash] = DS.Proof({ 
    |        level: _level,
    |        auditedBy: auditor,
  at /home/jiaming/mavs_srcs/contract@0xb5124ab26c97be4975b242bfc26de88e22e6d644.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Audit':
    |        ipfsHash: _ipfsHash
    |    });
  > |    auditorContracts[auditor].push(_codeHash);
    |    emit NewAudit(auditor, _codeHash);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb5124ab26c97be4975b242bfc26de88e22e6d644.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Audit':
    |    require(auditedContracts[auditor][_codeHash].insertedBlock != 0);
    |    if (auditedContracts[auditor][_codeHash].level != _newLevel)
  > |      auditedContracts[auditor][_codeHash].level = _newLevel;
    |    emit AttachedEvidence(auditor, _codeHash, _ipfsHash);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb5124ab26c97be4975b242bfc26de88e22e6d644.sol(51)

[33mWarning[0m for LockedEther in contract 'DS':
    |pragma solidity ^0.4.24;
    |
  > |library DS {
    |  struct Proof {
    |    uint level;         // Audit level
  at /home/jiaming/mavs_srcs/contract@0xb5124ab26c97be4975b242bfc26de88e22e6d644.sol(3)


