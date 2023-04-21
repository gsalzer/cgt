Processing contract: /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol:AccessControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol:Enums
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol:IAngelCardData
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol:LeaderboardSlogans
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AccessControl':
    |
    |
  > |contract AccessControl {
    |    address public creatorAddress;
    |    uint16 public totalSeraphims = 0;
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'AccessControl':
    |    address public creatorAddress;
    |    uint16 public totalSeraphims = 0;
  > |    mapping (address => bool) public seraphims;
    |
    |    bool public isMaintenanceMode = true;
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'AccessControl':
    |    
    |
  > |    function addSERAPHIM(address _newSeraphim) onlyCREATOR public {
    |        if (seraphims[_newSeraphim] == false) {
    |            seraphims[_newSeraphim] = true;
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'AccessControl':
    |    }
    |    
  > |    function removeSERAPHIM(address _oldSeraphim) onlyCREATOR public {
    |        if (seraphims[_oldSeraphim] == true) {
    |            seraphims[_oldSeraphim] = false;
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'AccessControl':
    |    }
    |
  > |    function updateMaintenanceMode(bool _isMaintaining) onlyCREATOR public {
    |        isMaintenanceMode = _isMaintaining;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |
    |contract AccessControl {
  > |    address public creatorAddress;
    |    uint16 public totalSeraphims = 0;
    |    mapping (address => bool) public seraphims;
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |contract AccessControl {
    |    address public creatorAddress;
  > |    uint16 public totalSeraphims = 0;
    |    mapping (address => bool) public seraphims;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |    mapping (address => bool) public seraphims;
    |
  > |    bool public isMaintenanceMode = true;
    | 
    |    modifier onlyCREATOR() {
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(9)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |    function addSERAPHIM(address _newSeraphim) onlyCREATOR public {
    |        if (seraphims[_newSeraphim] == false) {
  > |            seraphims[_newSeraphim] = true;
    |            totalSeraphims += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |        if (seraphims[_newSeraphim] == false) {
    |            seraphims[_newSeraphim] = true;
  > |            totalSeraphims += 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |    function removeSERAPHIM(address _oldSeraphim) onlyCREATOR public {
    |        if (seraphims[_oldSeraphim] == true) {
  > |            seraphims[_oldSeraphim] = false;
    |            totalSeraphims -= 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |        if (seraphims[_oldSeraphim] == true) {
    |            seraphims[_oldSeraphim] = false;
  > |            totalSeraphims -= 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |
    |    function updateMaintenanceMode(bool _isMaintaining) onlyCREATOR public {
  > |        isMaintenanceMode = _isMaintaining;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(47)

[33mWarning[0m for LockedEther in contract 'Enums':
    |}
    |
  > |contract Enums {
    |    enum ResultCode {
    |        SUCCESS,
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(79)

[31mViolation[0m for LockedEther in contract 'LeaderboardSlogans':
    |    function getAngelLockStatus(uint64 _angelId) constant public returns (bool);
    |}
  > |contract LeaderboardSlogans is AccessControl {
    |    
    |    
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(130)

[33mWarning[0m for UnhandledException in contract 'LeaderboardSlogans':
    |        IAngelCardData angelCardData = IAngelCardData(angelCardDataContract);
    |          address angelowner;
  > |          (,,,,,,,,,,angelowner) = angelCardData.getAngel(_angelID);
    |            if (angelowner != msg.sender) {revert();}
    |             //can only set slogans for angels you own. 
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(143)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LeaderboardSlogans':
    |        IAngelCardData angelCardData = IAngelCardData(angelCardDataContract);
    |          address angelowner;
  > |          (,,,,,,,,,,angelowner) = angelCardData.getAngel(_angelID);
    |            if (angelowner != msg.sender) {revert();}
    |             //can only set slogans for angels you own. 
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(143)

[31mViolation[0m for UnrestrictedWrite in contract 'LeaderboardSlogans':
    |    function getAngelLockStatus(uint64 _angelId) constant public returns (bool);
    |}
  > |contract LeaderboardSlogans is AccessControl {
    |    
    |    
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'LeaderboardSlogans':
    |    function addSERAPHIM(address _newSeraphim) onlyCREATOR public {
    |        if (seraphims[_newSeraphim] == false) {
  > |            seraphims[_newSeraphim] = true;
    |            totalSeraphims += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'LeaderboardSlogans':
    |        if (seraphims[_newSeraphim] == false) {
    |            seraphims[_newSeraphim] = true;
  > |            totalSeraphims += 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'LeaderboardSlogans':
    |    function removeSERAPHIM(address _oldSeraphim) onlyCREATOR public {
    |        if (seraphims[_oldSeraphim] == true) {
  > |            seraphims[_oldSeraphim] = false;
    |            totalSeraphims -= 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'LeaderboardSlogans':
    |        if (seraphims[_oldSeraphim] == true) {
    |            seraphims[_oldSeraphim] = false;
  > |            totalSeraphims -= 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'LeaderboardSlogans':
    |
    |    function updateMaintenanceMode(bool _isMaintaining) onlyCREATOR public {
  > |        isMaintenanceMode = _isMaintaining;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'LeaderboardSlogans':
    |    function getAngelLockStatus(uint64 _angelId) constant public returns (bool);
    |}
  > |contract LeaderboardSlogans is AccessControl {
    |    
    |    
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'LeaderboardSlogans':
    |    
    |     function SetAngelCardDataContact(address _angelCardDataContract) onlyCREATOR external {
  > |        angelCardDataContract = _angelCardDataContract;
    |    }
    |    function setSlogan(uint64 _angelID, string _slogan) public {
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(138)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |contract SafeMath {
    |    function safeAdd(uint x, uint y) pure internal returns(uint) {
    |      uint z = x + y;
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |    }
    |
  > |    function getRandomNumber(uint16 maxRandom, uint8 min, address privateAddress) constant public returns(uint8) {
    |        uint256 genNum = uint256(block.blockhash(block.number-1)) + uint256(privateAddress);
    |        return uint8(genNum % (maxRandom - min + 1)+min);
  at /home/jiaming/mavs_srcs/contract@0x8d28f9261cca02d5e53aa5f6552dfa2dc14df75a.sol(73)


