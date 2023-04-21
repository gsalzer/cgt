Processing contract: /home/jiaming/mavs_srcs/contract@0x2f2bf29d4944b5c7b9768d54d12b1bfbe13d4abf.sol:EtheremonDataBase
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f2bf29d4944b5c7b9768d54d12b1bfbe13d4abf.sol:EtheremonProxy
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EtheremonProxy':
    |
    |
  > |contract EtheremonProxy {
    |    EtheremonDataBase Etheremon = EtheremonDataBase(0xABC1c404424BDF24C19A5cC5EF8F47781D18Eb3E);
    |    
  at /home/jiaming/mavs_srcs/contract@0x2f2bf29d4944b5c7b9768d54d12b1bfbe13d4abf.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'EtheremonProxy':
    |    }
    |    
  > |    function ownerOf(uint256 objId) public view returns (address trainer) {
    |        uint64 id = uint64(objId);
    |        (, , trainer, , , , ) = Etheremon.getMonsterObj(id);
  at /home/jiaming/mavs_srcs/contract@0x2f2bf29d4944b5c7b9768d54d12b1bfbe13d4abf.sol(24)

[33mWarning[0m for UnhandledException in contract 'EtheremonProxy':
    |    function ownerOf(uint256 objId) public view returns (address trainer) {
    |        uint64 id = uint64(objId);
  > |        (, , trainer, , , , ) = Etheremon.getMonsterObj(id);
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f2bf29d4944b5c7b9768d54d12b1bfbe13d4abf.sol(26)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheremonProxy':
    |    function ownerOf(uint256 objId) public view returns (address trainer) {
    |        uint64 id = uint64(objId);
  > |        (, , trainer, , , , ) = Etheremon.getMonsterObj(id);
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f2bf29d4944b5c7b9768d54d12b1bfbe13d4abf.sol(26)


