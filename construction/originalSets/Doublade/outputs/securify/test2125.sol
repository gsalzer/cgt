Processing contract: /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol:BLAccess
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol:BLBalances
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol:BLBlocks
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol:BLMain
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol:BLStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol:DataStorageInterface
[33mWarning[0m for LockedEther in contract 'BLAccess':
    |*/
    |
  > |contract BLAccess {
    |
    |    address public mainAddress; //Main Contract Address
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'BLAccess':
    |contract BLAccess {
    |
  > |    address public mainAddress; //Main Contract Address
    |    address public bonusAddress; //BonusAddress
    |    event UpdatedMainAccount(address _newMainAddress);
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'BLAccess':
    |
    |    address public mainAddress; //Main Contract Address
  > |    address public bonusAddress; //BonusAddress
    |    event UpdatedMainAccount(address _newMainAddress);
    |    event UpdatedBonusAccount(address _newBonusAddress);
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'BLAccess':
    |    }
    |
  > |    function setSecondary(address _newSecondary) external onlyPrimary {
    |      require(_newSecondary != address(0));
    |      bonusAddress = _newSecondary;
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'BLAccess':
    |
    |    //Allows to change the primary account for the contract
  > |    function setPrimaryAccount(address _newMainAddress) external onlyPrimary {
    |        require(_newMainAddress != address(0));
    |        mainAddress = _newMainAddress;
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'BLAccess':
    |    function setSecondary(address _newSecondary) external onlyPrimary {
    |      require(_newSecondary != address(0));
  > |      bonusAddress = _newSecondary;
    |      UpdatedBonusAccount(_newSecondary);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'BLAccess':
    |    function setPrimaryAccount(address _newMainAddress) external onlyPrimary {
    |        require(_newMainAddress != address(0));
  > |        mainAddress = _newMainAddress;
    |        UpdatedMainAccount(_newMainAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(44)

[33mWarning[0m for LockedEther in contract 'BLBalances':
    |
    |
  > |contract BLBalances is BLStorage {
    |
    |    event WithdrawBalance(address indexed owner, uint amount);
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'BLBalances':
    |
    |    // allows to setup a new Storage address. Should never be needed but you never know!
  > |    function setDataStorage(address newAddress) public onlyPrimary {
    |        s = DataStorageInterface(newAddress);
    |        storageAddress = newAddress;
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'BLBalances':
    |
    |    // get the balance for a given account
  > |    function getAccountBalance(address _account) public view onlyPrimary returns (uint) {
    |        return s.getUInt(keccak256(_account, "balance"));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'BLBalances':
    |    }
    |
  > |    function getAccountAllowance(address _account) public view onlyPrimary returns (uint) {
    |        return s.getUInt(keccak256(_account, "promoAllowance"));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'BLBalances':
    |
    |    // allow a block allowance for promo and early beta users
  > |    function grantAllowance(address beneficiary, uint allowance) public onlyPrimary {
    |        uint existingAllowance = s.getUInt(keccak256(beneficiary, "promoAllowance"));
    |        existingAllowance += allowance;
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'BLBalances':
    |contract BLAccess {
    |
  > |    address public mainAddress; //Main Contract Address
    |    address public bonusAddress; //BonusAddress
    |    event UpdatedMainAccount(address _newMainAddress);
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'BLBalances':
    |
    |    address public mainAddress; //Main Contract Address
  > |    address public bonusAddress; //BonusAddress
    |    event UpdatedMainAccount(address _newMainAddress);
    |    event UpdatedBonusAccount(address _newBonusAddress);
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'BLBalances':
    |    }
    |
  > |    function setSecondary(address _newSecondary) external onlyPrimary {
    |      require(_newSecondary != address(0));
    |      bonusAddress = _newSecondary;
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'BLBalances':
    |
    |    //Allows to change the primary account for the contract
  > |    function setPrimaryAccount(address _newMainAddress) external onlyPrimary {
    |        require(_newMainAddress != address(0));
    |        mainAddress = _newMainAddress;
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'BLBalances':
    |
    |    DataStorageInterface internal s;
  > |    address public storageAddress;
    |
    |    event StorageUpdated(address _newStorageAddress);
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'BLBalances':
    |
    |    // get the balance for a given account
  > |    function getBalance() public view returns (uint) {
    |        return s.getUInt(keccak256(msg.sender, "balance"));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'BLBalances':
    |    }
    |
  > |    function getMyAllowance() public view returns (uint) {
    |        return s.getUInt(keccak256(msg.sender, "promoAllowance"));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'BLBalances':
    |
    |    // withdraw the current balance
  > |    function withdraw() public {
    |        uint balance = s.getUInt(keccak256(msg.sender, "balance"));
    |        s.withdraw(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(144)

[33mWarning[0m for UnhandledException in contract 'BLBalances':
    |    // get the balance for a given account
    |    function getBalance() public view returns (uint) {
  > |        return s.getUInt(keccak256(msg.sender, "balance"));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(106)

[33mWarning[0m for UnhandledException in contract 'BLBalances':
    |    // get the balance for a given account
    |    function getAccountBalance(address _account) public view onlyPrimary returns (uint) {
  > |        return s.getUInt(keccak256(_account, "balance"));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(111)

[33mWarning[0m for UnhandledException in contract 'BLBalances':
    |
    |    function getAccountAllowance(address _account) public view onlyPrimary returns (uint) {
  > |        return s.getUInt(keccak256(_account, "promoAllowance"));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(115)

[33mWarning[0m for UnhandledException in contract 'BLBalances':
    |
    |    function getMyAllowance() public view returns (uint) {
  > |        return s.getUInt(keccak256(msg.sender, "promoAllowance"));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(119)

[33mWarning[0m for UnhandledException in contract 'BLBalances':
    |    // allow a block allowance for promo and early beta users
    |    function grantAllowance(address beneficiary, uint allowance) public onlyPrimary {
  > |        uint existingAllowance = s.getUInt(keccak256(beneficiary, "promoAllowance"));
    |        existingAllowance += allowance;
    |        s.setUInt(keccak256(beneficiary, "promoAllowance"), existingAllowance);
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(137)

[33mWarning[0m for UnhandledException in contract 'BLBalances':
    |        uint existingAllowance = s.getUInt(keccak256(beneficiary, "promoAllowance"));
    |        existingAllowance += allowance;
  > |        s.setUInt(keccak256(beneficiary, "promoAllowance"), existingAllowance);
    |        AllowanceGranted(beneficiary, allowance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(139)

[33mWarning[0m for UnhandledException in contract 'BLBalances':
    |    // withdraw the current balance
    |    function withdraw() public {
  > |        uint balance = s.getUInt(keccak256(msg.sender, "balance"));
    |        s.withdraw(msg.sender);
    |        WithdrawBalance(msg.sender, balance);
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(145)

[33mWarning[0m for UnhandledException in contract 'BLBalances':
    |    function withdraw() public {
    |        uint balance = s.getUInt(keccak256(msg.sender, "balance"));
  > |        s.withdraw(msg.sender);
    |        WithdrawBalance(msg.sender, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(146)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BLBalances':
    |    // get the balance for a given account
    |    function getBalance() public view returns (uint) {
  > |        return s.getUInt(keccak256(msg.sender, "balance"));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BLBalances':
    |    // get the balance for a given account
    |    function getAccountBalance(address _account) public view onlyPrimary returns (uint) {
  > |        return s.getUInt(keccak256(_account, "balance"));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(111)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BLBalances':
    |
    |    function getAccountAllowance(address _account) public view onlyPrimary returns (uint) {
  > |        return s.getUInt(keccak256(_account, "promoAllowance"));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(115)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BLBalances':
    |
    |    function getMyAllowance() public view returns (uint) {
  > |        return s.getUInt(keccak256(msg.sender, "promoAllowance"));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(119)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BLBalances':
    |    // allow a block allowance for promo and early beta users
    |    function grantAllowance(address beneficiary, uint allowance) public onlyPrimary {
  > |        uint existingAllowance = s.getUInt(keccak256(beneficiary, "promoAllowance"));
    |        existingAllowance += allowance;
    |        s.setUInt(keccak256(beneficiary, "promoAllowance"), existingAllowance);
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(137)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BLBalances':
    |        uint existingAllowance = s.getUInt(keccak256(beneficiary, "promoAllowance"));
    |        existingAllowance += allowance;
  > |        s.setUInt(keccak256(beneficiary, "promoAllowance"), existingAllowance);
    |        AllowanceGranted(beneficiary, allowance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(139)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BLBalances':
    |    // withdraw the current balance
    |    function withdraw() public {
  > |        uint balance = s.getUInt(keccak256(msg.sender, "balance"));
    |        s.withdraw(msg.sender);
    |        WithdrawBalance(msg.sender, balance);
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BLBalances':
    |    function withdraw() public {
    |        uint balance = s.getUInt(keccak256(msg.sender, "balance"));
  > |        s.withdraw(msg.sender);
    |        WithdrawBalance(msg.sender, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'BLBalances':
    |    function setSecondary(address _newSecondary) external onlyPrimary {
    |      require(_newSecondary != address(0));
  > |      bonusAddress = _newSecondary;
    |      UpdatedBonusAccount(_newSecondary);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'BLBalances':
    |    function setPrimaryAccount(address _newMainAddress) external onlyPrimary {
    |        require(_newMainAddress != address(0));
  > |        mainAddress = _newMainAddress;
    |        UpdatedMainAccount(_newMainAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'BLBalances':
    |    // allows to setup a new Storage address. Should never be needed but you never know!
    |    function setDataStorage(address newAddress) public onlyPrimary {
  > |        s = DataStorageInterface(newAddress);
    |        storageAddress = newAddress;
    |        StorageUpdated(newAddress);
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'BLBalances':
    |    function setDataStorage(address newAddress) public onlyPrimary {
    |        s = DataStorageInterface(newAddress);
  > |        storageAddress = newAddress;
    |        StorageUpdated(newAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(85)

[33mWarning[0m for LockedEther in contract 'BLStorage':
    |*/
    |
  > |contract BLStorage is BLAccess {
    |
    |    DataStorageInterface internal s;
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'BLStorage':
    |
    |    // allows to setup a new Storage address. Should never be needed but you never know!
  > |    function setDataStorage(address newAddress) public onlyPrimary {
    |        s = DataStorageInterface(newAddress);
    |        storageAddress = newAddress;
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'BLStorage':
    |contract BLAccess {
    |
  > |    address public mainAddress; //Main Contract Address
    |    address public bonusAddress; //BonusAddress
    |    event UpdatedMainAccount(address _newMainAddress);
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'BLStorage':
    |
    |    address public mainAddress; //Main Contract Address
  > |    address public bonusAddress; //BonusAddress
    |    event UpdatedMainAccount(address _newMainAddress);
    |    event UpdatedBonusAccount(address _newBonusAddress);
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'BLStorage':
    |    }
    |
  > |    function setSecondary(address _newSecondary) external onlyPrimary {
    |      require(_newSecondary != address(0));
    |      bonusAddress = _newSecondary;
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'BLStorage':
    |
    |    //Allows to change the primary account for the contract
  > |    function setPrimaryAccount(address _newMainAddress) external onlyPrimary {
    |        require(_newMainAddress != address(0));
    |        mainAddress = _newMainAddress;
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'BLStorage':
    |
    |    DataStorageInterface internal s;
  > |    address public storageAddress;
    |
    |    event StorageUpdated(address _newStorageAddress);
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'BLStorage':
    |    function setSecondary(address _newSecondary) external onlyPrimary {
    |      require(_newSecondary != address(0));
  > |      bonusAddress = _newSecondary;
    |      UpdatedBonusAccount(_newSecondary);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'BLStorage':
    |    function setPrimaryAccount(address _newMainAddress) external onlyPrimary {
    |        require(_newMainAddress != address(0));
  > |        mainAddress = _newMainAddress;
    |        UpdatedMainAccount(_newMainAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'BLStorage':
    |    // allows to setup a new Storage address. Should never be needed but you never know!
    |    function setDataStorage(address newAddress) public onlyPrimary {
  > |        s = DataStorageInterface(newAddress);
    |        storageAddress = newAddress;
    |        StorageUpdated(newAddress);
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'BLStorage':
    |    function setDataStorage(address newAddress) public onlyPrimary {
    |        s = DataStorageInterface(newAddress);
  > |        storageAddress = newAddress;
    |        StorageUpdated(newAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8ab45f8d56b9ecdf69603cec6ab8b863d5b56413.sol(85)


