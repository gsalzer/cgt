Processing contract: /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol:Bondage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol:BondageInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol:CurrentCostInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol:DatabaseInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol:Destructible
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol:Upgradable
Processing contract: /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol:ZapCoordinatorInterface
[33mWarning[0m for LockedEther in contract 'Bondage':
    |// File: contracts/platform/bondage/Bondage.sol
    |
  > |contract Bondage is Destructible, BondageInterface, Upgradable {
    |    DatabaseInterface public db;
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(156)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |
    |    function _updateDependencies() internal {
  > |        address databaseAddress = coordinator.getContract("DATABASE");
    |        db = DatabaseInterface(databaseAddress);
    |        arbiterAddress = coordinator.getContract("ARBITER");
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(184)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |        address databaseAddress = coordinator.getContract("DATABASE");
    |        db = DatabaseInterface(databaseAddress);
  > |        arbiterAddress = coordinator.getContract("ARBITER");
    |        dispatchAddress = coordinator.getContract("DISPATCH");
    |        token = ERC20(coordinator.getContract("ZAP_TOKEN")); 
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(186)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |        db = DatabaseInterface(databaseAddress);
    |        arbiterAddress = coordinator.getContract("ARBITER");
  > |        dispatchAddress = coordinator.getContract("DISPATCH");
    |        token = ERC20(coordinator.getContract("ZAP_TOKEN")); 
    |        currentCost = CurrentCostInterface(coordinator.getContract("CURRENT_COST")); 
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(187)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |        arbiterAddress = coordinator.getContract("ARBITER");
    |        dispatchAddress = coordinator.getContract("DISPATCH");
  > |        token = ERC20(coordinator.getContract("ZAP_TOKEN")); 
    |        currentCost = CurrentCostInterface(coordinator.getContract("CURRENT_COST")); 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(188)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |        dispatchAddress = coordinator.getContract("DISPATCH");
    |        token = ERC20(coordinator.getContract("ZAP_TOKEN")); 
  > |        currentCost = CurrentCostInterface(coordinator.getContract("CURRENT_COST")); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(189)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |    {
    |        uint256 issued = getDotsIssued(oracleAddress, endpoint);
  > |        return currentCost._costOfNDots(oracleAddress, endpoint, issued + 1, numDots - 1);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(290)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |        returns (uint256 cost)
    |    {
  > |        return currentCost._currentCostOfDot(oracleAddress, endpoint, totalBound);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(306)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |        returns (uint256 limit)
    |    {
  > |        return currentCost._dotLimit(oracleAddress, endpoint);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(320)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |        require(issued + numDots <= dotLimit(oracleAddress, endpoint), "Error: Dot limit exceeded");
    |        
  > |        uint256 numZap = currentCost._costOfNDots(oracleAddress, endpoint, issued + 1, numDots - 1);
    |
    |        // User must have approved contract to transfer working ZAP
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(349)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |
    |        // User must have approved contract to transfer working ZAP
  > |        require(token.transferFrom(msg.sender, this, numZap), "Error: User must have approved contract to transfer ZAP");
    |
    |        if (!isProviderInitialized(holderAddress, oracleAddress)) {            
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(352)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |        // Get the value of the dots
    |        uint256 issued = getDotsIssued(oracleAddress, endpoint);
  > |        numZap = currentCost._costOfNDots(oracleAddress, endpoint, issued + 1 - numDots, numDots - 1);
    |
    |        // Update the storage values
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(388)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |
    |        // Do the transfer
  > |        require(token.transfer(msg.sender, numZap), "Error: Transfer failed");
    |
    |        return numZap;
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(396)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |    /**** Get Methods ****/
    |    function isProviderInitialized(address holderAddress, address oracleAddress) public view returns (bool) {
  > |        return db.getNumber(keccak256(abi.encodePacked('holders', holderAddress, 'initialized', oracleAddress))) == 1 ? true : false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(403)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |    /// @dev get broker address for endpoint
    |    function getEndpointBroker(address oracleAddress, bytes32 endpoint) public view returns (address) {
  > |        return address(db.getBytes32(keccak256(abi.encodePacked('oracles', oracleAddress, endpoint, 'broker'))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(408)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |
    |    function getNumEscrow(address holderAddress, address oracleAddress, bytes32 endpoint) public view returns (uint256) {
  > |        return db.getNumber(keccak256(abi.encodePacked('escrow', holderAddress, oracleAddress, endpoint)));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(412)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |
    |    function getNumZap(address oracleAddress, bytes32 endpoint) public view returns (uint256) {
  > |        return db.getNumber(keccak256(abi.encodePacked('totalBound', oracleAddress, endpoint)));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(416)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |
    |    function getDotsIssued(address oracleAddress, bytes32 endpoint) public view returns (uint256) {
  > |        return db.getNumber(keccak256(abi.encodePacked('totalIssued', oracleAddress, endpoint)));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(420)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |
    |    function getBoundDots(address holderAddress, address oracleAddress, bytes32 endpoint) public view returns (uint256) {
  > |        return db.getNumber(keccak256(abi.encodePacked('holders', holderAddress, 'bonds', oracleAddress, endpoint)));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(424)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |
    |    function getIndexSize(address holderAddress) external view returns (uint256) {
  > |        return db.getAddressArrayLength(keccak256(abi.encodePacked('holders', holderAddress, 'oracleList')));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(428)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |
    |    function getOracleAddress(address holderAddress, uint256 index) public view returns (address) {
  > |        return db.getAddressArrayIndex(keccak256(abi.encodePacked('holders', holderAddress, 'oracleList')), index);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(432)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |    /**** Set Methods ****/
    |    function addHolderOracle(address holderAddress, address oracleAddress) internal {
  > |        db.pushAddressArray(keccak256(abi.encodePacked('holders', holderAddress, 'oracleList')), oracleAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(437)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |
    |    function setProviderInitialized(address holderAddress, address oracleAddress) internal {
  > |        db.setNumber(keccak256(abi.encodePacked('holders', holderAddress, 'initialized', oracleAddress)), 1);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(441)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |
    |    function updateEscrow(address holderAddress, address oracleAddress, bytes32 endpoint, uint256 numDots, bytes32 op) internal {
  > |        uint256 newEscrow = db.getNumber(keccak256(abi.encodePacked('escrow', holderAddress, oracleAddress, endpoint)));
    |
    |        if ( op == "sub" ) {
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(445)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |        }
    |
  > |        db.setNumber(keccak256(abi.encodePacked('escrow', holderAddress, oracleAddress, endpoint)), newEscrow);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(456)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |
    |    function updateBondValue(address holderAddress, address oracleAddress, bytes32 endpoint, uint256 numDots, bytes32 op) internal {
  > |        uint256 bondValue = db.getNumber(keccak256(abi.encodePacked('holders', holderAddress, 'bonds', oracleAddress, endpoint)));
    |        
    |        if (op == "sub") {
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(460)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |        }
    |
  > |        db.setNumber(keccak256(abi.encodePacked('holders', holderAddress, 'bonds', oracleAddress, endpoint)), bondValue);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(468)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |
    |    function updateTotalBound(address oracleAddress, bytes32 endpoint, uint256 numZap, bytes32 op) internal {
  > |        uint256 totalBound = db.getNumber(keccak256(abi.encodePacked('totalBound', oracleAddress, endpoint)));
    |        
    |        if (op == "sub"){
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(472)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |        }
    |        
  > |        db.setNumber(keccak256(abi.encodePacked('totalBound', oracleAddress, endpoint)), totalBound);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(483)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |
    |    function updateTotalIssued(address oracleAddress, bytes32 endpoint, uint256 numDots, bytes32 op) internal {
  > |        uint256 totalIssued = db.getNumber(keccak256(abi.encodePacked('totalIssued', oracleAddress, endpoint)));
    |        
    |        if (op == "sub"){
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(487)

[33mWarning[0m for UnhandledException in contract 'Bondage':
    |        }
    |    
  > |        db.setNumber(keccak256(abi.encodePacked('totalIssued', oracleAddress, endpoint)), totalIssued);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(498)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |
    |    function _updateDependencies() internal {
  > |        address databaseAddress = coordinator.getContract("DATABASE");
    |        db = DatabaseInterface(databaseAddress);
    |        arbiterAddress = coordinator.getContract("ARBITER");
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(184)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |        address databaseAddress = coordinator.getContract("DATABASE");
    |        db = DatabaseInterface(databaseAddress);
  > |        arbiterAddress = coordinator.getContract("ARBITER");
    |        dispatchAddress = coordinator.getContract("DISPATCH");
    |        token = ERC20(coordinator.getContract("ZAP_TOKEN")); 
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(186)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |        db = DatabaseInterface(databaseAddress);
    |        arbiterAddress = coordinator.getContract("ARBITER");
  > |        dispatchAddress = coordinator.getContract("DISPATCH");
    |        token = ERC20(coordinator.getContract("ZAP_TOKEN")); 
    |        currentCost = CurrentCostInterface(coordinator.getContract("CURRENT_COST")); 
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(187)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |        arbiterAddress = coordinator.getContract("ARBITER");
    |        dispatchAddress = coordinator.getContract("DISPATCH");
  > |        token = ERC20(coordinator.getContract("ZAP_TOKEN")); 
    |        currentCost = CurrentCostInterface(coordinator.getContract("CURRENT_COST")); 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |        dispatchAddress = coordinator.getContract("DISPATCH");
    |        token = ERC20(coordinator.getContract("ZAP_TOKEN")); 
  > |        currentCost = CurrentCostInterface(coordinator.getContract("CURRENT_COST")); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(189)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |    {
    |        uint256 issued = getDotsIssued(oracleAddress, endpoint);
  > |        return currentCost._costOfNDots(oracleAddress, endpoint, issued + 1, numDots - 1);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(290)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |        returns (uint256 cost)
    |    {
  > |        return currentCost._currentCostOfDot(oracleAddress, endpoint, totalBound);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |        returns (uint256 limit)
    |    {
  > |        return currentCost._dotLimit(oracleAddress, endpoint);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(320)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |        require(issued + numDots <= dotLimit(oracleAddress, endpoint), "Error: Dot limit exceeded");
    |        
  > |        uint256 numZap = currentCost._costOfNDots(oracleAddress, endpoint, issued + 1, numDots - 1);
    |
    |        // User must have approved contract to transfer working ZAP
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(349)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |
    |        // User must have approved contract to transfer working ZAP
  > |        require(token.transferFrom(msg.sender, this, numZap), "Error: User must have approved contract to transfer ZAP");
    |
    |        if (!isProviderInitialized(holderAddress, oracleAddress)) {            
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(352)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |        // Get the value of the dots
    |        uint256 issued = getDotsIssued(oracleAddress, endpoint);
  > |        numZap = currentCost._costOfNDots(oracleAddress, endpoint, issued + 1 - numDots, numDots - 1);
    |
    |        // Update the storage values
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(388)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |
    |        // Do the transfer
  > |        require(token.transfer(msg.sender, numZap), "Error: Transfer failed");
    |
    |        return numZap;
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(396)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |    /**** Get Methods ****/
    |    function isProviderInitialized(address holderAddress, address oracleAddress) public view returns (bool) {
  > |        return db.getNumber(keccak256(abi.encodePacked('holders', holderAddress, 'initialized', oracleAddress))) == 1 ? true : false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(403)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |    /// @dev get broker address for endpoint
    |    function getEndpointBroker(address oracleAddress, bytes32 endpoint) public view returns (address) {
  > |        return address(db.getBytes32(keccak256(abi.encodePacked('oracles', oracleAddress, endpoint, 'broker'))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(408)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |
    |    function getNumEscrow(address holderAddress, address oracleAddress, bytes32 endpoint) public view returns (uint256) {
  > |        return db.getNumber(keccak256(abi.encodePacked('escrow', holderAddress, oracleAddress, endpoint)));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(412)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |
    |    function getNumZap(address oracleAddress, bytes32 endpoint) public view returns (uint256) {
  > |        return db.getNumber(keccak256(abi.encodePacked('totalBound', oracleAddress, endpoint)));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(416)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |
    |    function getDotsIssued(address oracleAddress, bytes32 endpoint) public view returns (uint256) {
  > |        return db.getNumber(keccak256(abi.encodePacked('totalIssued', oracleAddress, endpoint)));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(420)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |
    |    function getBoundDots(address holderAddress, address oracleAddress, bytes32 endpoint) public view returns (uint256) {
  > |        return db.getNumber(keccak256(abi.encodePacked('holders', holderAddress, 'bonds', oracleAddress, endpoint)));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(424)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |
    |    function getIndexSize(address holderAddress) external view returns (uint256) {
  > |        return db.getAddressArrayLength(keccak256(abi.encodePacked('holders', holderAddress, 'oracleList')));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(428)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |
    |    function getOracleAddress(address holderAddress, uint256 index) public view returns (address) {
  > |        return db.getAddressArrayIndex(keccak256(abi.encodePacked('holders', holderAddress, 'oracleList')), index);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(432)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |    /**** Set Methods ****/
    |    function addHolderOracle(address holderAddress, address oracleAddress) internal {
  > |        db.pushAddressArray(keccak256(abi.encodePacked('holders', holderAddress, 'oracleList')), oracleAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(437)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |
    |    function setProviderInitialized(address holderAddress, address oracleAddress) internal {
  > |        db.setNumber(keccak256(abi.encodePacked('holders', holderAddress, 'initialized', oracleAddress)), 1);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(441)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |
    |    function updateEscrow(address holderAddress, address oracleAddress, bytes32 endpoint, uint256 numDots, bytes32 op) internal {
  > |        uint256 newEscrow = db.getNumber(keccak256(abi.encodePacked('escrow', holderAddress, oracleAddress, endpoint)));
    |
    |        if ( op == "sub" ) {
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(445)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |        }
    |
  > |        db.setNumber(keccak256(abi.encodePacked('escrow', holderAddress, oracleAddress, endpoint)), newEscrow);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(456)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |
    |    function updateBondValue(address holderAddress, address oracleAddress, bytes32 endpoint, uint256 numDots, bytes32 op) internal {
  > |        uint256 bondValue = db.getNumber(keccak256(abi.encodePacked('holders', holderAddress, 'bonds', oracleAddress, endpoint)));
    |        
    |        if (op == "sub") {
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(460)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |        }
    |
  > |        db.setNumber(keccak256(abi.encodePacked('holders', holderAddress, 'bonds', oracleAddress, endpoint)), bondValue);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(468)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |
    |    function updateTotalBound(address oracleAddress, bytes32 endpoint, uint256 numZap, bytes32 op) internal {
  > |        uint256 totalBound = db.getNumber(keccak256(abi.encodePacked('totalBound', oracleAddress, endpoint)));
    |        
    |        if (op == "sub"){
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(472)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |        }
    |        
  > |        db.setNumber(keccak256(abi.encodePacked('totalBound', oracleAddress, endpoint)), totalBound);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(483)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |
    |    function updateTotalIssued(address oracleAddress, bytes32 endpoint, uint256 numDots, bytes32 op) internal {
  > |        uint256 totalIssued = db.getNumber(keccak256(abi.encodePacked('totalIssued', oracleAddress, endpoint)));
    |        
    |        if (op == "sub"){
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(487)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bondage':
    |        }
    |    
  > |        db.setNumber(keccak256(abi.encodePacked('totalIssued', oracleAddress, endpoint)), totalIssued);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(498)

[33mWarning[0m for UnrestrictedWrite in contract 'Bondage':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'Bondage':
    |    function _updateDependencies() internal {
    |        address databaseAddress = coordinator.getContract("DATABASE");
  > |        db = DatabaseInterface(databaseAddress);
    |        arbiterAddress = coordinator.getContract("ARBITER");
    |        dispatchAddress = coordinator.getContract("DISPATCH");
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'Bondage':
    |        address databaseAddress = coordinator.getContract("DATABASE");
    |        db = DatabaseInterface(databaseAddress);
  > |        arbiterAddress = coordinator.getContract("ARBITER");
    |        dispatchAddress = coordinator.getContract("DISPATCH");
    |        token = ERC20(coordinator.getContract("ZAP_TOKEN")); 
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'Bondage':
    |        db = DatabaseInterface(databaseAddress);
    |        arbiterAddress = coordinator.getContract("ARBITER");
  > |        dispatchAddress = coordinator.getContract("DISPATCH");
    |        token = ERC20(coordinator.getContract("ZAP_TOKEN")); 
    |        currentCost = CurrentCostInterface(coordinator.getContract("CURRENT_COST")); 
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'Bondage':
    |        arbiterAddress = coordinator.getContract("ARBITER");
    |        dispatchAddress = coordinator.getContract("DISPATCH");
  > |        token = ERC20(coordinator.getContract("ZAP_TOKEN")); 
    |        currentCost = CurrentCostInterface(coordinator.getContract("CURRENT_COST")); 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'Bondage':
    |        dispatchAddress = coordinator.getContract("DISPATCH");
    |        token = ERC20(coordinator.getContract("ZAP_TOKEN")); 
  > |        currentCost = CurrentCostInterface(coordinator.getContract("CURRENT_COST")); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(189)

[33mWarning[0m for LockedEther in contract 'Destructible':
    |// File: contracts/lib/lifecycle/Destructible.sol
    |
  > |contract Destructible is Ownable {
    |	function selfDestruct() public onlyOwner {
    |		selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'Destructible':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(23)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |// File: contracts/lib/ownership/Ownable.sol
    |
  > |contract Ownable {
    |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner,address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner,address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    /// @dev Allows the current owner to transfer control of the contract to a newOwner.
    |    /// @param newOwner The address to transfer ownership to.
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x188f79b0a8edc10ad53285c47c3feaa0d2716e83.sol(23)


