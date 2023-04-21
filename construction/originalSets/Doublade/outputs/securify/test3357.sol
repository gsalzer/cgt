Processing contract: /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol:ABTokenTransfer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol:AccessControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol:Enums
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol:IABToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol:IAccessoryData
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol:IAngelCardData
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol:IPetCardData
[31mViolation[0m for LockedEther in contract 'ABTokenTransfer':
    |
    |
  > |contract ABTokenTransfer is AccessControl {
    |    // Addresses for other contracts ABTokenTransfer interacts with. 
    |  
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(202)

[33mWarning[0m for UnhandledException in contract 'ABTokenTransfer':
    |       IPetCardData petCardData = IPetCardData(petCardDataContract);
    |       IABToken ABTokenData = IABToken(ABTokenDataContract);
  > |       if ((petID <= 0) || (petID > petCardData.getTotalPets())) {revert();}
    |       Pet memory pet;
    |       (pet.petId,pet.petCardSeriesId,,pet.luck,pet.auraRed,pet.auraBlue,pet.auraYellow,,,pet.owner) = petCardData.getPet(petID);
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(264)

[33mWarning[0m for UnhandledException in contract 'ABTokenTransfer':
    |       if ((petID <= 0) || (petID > petCardData.getTotalPets())) {revert();}
    |       Pet memory pet;
  > |       (pet.petId,pet.petCardSeriesId,,pet.luck,pet.auraRed,pet.auraBlue,pet.auraYellow,,,pet.owner) = petCardData.getPet(petID);
    |       if ((msg.sender != pet.owner) && (seraphims[msg.sender] == false)) {revert();}
    |       //First burn the old pet by transfering to 0x0;
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(266)

[33mWarning[0m for UnhandledException in contract 'ABTokenTransfer':
    |       if ((msg.sender != pet.owner) && (seraphims[msg.sender] == false)) {revert();}
    |       //First burn the old pet by transfering to 0x0;
  > |       petCardData.transferPet(pet.owner,0x0,petID);
    |       //finally create the new one. 
    |       ABTokenData.mintABToken(pet.owner,pet.petCardSeriesId + 23, pet.luck, pet.auraRed, pet.auraYellow, pet.auraBlue, pet.name,0, uint16(pet.petId));
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(269)

[33mWarning[0m for UnhandledException in contract 'ABTokenTransfer':
    |       petCardData.transferPet(pet.owner,0x0,petID);
    |       //finally create the new one. 
  > |       ABTokenData.mintABToken(pet.owner,pet.petCardSeriesId + 23, pet.luck, pet.auraRed, pet.auraYellow, pet.auraBlue, pet.name,0, uint16(pet.petId));
    |  }
    |       
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(271)

[33mWarning[0m for UnhandledException in contract 'ABTokenTransfer':
    |       IAccessoryData accessoryData = IAccessoryData(accessoryDataContract);
    |       IABToken ABTokenData = IABToken(ABTokenDataContract);
  > |       if ((accessoryID <= 0) || (accessoryID > accessoryData.getTotalAccessories())) {revert();}
    |      Accessory memory accessory;
    |       (,accessory.accessorySeriesId,accessory.owner) = accessoryData.getAccessory(accessoryID);
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(277)

[33mWarning[0m for UnhandledException in contract 'ABTokenTransfer':
    |       if ((accessoryID <= 0) || (accessoryID > accessoryData.getTotalAccessories())) {revert();}
    |      Accessory memory accessory;
  > |       (,accessory.accessorySeriesId,accessory.owner) = accessoryData.getAccessory(accessoryID);
    |       
    |       //First burn the old accessory by transfering to 0x0;
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(279)

[33mWarning[0m for UnhandledException in contract 'ABTokenTransfer':
    |       //First burn the old accessory by transfering to 0x0;
    |       // transfer function will revert if the accessory is still locked. 
  > |       accessoryData.transferAccessory(accessory.owner,0x0,accessoryID);
    |       //finally create the new one. 
    |       ABTokenData.mintABToken(accessory.owner,accessory.accessorySeriesId + 42, 0, 0, 0, 0, "0",0, uint16(accessoryID));
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(283)

[33mWarning[0m for UnhandledException in contract 'ABTokenTransfer':
    |       accessoryData.transferAccessory(accessory.owner,0x0,accessoryID);
    |       //finally create the new one. 
  > |       ABTokenData.mintABToken(accessory.owner,accessory.accessorySeriesId + 42, 0, 0, 0, 0, "0",0, uint16(accessoryID));
    |  }
    |       
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(285)

[33mWarning[0m for UnhandledException in contract 'ABTokenTransfer':
    |       IAngelCardData angelCardData = IAngelCardData(angelCardDataContract);
    |       IABToken ABTokenData = IABToken(ABTokenDataContract);
  > |       if ((angelID <= 0) || (angelID > angelCardData.getTotalAngels())) {revert();}
    |       Angel memory angel;
    |       (angel.angelId, angel.angelCardSeriesId, angel.battlePower, angel.aura, angel.experience,,,,,, angel.owner) = angelCardData.getAngel(angelID);
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(291)

[33mWarning[0m for UnhandledException in contract 'ABTokenTransfer':
    |       if ((angelID <= 0) || (angelID > angelCardData.getTotalAngels())) {revert();}
    |       Angel memory angel;
  > |       (angel.angelId, angel.angelCardSeriesId, angel.battlePower, angel.aura, angel.experience,,,,,, angel.owner) = angelCardData.getAngel(angelID);
    |       
    |       //First burn the old angel by transfering to 0x0;
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(293)

[33mWarning[0m for UnhandledException in contract 'ABTokenTransfer':
    |       //First burn the old angel by transfering to 0x0;
    |       //transfer will fail if card is locked. 
  > |       angelCardData.transferAngel(angel.owner,0x0,angel.angelId);
    |       //finally create the new one.
    |       uint16 auraRed = 0;
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(297)

[33mWarning[0m for UnhandledException in contract 'ABTokenTransfer':
    |       if (angel.aura == 5)  {auraRed = 1;} //red Aura
    |       if (angel.aura == 6)  {auraBlue = 1; auraYellow =1;} //green Aura
  > |       ABTokenData.mintABToken(angel.owner,angel.angelCardSeriesId, angel.battlePower, auraRed, auraYellow, auraBlue,"0",angel.experience, uint16(angel.angelId));
    |  }
    |       
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(308)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABTokenTransfer':
    |       IPetCardData petCardData = IPetCardData(petCardDataContract);
    |       IABToken ABTokenData = IABToken(ABTokenDataContract);
  > |       if ((petID <= 0) || (petID > petCardData.getTotalPets())) {revert();}
    |       Pet memory pet;
    |       (pet.petId,pet.petCardSeriesId,,pet.luck,pet.auraRed,pet.auraBlue,pet.auraYellow,,,pet.owner) = petCardData.getPet(petID);
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(264)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABTokenTransfer':
    |       if ((petID <= 0) || (petID > petCardData.getTotalPets())) {revert();}
    |       Pet memory pet;
  > |       (pet.petId,pet.petCardSeriesId,,pet.luck,pet.auraRed,pet.auraBlue,pet.auraYellow,,,pet.owner) = petCardData.getPet(petID);
    |       if ((msg.sender != pet.owner) && (seraphims[msg.sender] == false)) {revert();}
    |       //First burn the old pet by transfering to 0x0;
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABTokenTransfer':
    |       if ((msg.sender != pet.owner) && (seraphims[msg.sender] == false)) {revert();}
    |       //First burn the old pet by transfering to 0x0;
  > |       petCardData.transferPet(pet.owner,0x0,petID);
    |       //finally create the new one. 
    |       ABTokenData.mintABToken(pet.owner,pet.petCardSeriesId + 23, pet.luck, pet.auraRed, pet.auraYellow, pet.auraBlue, pet.name,0, uint16(pet.petId));
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABTokenTransfer':
    |       petCardData.transferPet(pet.owner,0x0,petID);
    |       //finally create the new one. 
  > |       ABTokenData.mintABToken(pet.owner,pet.petCardSeriesId + 23, pet.luck, pet.auraRed, pet.auraYellow, pet.auraBlue, pet.name,0, uint16(pet.petId));
    |  }
    |       
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(271)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABTokenTransfer':
    |       IAccessoryData accessoryData = IAccessoryData(accessoryDataContract);
    |       IABToken ABTokenData = IABToken(ABTokenDataContract);
  > |       if ((accessoryID <= 0) || (accessoryID > accessoryData.getTotalAccessories())) {revert();}
    |      Accessory memory accessory;
    |       (,accessory.accessorySeriesId,accessory.owner) = accessoryData.getAccessory(accessoryID);
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(277)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABTokenTransfer':
    |       if ((accessoryID <= 0) || (accessoryID > accessoryData.getTotalAccessories())) {revert();}
    |      Accessory memory accessory;
  > |       (,accessory.accessorySeriesId,accessory.owner) = accessoryData.getAccessory(accessoryID);
    |       
    |       //First burn the old accessory by transfering to 0x0;
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(279)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABTokenTransfer':
    |       //First burn the old accessory by transfering to 0x0;
    |       // transfer function will revert if the accessory is still locked. 
  > |       accessoryData.transferAccessory(accessory.owner,0x0,accessoryID);
    |       //finally create the new one. 
    |       ABTokenData.mintABToken(accessory.owner,accessory.accessorySeriesId + 42, 0, 0, 0, 0, "0",0, uint16(accessoryID));
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(283)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABTokenTransfer':
    |       accessoryData.transferAccessory(accessory.owner,0x0,accessoryID);
    |       //finally create the new one. 
  > |       ABTokenData.mintABToken(accessory.owner,accessory.accessorySeriesId + 42, 0, 0, 0, 0, "0",0, uint16(accessoryID));
    |  }
    |       
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(285)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABTokenTransfer':
    |       IAngelCardData angelCardData = IAngelCardData(angelCardDataContract);
    |       IABToken ABTokenData = IABToken(ABTokenDataContract);
  > |       if ((angelID <= 0) || (angelID > angelCardData.getTotalAngels())) {revert();}
    |       Angel memory angel;
    |       (angel.angelId, angel.angelCardSeriesId, angel.battlePower, angel.aura, angel.experience,,,,,, angel.owner) = angelCardData.getAngel(angelID);
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABTokenTransfer':
    |       if ((angelID <= 0) || (angelID > angelCardData.getTotalAngels())) {revert();}
    |       Angel memory angel;
  > |       (angel.angelId, angel.angelCardSeriesId, angel.battlePower, angel.aura, angel.experience,,,,,, angel.owner) = angelCardData.getAngel(angelID);
    |       
    |       //First burn the old angel by transfering to 0x0;
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABTokenTransfer':
    |       //First burn the old angel by transfering to 0x0;
    |       //transfer will fail if card is locked. 
  > |       angelCardData.transferAngel(angel.owner,0x0,angel.angelId);
    |       //finally create the new one.
    |       uint16 auraRed = 0;
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(297)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABTokenTransfer':
    |       if (angel.aura == 5)  {auraRed = 1;} //red Aura
    |       if (angel.aura == 6)  {auraBlue = 1; auraYellow =1;} //green Aura
  > |       ABTokenData.mintABToken(angel.owner,angel.angelCardSeriesId, angel.battlePower, auraRed, auraYellow, auraBlue,"0",angel.experience, uint16(angel.angelId));
    |  }
    |       
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'ABTokenTransfer':
    |    function addSERAPHIM(address _newSeraphim) onlyCREATOR public {
    |        if (seraphims[_newSeraphim] == false) {
  > |            seraphims[_newSeraphim] = true;
    |            totalSeraphims += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'ABTokenTransfer':
    |        if (seraphims[_newSeraphim] == false) {
    |            seraphims[_newSeraphim] = true;
  > |            totalSeraphims += 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'ABTokenTransfer':
    |    function removeSERAPHIM(address _oldSeraphim) onlyCREATOR public {
    |        if (seraphims[_oldSeraphim] == true) {
  > |            seraphims[_oldSeraphim] = false;
    |            totalSeraphims -= 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'ABTokenTransfer':
    |        if (seraphims[_oldSeraphim] == true) {
    |            seraphims[_oldSeraphim] = false;
  > |            totalSeraphims -= 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'ABTokenTransfer':
    |
    |    function updateMaintenanceMode(bool _isMaintaining) onlyCREATOR public {
  > |        isMaintenanceMode = _isMaintaining;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'ABTokenTransfer':
    |    // write functions
    |    function DataContacts(address _angelCardDataContract, address _petCardDataContract, address _accessoryDataContract, address _ABTokenDataContract) onlyCREATOR external {
  > |        angelCardDataContract = _angelCardDataContract;
    |        petCardDataContract = _petCardDataContract;
    |        accessoryDataContract = _accessoryDataContract;
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'ABTokenTransfer':
    |    function DataContacts(address _angelCardDataContract, address _petCardDataContract, address _accessoryDataContract, address _ABTokenDataContract) onlyCREATOR external {
    |        angelCardDataContract = _angelCardDataContract;
  > |        petCardDataContract = _petCardDataContract;
    |        accessoryDataContract = _accessoryDataContract;
    |        ABTokenDataContract = _ABTokenDataContract;
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'ABTokenTransfer':
    |        angelCardDataContract = _angelCardDataContract;
    |        petCardDataContract = _petCardDataContract;
  > |        accessoryDataContract = _accessoryDataContract;
    |        ABTokenDataContract = _ABTokenDataContract;
    |     
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'ABTokenTransfer':
    |        petCardDataContract = _petCardDataContract;
    |        accessoryDataContract = _accessoryDataContract;
  > |        ABTokenDataContract = _ABTokenDataContract;
    |     
    |      
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(256)

[33mWarning[0m for LockedEther in contract 'AccessControl':
    |    }
    |}
  > |contract AccessControl {
    |    address public creatorAddress;
    |    uint16 public totalSeraphims = 0;
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'AccessControl':
    |    address public creatorAddress;
    |    uint16 public totalSeraphims = 0;
  > |    mapping (address => bool) public seraphims;
    |
    |    bool public isMaintenanceMode = true;
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'AccessControl':
    |    
    |
  > |    function addSERAPHIM(address _newSeraphim) onlyCREATOR public {
    |        if (seraphims[_newSeraphim] == false) {
    |            seraphims[_newSeraphim] = true;
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'AccessControl':
    |    }
    |    
  > |    function removeSERAPHIM(address _oldSeraphim) onlyCREATOR public {
    |        if (seraphims[_oldSeraphim] == true) {
    |            seraphims[_oldSeraphim] = false;
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'AccessControl':
    |    }
    |
  > |    function updateMaintenanceMode(bool _isMaintaining) onlyCREATOR public {
    |        isMaintenanceMode = _isMaintaining;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |}
    |contract AccessControl {
  > |    address public creatorAddress;
    |    uint16 public totalSeraphims = 0;
    |    mapping (address => bool) public seraphims;
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |contract AccessControl {
    |    address public creatorAddress;
  > |    uint16 public totalSeraphims = 0;
    |    mapping (address => bool) public seraphims;
    |
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |    mapping (address => bool) public seraphims;
    |
  > |    bool public isMaintenanceMode = true;
    | 
    |    modifier onlyCREATOR() {
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |    function addSERAPHIM(address _newSeraphim) onlyCREATOR public {
    |        if (seraphims[_newSeraphim] == false) {
  > |            seraphims[_newSeraphim] = true;
    |            totalSeraphims += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |        if (seraphims[_newSeraphim] == false) {
    |            seraphims[_newSeraphim] = true;
  > |            totalSeraphims += 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |    function removeSERAPHIM(address _oldSeraphim) onlyCREATOR public {
    |        if (seraphims[_oldSeraphim] == true) {
  > |            seraphims[_oldSeraphim] = false;
    |            totalSeraphims -= 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |        if (seraphims[_oldSeraphim] == true) {
    |            seraphims[_oldSeraphim] = false;
  > |            totalSeraphims -= 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |
    |    function updateMaintenanceMode(bool _isMaintaining) onlyCREATOR public {
  > |        isMaintenanceMode = _isMaintaining;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(66)

[33mWarning[0m for LockedEther in contract 'Enums':
    |pragma solidity ^0.4.17;
    |
  > |contract Enums {
    |    enum ResultCode {
    |        SUCCESS,
  at /home/jiaming/mavs_srcs/contract@0xdc8944deaf5da0b81bcd38a87cbad0c0e793116f.sol(3)


