Processing contract: /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol:ERC223Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol:ERC223ReceivingContract
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol:Hold
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol:PermissionManager
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol:Registry
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol:UnityToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC223ReceivingContract':
    | */
    | 
  > |contract ERC223ReceivingContract {
    |
    |  struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(244)

[31mViolation[0m for MissingInputValidation in contract 'ERC223ReceivingContract':
    |   * @param _data  Transaction metadata.
    |   */
  > |  function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |    TKN memory tkn;
    |    tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(260)

[33mWarning[0m for MissingInputValidation in contract 'ERC223ReceivingContract':
    | */
    | 
  > |contract ERC223ReceivingContract {
    |
    |  struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(244)

[31mViolation[0m for DAOConstantGas in contract 'Hold':
    |        require(balReleased > 0);
    |        require(this.balance >= balReleased);
  > |        multisig.transfer(balReleased);
    |        withdrawed += balReleased;
    |        EthReleased(balReleased);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(494)

[31mViolation[0m for DAOConstantGas in contract 'Hold':
    |        require(this.balance >= n);
    |        require(getBalanceReleased() >= n);
  > |        multisig.transfer(n);
    |        withdrawed += n;
    |        EthReleased(n);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(502)

[31mViolation[0m for DAOConstantGas in contract 'Hold':
    |                EthAmount -=  EthAmount * (percentage / 100 * currentStage);
    |
  > |                currentParticipantAddress.transfer(EthAmount);
    |                EthRefunded(currentParticipantAddress, EthAmount);
    |                hasWithdrawedEth[currentParticipantAddress] = true;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(550)

[33mWarning[0m for DAOConstantGas in contract 'Hold':
    |        require(now > dateDeployed + 183 days);
    |        uint balance = getBalance();
  > |        owner.transfer(getBalance());
    |        EthReturnedToOwner(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(533)

[33mWarning[0m for LockedEther in contract 'Hold':
    | * @author Vladimir Kovalchuk
    | */
  > |contract Hold is Ownable {
    |
    |    uint8 stages = 5;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(431)

[31mViolation[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |    function setInitialBalance(uint inBal) public {
    |        initialBalance = inBal;
    |        InitialBalanceChanged(inBal);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(485)

[31mViolation[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |  function getWithdrawed(address contrib) public onlyPermitted view returns (bool) {
    |    return hasWithdrawedEth[contrib];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(563)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |
    |    uint8 stages = 5;
  > |    uint8 public percentage;
    |    uint8 public currentStage;
    |    uint public initialBalance;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(434)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    uint8 stages = 5;
    |    uint8 public percentage;
  > |    uint8 public currentStage;
    |    uint public initialBalance;
    |    uint public withdrawed;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(435)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    uint8 public percentage;
    |    uint8 public currentStage;
  > |    uint public initialBalance;
    |    uint public withdrawed;
    |    
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(436)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    uint8 public currentStage;
    |    uint public initialBalance;
  > |    uint public withdrawed;
    |    
    |    address public multisig;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(437)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    uint public withdrawed;
    |    
  > |    address public multisig;
    |    Registry registry;
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(439)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    Registry registry;
    |
  > |    PermissionManager public permissionManager;
    |    uint nextContributorToTransferEth;
    |    address public observer;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(442)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    PermissionManager public permissionManager;
    |    uint nextContributorToTransferEth;
  > |    address public observer;
    |    uint dateDeployed;
    |    mapping(address => bool) private hasWithdrawedEth;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(444)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |    function setPermissionManager(address _permadr) public onlyOwner {
    |        require(_permadr != 0x0);
    |        permissionManager = PermissionManager(_permadr);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(475)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |    function setObserver(address observerAddr) public onlyOwner {
    |        require(observerAddr != 0x0);
    |        observer = observerAddr;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(480)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |    function releaseAllETH() onlyPermitted public {
    |        uint balReleased = getBalanceReleased();
    |        require(balReleased > 0);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(490)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    } 
    |
  > |    function getBalance() public view returns (uint) {
    |        return this.balance;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(507)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |    function changeStageAndReleaseETH() public onlyObserver {
    |        uint8 newStage = currentStage + 1;
    |        require(newStage <= stages);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(511)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |    function changeStage() public onlyObserver {
    |        uint8 newStage = currentStage + 1;
    |        require(newStage <= stages);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(519)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |    function getBalanceReleased() public view returns (uint) {
    |        return initialBalance * percentage * currentStage / 100 - withdrawed ;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(526)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |    function returnETHByOwner() public onlyOwner {
    |        require(now > dateDeployed + 183 days);
    |        uint balance = getBalance();
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(530)

[31mViolation[0m for TODAmount in contract 'Hold':
    |        require(now > dateDeployed + 183 days);
    |        uint balance = getBalance();
  > |        owner.transfer(getBalance());
    |        EthReturnedToOwner(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(533)

[31mViolation[0m for TODAmount in contract 'Hold':
    |                EthAmount -=  EthAmount * (percentage / 100 * currentStage);
    |
  > |                currentParticipantAddress.transfer(EthAmount);
    |                EthRefunded(currentParticipantAddress, EthAmount);
    |                hasWithdrawedEth[currentParticipantAddress] = true;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(550)

[31mViolation[0m for TODReceiver in contract 'Hold':
    |        require(now > dateDeployed + 183 days);
    |        uint balance = getBalance();
  > |        owner.transfer(getBalance());
    |        EthReturnedToOwner(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(533)

[33mWarning[0m for TODReceiver in contract 'Hold':
    |                EthAmount -=  EthAmount * (percentage / 100 * currentStage);
    |
  > |                currentParticipantAddress.transfer(EthAmount);
    |                EthRefunded(currentParticipantAddress, EthAmount);
    |                hasWithdrawedEth[currentParticipantAddress] = true;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(550)

[33mWarning[0m for UnhandledException in contract 'Hold':
    |
    |    modifier onlyPermitted() {
  > |        require(permissionManager.isPermitted(msg.sender) || msg.sender == owner);
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(455)

[33mWarning[0m for UnhandledException in contract 'Hold':
    |        require(balReleased > 0);
    |        require(this.balance >= balReleased);
  > |        multisig.transfer(balReleased);
    |        withdrawed += balReleased;
    |        EthReleased(balReleased);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(494)

[33mWarning[0m for UnhandledException in contract 'Hold':
    |        require(this.balance >= n);
    |        require(getBalanceReleased() >= n);
  > |        multisig.transfer(n);
    |        withdrawed += n;
    |        EthReleased(n);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(502)

[33mWarning[0m for UnhandledException in contract 'Hold':
    |        require(now > dateDeployed + 183 days);
    |        uint balance = getBalance();
  > |        owner.transfer(getBalance());
    |        EthReturnedToOwner(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(533)

[33mWarning[0m for UnhandledException in contract 'Hold':
    |
    |        for (uint cnt = 0; cnt < _numberOfReturns; cnt++) {
  > |            currentParticipantAddress = registry.getContributorByIndex(nextContributorToTransferEth);
    |            if (currentParticipantAddress == 0x0) 
    |                return;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(542)

[33mWarning[0m for UnhandledException in contract 'Hold':
    |
    |            if (!hasWithdrawedEth[currentParticipantAddress]) {
  > |                uint EthAmount = registry.getContributionETH(currentParticipantAddress);
    |                EthAmount -=  EthAmount * (percentage / 100 * currentStage);
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(547)

[33mWarning[0m for UnhandledException in contract 'Hold':
    |                EthAmount -=  EthAmount * (percentage / 100 * currentStage);
    |
  > |                currentParticipantAddress.transfer(EthAmount);
    |                EthRefunded(currentParticipantAddress, EthAmount);
    |                hasWithdrawedEth[currentParticipantAddress] = true;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(550)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hold':
    |
    |    modifier onlyPermitted() {
  > |        require(permissionManager.isPermitted(msg.sender) || msg.sender == owner);
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(455)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hold':
    |        require(now > dateDeployed + 183 days);
    |        uint balance = getBalance();
  > |        owner.transfer(getBalance());
    |        EthReturnedToOwner(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(533)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hold':
    |
    |        for (uint cnt = 0; cnt < _numberOfReturns; cnt++) {
  > |            currentParticipantAddress = registry.getContributorByIndex(nextContributorToTransferEth);
    |            if (currentParticipantAddress == 0x0) 
    |                return;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(542)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hold':
    |
    |            if (!hasWithdrawedEth[currentParticipantAddress]) {
  > |                uint EthAmount = registry.getContributionETH(currentParticipantAddress);
    |                EthAmount -=  EthAmount * (percentage / 100 * currentStage);
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(547)

[31mViolation[0m for UnrestrictedWrite in contract 'Hold':
    |
    |    function setInitialBalance(uint inBal) public {
  > |        initialBalance = inBal;
    |        InitialBalanceChanged(inBal);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(486)

[31mViolation[0m for UnrestrictedWrite in contract 'Hold':
    |        require(this.balance >= balReleased);
    |        multisig.transfer(balReleased);
  > |        withdrawed += balReleased;
    |        EthReleased(balReleased);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(495)

[31mViolation[0m for UnrestrictedWrite in contract 'Hold':
    |        require(getBalanceReleased() >= n);
    |        multisig.transfer(n);
  > |        withdrawed += n;
    |        EthReleased(n);
    |    } 
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(503)

[31mViolation[0m for UnrestrictedWrite in contract 'Hold':
    |                currentParticipantAddress.transfer(EthAmount);
    |                EthRefunded(currentParticipantAddress, EthAmount);
  > |                hasWithdrawedEth[currentParticipantAddress] = true;
    |            }
    |            nextContributorToTransferEth += 1;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(552)

[31mViolation[0m for UnrestrictedWrite in contract 'Hold':
    |                hasWithdrawedEth[currentParticipantAddress] = true;
    |            }
  > |            nextContributorToTransferEth += 1;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(554)

[33mWarning[0m for UnrestrictedWrite in contract 'Hold':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Hold':
    |    function setPermissionManager(address _permadr) public onlyOwner {
    |        require(_permadr != 0x0);
  > |        permissionManager = PermissionManager(_permadr);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(477)

[33mWarning[0m for UnrestrictedWrite in contract 'Hold':
    |    function setObserver(address observerAddr) public onlyOwner {
    |        require(observerAddr != 0x0);
  > |        observer = observerAddr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'Hold':
    |        uint8 newStage = currentStage + 1;
    |        require(newStage <= stages);
  > |        currentStage = newStage;
    |        StageChanged(newStage);
    |        releaseAllETH();
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(514)

[33mWarning[0m for UnrestrictedWrite in contract 'Hold':
    |        uint8 newStage = currentStage + 1;
    |        require(newStage <= stages);
  > |        currentStage = newStage;
    |        StageChanged(newStage);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(522)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(39)

[33mWarning[0m for LockedEther in contract 'PermissionManager':
    | * Manager that stores permitted addresses 
    | */
  > |contract PermissionManager is Ownable {
    |    mapping (address => bool) permittedAddresses;
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'PermissionManager':
    |    mapping (address => bool) permittedAddresses;
    |
  > |    function addAddress(address newAddress) public onlyOwner {
    |        permittedAddresses[newAddress] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'PermissionManager':
    |    }
    |
  > |    function removeAddress(address remAddress) public onlyOwner {
    |        permittedAddresses[remAddress] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'PermissionManager':
    |    }
    |
  > |    function isPermitted(address pAddress) public view returns(bool) {
    |        if (permittedAddresses[pAddress]) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'PermissionManager':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'PermissionManager':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionManager':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionManager':
    |
    |    function addAddress(address newAddress) public onlyOwner {
  > |        permittedAddresses[newAddress] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionManager':
    |
    |    function removeAddress(address remAddress) public onlyOwner {
  > |        permittedAddresses[remAddress] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(55)

[33mWarning[0m for LockedEther in contract 'Registry':
    |}
    |
  > |contract Registry is Ownable {
    |
    |  struct ContributorData {
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |    uint contributionRNTB;
    |  }
  > |  mapping(address => ContributorData) public contributorList;
    |  mapping(uint => address) private contributorIndexes;
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function isActiveContributor(address contributor) public view returns(bool) {
    |    return contributorList[contributor].isActive;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function removeContribution(address contributor) public onlyPermitted {
    |    contributorList[contributor].isActive = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function setCompleted(bool compl) public onlyPermitted {
    |    completed = compl;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function addContribution(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote ) public onlyPermitted {
    |    
    |    if (contributorList[_contributor].isActive == false) {
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function editContribution(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
    |    if (contributorList[_contributor].isActive == true) {
    |        contributorList[_contributor].contributionETH = _amount;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function addContributor(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
    |    contributorList[_contributor].isActive = true;
    |    contributorList[_contributor].contributionETH = _amount;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(145)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributionETH(address _contributor) public view returns (uint) {
    |      return contributorList[_contributor].contributionETH;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(157)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributionUSD(address _contributor) public view returns (uint) {
    |      return contributorList[_contributor].contributionUSD;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(161)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributionRNTB(address _contributor) public view returns (uint) {
    |      return contributorList[_contributor].contributionRNTB;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(165)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributionTokens(address _contributor) public view returns (uint) {
    |      return contributorList[_contributor].tokensIssued;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(169)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function addRNTBContribution(address _contributor, uint _amount) public onlyPermitted {
    |    if (contributorList[_contributor].isActive == false) {
    |        contributorList[_contributor].isActive = true;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(173)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributorByIndex(uint index) public view  returns (address) {
    |      return contributorIndexes[index];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    |
    |  /* Permission manager contract */
  > |  PermissionManager public permissionManager;
    |
    |  bool public completed;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    |  PermissionManager public permissionManager;
    |
  > |  bool public completed;
    |
    |  modifier onlyPermitted() {
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function setPermissionManager(address _permadr) public onlyOwner {
    |    require(_permadr != 0x0);
    |    permissionManager = PermissionManager(_permadr);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributorAmount() public view returns(uint) {
    |      return nextContributorIndex;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(188)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |
    |  modifier onlyPermitted() {
  > |    require(permissionManager.isPermitted(msg.sender));
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(87)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |
    |  modifier onlyPermitted() {
  > |    require(permissionManager.isPermitted(msg.sender));
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |
    |  function removeContribution(address contributor) public onlyPermitted {
  > |    contributorList[contributor].isActive = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |
    |  function setCompleted(bool compl) public onlyPermitted {
  > |    completed = compl;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    
    |    if (contributorList[_contributor].isActive == false) {
  > |        contributorList[_contributor].isActive = true;
    |        contributorList[_contributor].contributionETH = _amount;
    |        contributorList[_contributor].contributionUSD = _amusd;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    if (contributorList[_contributor].isActive == false) {
    |        contributorList[_contributor].isActive = true;
  > |        contributorList[_contributor].contributionETH = _amount;
    |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].isActive = true;
    |        contributorList[_contributor].contributionETH = _amount;
  > |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
    |        contributorList[_contributor].quoteUSD = _quote;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].contributionETH = _amount;
    |        contributorList[_contributor].contributionUSD = _amusd;
  > |        contributorList[_contributor].tokensIssued = _tokens;
    |        contributorList[_contributor].quoteUSD = _quote;
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
  > |        contributorList[_contributor].quoteUSD = _quote;
    |
    |        contributorIndexes[nextContributorIndex] = _contributor;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].quoteUSD = _quote;
    |
  > |        contributorIndexes[nextContributorIndex] = _contributor;
    |        nextContributorIndex++;
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |
    |        contributorIndexes[nextContributorIndex] = _contributor;
  > |        nextContributorIndex++;
    |    } else {
    |      contributorList[_contributor].contributionETH += _amount;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        nextContributorIndex++;
    |    } else {
  > |      contributorList[_contributor].contributionETH += _amount;
    |      contributorList[_contributor].contributionUSD += _amusd;
    |      contributorList[_contributor].tokensIssued += _tokens;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    } else {
    |      contributorList[_contributor].contributionETH += _amount;
  > |      contributorList[_contributor].contributionUSD += _amusd;
    |      contributorList[_contributor].tokensIssued += _tokens;
    |      contributorList[_contributor].quoteUSD = _quote;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |      contributorList[_contributor].contributionETH += _amount;
    |      contributorList[_contributor].contributionUSD += _amusd;
  > |      contributorList[_contributor].tokensIssued += _tokens;
    |      contributorList[_contributor].quoteUSD = _quote;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |      contributorList[_contributor].contributionUSD += _amusd;
    |      contributorList[_contributor].tokensIssued += _tokens;
  > |      contributorList[_contributor].quoteUSD = _quote;
    |    }
    |    ContributionAdded(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued, contributorList[_contributor].quoteUSD);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |  function editContribution(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
    |    if (contributorList[_contributor].isActive == true) {
  > |        contributorList[_contributor].contributionETH = _amount;
    |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    if (contributorList[_contributor].isActive == true) {
    |        contributorList[_contributor].contributionETH = _amount;
  > |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
    |        contributorList[_contributor].quoteUSD = _quote;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].contributionETH = _amount;
    |        contributorList[_contributor].contributionUSD = _amusd;
  > |        contributorList[_contributor].tokensIssued = _tokens;
    |        contributorList[_contributor].quoteUSD = _quote;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
  > |        contributorList[_contributor].quoteUSD = _quote;
    |    }
    |     ContributionEdited(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued, contributorList[_contributor].quoteUSD);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(140)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |
    |  function addContributor(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
  > |    contributorList[_contributor].isActive = true;
    |    contributorList[_contributor].contributionETH = _amount;
    |    contributorList[_contributor].contributionUSD = _amusd;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |  function addContributor(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
    |    contributorList[_contributor].isActive = true;
  > |    contributorList[_contributor].contributionETH = _amount;
    |    contributorList[_contributor].contributionUSD = _amusd;
    |    contributorList[_contributor].tokensIssued = _tokens;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    contributorList[_contributor].isActive = true;
    |    contributorList[_contributor].contributionETH = _amount;
  > |    contributorList[_contributor].contributionUSD = _amusd;
    |    contributorList[_contributor].tokensIssued = _tokens;
    |    contributorList[_contributor].quoteUSD = _quote;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    contributorList[_contributor].contributionETH = _amount;
    |    contributorList[_contributor].contributionUSD = _amusd;
  > |    contributorList[_contributor].tokensIssued = _tokens;
    |    contributorList[_contributor].quoteUSD = _quote;
    |    contributorIndexes[nextContributorIndex] = _contributor;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    contributorList[_contributor].contributionUSD = _amusd;
    |    contributorList[_contributor].tokensIssued = _tokens;
  > |    contributorList[_contributor].quoteUSD = _quote;
    |    contributorIndexes[nextContributorIndex] = _contributor;
    |    nextContributorIndex++;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    contributorList[_contributor].tokensIssued = _tokens;
    |    contributorList[_contributor].quoteUSD = _quote;
  > |    contributorIndexes[nextContributorIndex] = _contributor;
    |    nextContributorIndex++;
    |    ContributionAdded(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued, contributorList[_contributor].quoteUSD);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    contributorList[_contributor].quoteUSD = _quote;
    |    contributorIndexes[nextContributorIndex] = _contributor;
  > |    nextContributorIndex++;
    |    ContributionAdded(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued, contributorList[_contributor].quoteUSD);
    | 
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |  function addRNTBContribution(address _contributor, uint _amount) public onlyPermitted {
    |    if (contributorList[_contributor].isActive == false) {
  > |        contributorList[_contributor].isActive = true;
    |        contributorList[_contributor].contributionRNTB = _amount;
    |        contributorIndexes[nextContributorIndex] = _contributor;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(175)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    if (contributorList[_contributor].isActive == false) {
    |        contributorList[_contributor].isActive = true;
  > |        contributorList[_contributor].contributionRNTB = _amount;
    |        contributorIndexes[nextContributorIndex] = _contributor;
    |        nextContributorIndex++;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(176)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].isActive = true;
    |        contributorList[_contributor].contributionRNTB = _amount;
  > |        contributorIndexes[nextContributorIndex] = _contributor;
    |        nextContributorIndex++;
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(177)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].contributionRNTB = _amount;
    |        contributorIndexes[nextContributorIndex] = _contributor;
  > |        nextContributorIndex++;
    |    } else {
    |      contributorList[_contributor].contributionETH += _amount;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(178)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        nextContributorIndex++;
    |    } else {
  > |      contributorList[_contributor].contributionETH += _amount;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'Registry':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Registry':
    |  function setPermissionManager(address _permadr) public onlyOwner {
    |    require(_permadr != 0x0);
  > |    permissionManager = PermissionManager(_permadr);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(100)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(198)

[33mWarning[0m for LockedEther in contract 'UnityToken':
    | */
    |
  > |contract UnityToken is ERC223Interface {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(300)

[33mWarning[0m for UnhandledException in contract 'UnityToken':
    |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
  > |      assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |      TransferContract(msg.sender, _to, _value, _data);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(350)

[33mWarning[0m for UnhandledException in contract 'UnityToken':
    |    balances[_to] = balances[_to].add(_value);
    |    ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    TransferContract(msg.sender, _to, _value, _data);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(412)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnityToken':
    |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
  > |      assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |      TransferContract(msg.sender, _to, _value, _data);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(350)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnityToken':
    |    balances[_to] = balances[_to].add(_value);
    |    ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    TransferContract(msg.sender, _to, _value, _data);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(412)

[33mWarning[0m for UnrestrictedWrite in contract 'UnityToken':
    |        revert();
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'UnityToken':
    |    if (balanceOf(msg.sender) < _value)
    |      revert();
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'UnityToken':
    |    if (balanceOf(msg.sender) < _value)
    |      revert();
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'UnityToken':
    |
    |  function addAllowed(address newAddress) public onlyOwner {
  > |    allowedAddresses[newAddress] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'UnityToken':
    |
    |  function removeAllowed(address remAddress) public onlyOwner {
  > |    allowedAddresses[remAddress] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x198cf24375eccdf599c624d10f0c6fb9b75ec215.sol(324)


