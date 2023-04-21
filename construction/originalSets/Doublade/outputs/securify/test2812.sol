Processing contract: /home/jiaming/mavs_srcs/contract@0xb8a7818b02f1c1204742b246b25e09caa3751ab8.sol:AxieCore
Processing contract: /home/jiaming/mavs_srcs/contract@0xb8a7818b02f1c1204742b246b25e09caa3751ab8.sol:GetStats
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'GetStats':
    |    returns (uint256 /* _genes */, uint256 /* _bornAt */);
    |}
  > |contract GetStats{
    |  struct Type{
    |    uint hp;
  at /home/jiaming/mavs_srcs/contract@0xb8a7818b02f1c1204742b246b25e09caa3751ab8.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'GetStats':
    |    masks[5]=uint(0x3C000000);//tail
    |  }
  > |  function getStats(uint id) public view returns (uint,uint,uint,uint){
    |    var (_genes,_bornAt) = axie.getAxie(id);
    |    return computeStatsFromGene(_genes);
  at /home/jiaming/mavs_srcs/contract@0xb8a7818b02f1c1204742b246b25e09caa3751ab8.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'GetStats':
    |    return computeStatsFromGene(_genes);
    |  }
  > |  function computeStatsFromGene(uint gene) public view returns(uint,uint,uint,uint){
    |    uint base=uint(gene & 0xF000000000000000000000000000000000000000000000000000000000000000) >> 252;
    |    uint hp=23+4*typeMap[base].hp;
  at /home/jiaming/mavs_srcs/contract@0xb8a7818b02f1c1204742b246b25e09caa3751ab8.sol(57)

[33mWarning[0m for UnhandledException in contract 'GetStats':
    |  }
    |  function getStats(uint id) public view returns (uint,uint,uint,uint){
  > |    var (_genes,_bornAt) = axie.getAxie(id);
    |    return computeStatsFromGene(_genes);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb8a7818b02f1c1204742b246b25e09caa3751ab8.sol(54)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetStats':
    |  }
    |  function getStats(uint id) public view returns (uint,uint,uint,uint){
  > |    var (_genes,_bornAt) = axie.getAxie(id);
    |    return computeStatsFromGene(_genes);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb8a7818b02f1c1204742b246b25e09caa3751ab8.sol(54)


