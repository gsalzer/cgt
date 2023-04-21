Processing contract: /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol:BuildingStatus
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol:ERC223Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol:Object
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol:PermissionManager
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BuildingStatus':
    |}
    |
  > |contract BuildingStatus is Ownable {
    |  /* Observer contract  */
    |  address public observer;
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'BuildingStatus':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'BuildingStatus':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'BuildingStatus':
    |contract BuildingStatus is Ownable {
    |  /* Observer contract  */
  > |  address public observer;
    |
    |  /* Crowdsale contract */
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'BuildingStatus':
    |
    |  /* Crowdsale contract */
  > |  address public crowdsale;
    |
    |  enum statusEnum {
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'BuildingStatus':
    |  }
    |
  > |  statusEnum public status;
    |
    |  event StatusChanged(statusEnum newStatus);
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'BuildingStatus':
    |  event StatusChanged(statusEnum newStatus);
    |
  > |  function setStatus(statusEnum newStatus) onlyCrowdsale  public {
    |      status = newStatus;
    |      StatusChanged(newStatus);
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'BuildingStatus':
    |  }
    |
  > |  function changeStage(uint8 stage) public onlyObserver {
    |      if (stage==1) status = statusEnum.stage1;
    |      if (stage==2) status = statusEnum.stage2;
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'BuildingStatus':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'BuildingStatus':
    |
    |  function setStatus(statusEnum newStatus) onlyCrowdsale  public {
  > |      status = newStatus;
    |      StatusChanged(newStatus);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'BuildingStatus':
    |
    |  function changeStage(uint8 stage) public onlyObserver {
  > |      if (stage==1) status = statusEnum.stage1;
    |      if (stage==2) status = statusEnum.stage2;
    |      if (stage==3) status = statusEnum.stage3;
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'BuildingStatus':
    |  function changeStage(uint8 stage) public onlyObserver {
    |      if (stage==1) status = statusEnum.stage1;
  > |      if (stage==2) status = statusEnum.stage2;
    |      if (stage==3) status = statusEnum.stage3;
    |      if (stage==4) status = statusEnum.stage4;
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'BuildingStatus':
    |      if (stage==1) status = statusEnum.stage1;
    |      if (stage==2) status = statusEnum.stage2;
  > |      if (stage==3) status = statusEnum.stage3;
    |      if (stage==4) status = statusEnum.stage4;
    |      if (stage==5) status = statusEnum.stage5;
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'BuildingStatus':
    |      if (stage==2) status = statusEnum.stage2;
    |      if (stage==3) status = statusEnum.stage3;
  > |      if (stage==4) status = statusEnum.stage4;
    |      if (stage==5) status = statusEnum.stage5;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'BuildingStatus':
    |      if (stage==3) status = statusEnum.stage3;
    |      if (stage==4) status = statusEnum.stage4;
  > |      if (stage==5) status = statusEnum.stage5;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(112)

[31mViolation[0m for LockedEther in contract 'Object':
    | * @author Vladimir Kovalchuk
    | */
  > |contract Object is BuildingStatus {
    |
    |  /* Name of an object */
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(157)

[33mWarning[0m for UnhandledException in contract 'Object':
    |
    |  modifier onlyPermitted() {
  > |    require(permissionManager.isPermitted(msg.sender) || msg.sender == owner || msg.sender == address(this));
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(215)

[33mWarning[0m for UnhandledException in contract 'Object':
    |
    |  function getTotalSupply() public view returns (uint) {
  > |    return token.getTotalSupply();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(333)

[33mWarning[0m for UnhandledException in contract 'Object':
    |    babcde[k++] = _s2[0];
    |    if (intVal == 0) {
  > |      assert(this.call(bytes4(keccak256(string(babcde))), strVal));
    |    } else {
    |      assert(this.call(bytes4(keccak256(string(babcde))), intVal));
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(367)

[33mWarning[0m for UnhandledException in contract 'Object':
    |      assert(this.call(bytes4(keccak256(string(babcde))), strVal));
    |    } else {
  > |      assert(this.call(bytes4(keccak256(string(babcde))), intVal));
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(369)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Object':
    |
    |  modifier onlyPermitted() {
  > |    require(permissionManager.isPermitted(msg.sender) || msg.sender == owner || msg.sender == address(this));
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Object':
    |
    |  function getTotalSupply() public view returns (uint) {
  > |    return token.getTotalSupply();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(333)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Object':
    |    babcde[k++] = _s2[0];
    |    if (intVal == 0) {
  > |      assert(this.call(bytes4(keccak256(string(babcde))), strVal));
    |    } else {
    |      assert(this.call(bytes4(keccak256(string(babcde))), intVal));
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(367)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Object':
    |      assert(this.call(bytes4(keccak256(string(babcde))), strVal));
    |    } else {
  > |      assert(this.call(bytes4(keccak256(string(babcde))), intVal));
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(369)

[31mViolation[0m for UnrestrictedWrite in contract 'Object':
    | * @author Vladimir Kovalchuk
    | */
  > |contract Object is BuildingStatus {
    |
    |  /* Name of an object */
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(157)

[31mViolation[0m for UnrestrictedWrite in contract 'Object':
    |   */
    |  function setGBA(uint32 newGBA) public onlyPermitted notCompleted {
  > |    gba = newGBA;
    |    PropertyChanged(gba, gla, parking, unit, developer, leed, location, constructionStart, constructionEnd);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(253)

[31mViolation[0m for UnrestrictedWrite in contract 'Object':
    |
    |  function setGLA(uint32 newGLA) public onlyPermitted notCompleted {
  > |    gla = newGLA;
    |    PropertyChanged(gba, gla, parking, unit, developer, leed, location, constructionStart, constructionEnd);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(258)

[31mViolation[0m for UnrestrictedWrite in contract 'Object':
    |
    |  function setParking(uint32 newParking) public onlyPermitted notCompleted {
  > |    parking = newParking;
    |    PropertyChanged(gba, gla, parking, unit, developer, leed, location, constructionStart, constructionEnd);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(263)

[31mViolation[0m for UnrestrictedWrite in contract 'Object':
    |
    |  function setUnit(unitEnum newUnit) public onlyPermitted notCompleted {
  > |    unit = newUnit;
    |    PropertyChanged(gba, gla, parking, unit, developer, leed, location, constructionStart, constructionEnd);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(268)

[31mViolation[0m for UnrestrictedWrite in contract 'Object':
    |
    |  function setStartDate(uint newStartDate) public onlyPermitted notCompleted {
  > |    constructionStart = newStartDate;
    |    PropertyChanged(gba, gla, parking, unit, developer, leed, location, constructionStart, constructionEnd);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(288)

[31mViolation[0m for UnrestrictedWrite in contract 'Object':
    |
    |  function setEndDate(uint newEndDate) public onlyPermitted notCompleted {
  > |    constructionEnd = newEndDate;
    |    PropertyChanged(gba, gla, parking, unit, developer, leed, location, constructionStart, constructionEnd);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(293)

[31mViolation[0m for UnrestrictedWrite in contract 'Object':
    |  
    |  function setUntsqm(uint _untsqm) public onlyPermitted notCompleted {
  > |    untsqm = _untsqm;
    |    PropertyChanged(gba, gla, parking, unit, developer, leed, location, constructionStart, constructionEnd);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'Object':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Object':
    |
    |  function setStatus(statusEnum newStatus) onlyCrowdsale  public {
  > |      status = newStatus;
    |      StatusChanged(newStatus);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Object':
    |
    |  function changeStage(uint8 stage) public onlyObserver {
  > |      if (stage==1) status = statusEnum.stage1;
    |      if (stage==2) status = statusEnum.stage2;
    |      if (stage==3) status = statusEnum.stage3;
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'Object':
    |  function changeStage(uint8 stage) public onlyObserver {
    |      if (stage==1) status = statusEnum.stage1;
  > |      if (stage==2) status = statusEnum.stage2;
    |      if (stage==3) status = statusEnum.stage3;
    |      if (stage==4) status = statusEnum.stage4;
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'Object':
    |      if (stage==1) status = statusEnum.stage1;
    |      if (stage==2) status = statusEnum.stage2;
  > |      if (stage==3) status = statusEnum.stage3;
    |      if (stage==4) status = statusEnum.stage4;
    |      if (stage==5) status = statusEnum.stage5;
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Object':
    |      if (stage==2) status = statusEnum.stage2;
    |      if (stage==3) status = statusEnum.stage3;
  > |      if (stage==4) status = statusEnum.stage4;
    |      if (stage==5) status = statusEnum.stage5;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Object':
    |      if (stage==3) status = statusEnum.stage3;
    |      if (stage==4) status = statusEnum.stage4;
  > |      if (stage==5) status = statusEnum.stage5;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Object':
    | * @author Vladimir Kovalchuk
    | */
  > |contract Object is BuildingStatus {
    |
    |  /* Name of an object */
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'Object':
    |  function setPermissionManager(address _permadr) public onlyOwner {
    |    require(_permadr != 0x0);
  > |    permissionManager = PermissionManager(_permadr);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'Object':
    |  function setObserver(address _observer) public onlyOwner {
    |    require(_observer != 0x0);
  > |    observer = _observer;
    |    ObserverChanged(_observer);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'Object':
    |  function setToken(address _token) public onlyOwner {
    |    require(_token != 0x0);
  > |    token = ERC223Interface(_token);
    |    TokenChanged(_token);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'Object':
    |  function setHold(address _hold) public onlyOwner {
    |    require(_hold != 0x0);
  > |    hold = _hold;
    |    HoldChanged(_hold);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'Object':
    |  function setCrowdsale(address _crowdsale) public onlyOwner {
    |    require(_crowdsale != 0x0);
  > |    crowdsale = _crowdsale;
    |    CrowdsaleChanged(_crowdsale);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'Object':
    |
    |  function completeStatus(string newReport) public onlyOwner notCompleted {
  > |    status = statusEnum.completed;
    |    report = newReport;
    |    Completed(report);
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(374)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(39)

[33mWarning[0m for LockedEther in contract 'PermissionManager':
    | * Manager that stores permitted addresses 
    | */
  > |contract PermissionManager is Ownable {
    |    mapping (address => bool) permittedAddresses;
    |
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(120)

[31mViolation[0m for MissingInputValidation in contract 'PermissionManager':
    |    mapping (address => bool) permittedAddresses;
    |
  > |    function addAddress(address newAddress) public onlyOwner {
    |        permittedAddresses[newAddress] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'PermissionManager':
    |    }
    |
  > |    function removeAddress(address remAddress) public onlyOwner {
    |        permittedAddresses[remAddress] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'PermissionManager':
    |    }
    |
  > |    function isPermitted(address pAddress) public view returns(bool) {
    |        if (permittedAddresses[pAddress]) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'PermissionManager':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'PermissionManager':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionManager':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionManager':
    |
    |    function addAddress(address newAddress) public onlyOwner {
  > |        permittedAddresses[newAddress] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionManager':
    |
    |    function removeAddress(address remAddress) public onlyOwner {
  > |        permittedAddresses[remAddress] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9a100db3bdbd69600e949a9bc650ebf336811afd.sol(128)


