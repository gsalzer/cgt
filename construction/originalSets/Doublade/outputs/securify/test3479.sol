Processing contract: /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol:FamedStar
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol:NovaAccessControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol:NovaLabInterface
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FamedStar':
    |}
    |
  > |contract FamedStar is NovaAccessControl {
    |  struct Star {
    |    bytes32 name;
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(36)

[33mWarning[0m for UnhandledException in contract 'FamedStar':
    |      bool isGot;
    |      var labContract = NovaLabInterface(labAddress);
  > |      isGot = labContract.bornFamedStar(star.lc);
    |      if (isGot) {
    |          stars[starID].owner = userAddress;
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(167)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FamedStar':
    |      bool isGot;
    |      var labContract = NovaLabInterface(labAddress);
  > |      isGot = labContract.bornFamedStar(star.lc);
    |      if (isGot) {
    |          stars[starID].owner = userAddress;
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'FamedStar':
    |pragma solidity ^0.4.17;
    |
  > |contract NovaLabInterface {
    |    function bornFamedStar(uint lc) external constant returns(bool) {}
    |}
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'FamedStar':
    |  function setManager(address _newManager) external onlyManager {
    |    require(_newManager != address(0));
  > |    managers[_newManager] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(22)

[31mViolation[0m for UnrestrictedWrite in contract 'FamedStar':
    |  function updateCfo(address newCfoAddress) external onlyManager {
    |    require(newCfoAddress != address(0));
  > |    cfoAddress = newCfoAddress;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(32)

[31mViolation[0m for UnrestrictedWrite in contract 'FamedStar':
    |
    |  function updateLabAddress(address addr) external onlyManager {
  > |      labAddress = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'FamedStar':
    |
    |  function updateNovaAddress(address addr) external onlyManager {
  > |      novaAddress = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'FamedStar':
    |      require(famedStarMassToIds[mass] == 0);
    |
  > |      var id = stars.push(Star({
    |          name: bN,
    |          mass: mass,
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'FamedStar':
    |      })) - 1;
    |
  > |      famedStarNameToIds[bN] = id;
    |      famedStarMassToIds[mass] = id;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'FamedStar':
    |
    |      famedStarNameToIds[bN] = id;
  > |      famedStarMassToIds[mass] = id;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'FamedStar':
    |  function removeManager(address mangerAddress) external onlyManager {
    |    require(mangerAddress != msg.sender);
  > |    managers[mangerAddress] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'FamedStar':
    |      require(star.mass > 0);
    |
  > |      stars[id].owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'FamedStar':
    |      isGot = labContract.bornFamedStar(star.lc);
    |      if (isGot) {
  > |          stars[starID].owner = userAddress;
    |          return (starID, stars[starID].name);
    |      } else {
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'FamedStar':
    |          return (starID, stars[starID].name);
    |      } else {
  > |          stars[starID].lc++;
    |          return (0, 0);
    |      }
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(172)

[33mWarning[0m for LockedEther in contract 'NovaAccessControl':
    |}
    |
  > |contract NovaAccessControl {
    |  mapping (address => bool) managers;
    |  address cfoAddress;
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'NovaAccessControl':
    |  }
    |
  > |  function setManager(address _newManager) external onlyManager {
    |    require(_newManager != address(0));
    |    managers[_newManager] = true;
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'NovaAccessControl':
    |  }
    |
  > |  function removeManager(address mangerAddress) external onlyManager {
    |    require(mangerAddress != msg.sender);
    |    managers[mangerAddress] = false;
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'NovaAccessControl':
    |  }
    |
  > |  function updateCfo(address newCfoAddress) external onlyManager {
    |    require(newCfoAddress != address(0));
    |    cfoAddress = newCfoAddress;
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'NovaAccessControl':
    |  function setManager(address _newManager) external onlyManager {
    |    require(_newManager != address(0));
  > |    managers[_newManager] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(22)

[31mViolation[0m for UnrestrictedWrite in contract 'NovaAccessControl':
    |  function updateCfo(address newCfoAddress) external onlyManager {
    |    require(newCfoAddress != address(0));
  > |    cfoAddress = newCfoAddress;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'NovaAccessControl':
    |  function removeManager(address mangerAddress) external onlyManager {
    |    require(mangerAddress != msg.sender);
  > |    managers[mangerAddress] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(27)

[33mWarning[0m for LockedEther in contract 'NovaLabInterface':
    |pragma solidity ^0.4.17;
    |
  > |contract NovaLabInterface {
    |    function bornFamedStar(uint lc) external constant returns(bool) {}
    |}
  at /home/jiaming/mavs_srcs/contract@0xe41981bd27b1684fc9f4230a12607649ace1b4c8.sol(3)


