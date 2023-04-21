Processing contract: /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol:DatabaseInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol:Destructible
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol:Registry
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol:RegistryInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol:Upgradable
Processing contract: /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol:ZapCoordinatorInterface
[33mWarning[0m for LockedEther in contract 'Destructible':
    |// File: contracts/lib/lifecycle/Destructible.sol
    |
  > |contract Destructible is Ownable {
    |	function selfDestruct() public onlyOwner {
    |		selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'Destructible':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(23)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |// File: contracts/lib/ownership/Ownable.sol
    |
  > |contract Ownable {
    |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner,address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner,address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    /// @dev Allows the current owner to transfer control of the contract to a newOwner.
    |    /// @param newOwner The address to transfer ownership to.
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(23)

[31mViolation[0m for LockedEther in contract 'Registry':
    |
    |
  > |contract Registry is Destructible, RegistryInterface, Upgradable {
    |
    |    event NewProvider(
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(140)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |
    |    function _updateDependencies() internal {
  > |        address databaseAddress = coordinator.getContract("DATABASE");
    |        db = DatabaseInterface(databaseAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(161)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |
    |        setCurve(msg.sender, endpoint, curve);        
  > |        db.pushBytesArray(keccak256(abi.encodePacked('oracles', msg.sender, 'endpoints')), endpoint);
    |        db.setBytes32(keccak256(abi.encodePacked('oracles', msg.sender, endpoint, 'broker')), bytes32(broker));
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(201)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |        setCurve(msg.sender, endpoint, curve);        
    |        db.pushBytesArray(keccak256(abi.encodePacked('oracles', msg.sender, 'endpoints')), endpoint);
  > |        db.setBytes32(keccak256(abi.encodePacked('oracles', msg.sender, endpoint, 'broker')), bytes32(broker));
    |
    |        emit NewCurve(msg.sender, endpoint, curve, broker);
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(202)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |        if(!isProviderParamInitialized(msg.sender, key)){
    |            // initialize this provider param
  > |            db.setNumber(keccak256(abi.encodePacked('oracles', msg.sender, 'is_param_set', key)), 1);
    |            db.pushBytesArray(keccak256(abi.encodePacked('oracles', msg.sender, 'providerParams')), key);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(216)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |            // initialize this provider param
    |            db.setNumber(keccak256(abi.encodePacked('oracles', msg.sender, 'is_param_set', key)), 1);
  > |            db.pushBytesArray(keccak256(abi.encodePacked('oracles', msg.sender, 'providerParams')), key);
    |        }
    |        db.setBytes(keccak256(abi.encodePacked('oracles', msg.sender, 'providerParams', key)), value);
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(217)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |            db.pushBytesArray(keccak256(abi.encodePacked('oracles', msg.sender, 'providerParams')), key);
    |        }
  > |        db.setBytes(keccak256(abi.encodePacked('oracles', msg.sender, 'providerParams', key)), value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(219)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |        require(isProviderInitiated(provider), "Error: Provider is not yet initiated");
    |        require(isProviderParamInitialized(provider, key), "Error: Provider Parameter is not yet initialized");
  > |        return db.getBytes(keccak256(abi.encodePacked('oracles', provider, 'providerParams', key)));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(227)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |        // Provider must be initiated
    |        require(isProviderInitiated(provider), "Error: Provider is not yet initiated");
  > |        return db.getBytesArray(keccak256(abi.encodePacked('oracles', provider, 'providerParams')));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(234)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |        require(!getCurveUnset(msg.sender, endpoint), "Error: Curve is not yet set");
    |
  > |        db.setBytesArray(keccak256(abi.encodePacked('oracles', msg.sender, 'endpointParams', endpoint)), endpointParams);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(244)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |    {
    |        require(!getCurveUnset(provider, endpoint), "Error: Curve is not yet set");
  > |        return db.getIntArray(keccak256(abi.encodePacked('oracles', provider, 'curves', endpoint)));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(268)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |    function getProviderCurveLength(address provider, bytes32 endpoint) public view returns (uint256){
    |        require(!getCurveUnset(provider, endpoint), "Error: Curve is not yet set");
  > |        return db.getIntArray(keccak256(abi.encodePacked('oracles', provider, 'curves', endpoint))).length;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(273)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |    /// @dev get public key of provider
    |    function getPublicKey(address provider) public view returns (uint256) {
  > |        return db.getNumber(keccak256(abi.encodePacked("oracles", provider, "publicKey")));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(286)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |    /// @dev get title of provider
    |    function getTitle(address provider) public view returns (bytes32) {
  > |        return db.getBytes32(keccak256(abi.encodePacked("oracles", provider, "title")));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(291)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |    /// @dev get the endpoints of a provider
    |    function getProviderEndpoints(address provider) public view returns (bytes32[]) {
  > |        return db.getBytesArray(keccak256(abi.encodePacked("oracles", provider, "endpoints")));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(296)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |    /// @dev get all endpoint params
    |    function getEndpointParams(address provider, bytes32 endpoint) public view returns (bytes32[]) {
  > |        return db.getBytesArray(keccak256(abi.encodePacked('oracles', provider, 'endpointParams', endpoint)));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(301)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |    /// @dev get broker address for endpoint
    |    function getEndpointBroker(address oracleAddress, bytes32 endpoint) public view returns (address) {
  > |        return address(db.getBytes32(keccak256(abi.encodePacked('oracles', oracleAddress, endpoint, 'broker'))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(306)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |
    |    function getCurveUnset(address provider, bytes32 endpoint) public view returns (bool) {
  > |        return db.getIntArrayLength(keccak256(abi.encodePacked('oracles', provider, 'curves', endpoint))) == 0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(310)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |    /// @dev get provider address by index
    |    function getOracleAddress(uint256 index) public view returns (address) {
  > |        return db.getAddressArrayIndex(keccak256(abi.encodePacked('oracleIndex')), index);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(315)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |    /// @dev get all oracle addresses
    |    function getAllOracles() external view returns (address[]) {
  > |        return db.getAddressArray(keccak256(abi.encodePacked('oracleIndex')));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(320)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |    ///  @dev add new provider to mapping
    |    function createOracle(address provider, uint256 publicKey, bytes32 title) private {
  > |        db.setNumber(keccak256(abi.encodePacked('oracles', provider, "publicKey")), uint256(publicKey));
    |        db.setBytes32(keccak256(abi.encodePacked('oracles', provider, "title")), title);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(325)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |    function createOracle(address provider, uint256 publicKey, bytes32 title) private {
    |        db.setNumber(keccak256(abi.encodePacked('oracles', provider, "publicKey")), uint256(publicKey));
  > |        db.setBytes32(keccak256(abi.encodePacked('oracles', provider, "title")), title);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(326)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |    /// @dev add new provider address to oracles array
    |    function addOracle(address provider) private {
  > |        db.pushAddressArray(keccak256(abi.encodePacked('oracleIndex')), provider);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(331)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |        }
    |
  > |        db.setIntArray(keccak256(abi.encodePacked('oracles', provider, 'curves', endpoint)), curve);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(366)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |    // Determines whether this parameter has been initialized
    |    function isProviderParamInitialized(address provider, bytes32 key) private view returns (bool){
  > |        uint256 val = db.getNumber(keccak256(abi.encodePacked('oracles', provider, 'is_param_set', key)));
    |        return (val == 1) ? true : false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(371)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |
    |    function _updateDependencies() internal {
  > |        address databaseAddress = coordinator.getContract("DATABASE");
    |        db = DatabaseInterface(databaseAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(161)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |
    |        setCurve(msg.sender, endpoint, curve);        
  > |        db.pushBytesArray(keccak256(abi.encodePacked('oracles', msg.sender, 'endpoints')), endpoint);
    |        db.setBytes32(keccak256(abi.encodePacked('oracles', msg.sender, endpoint, 'broker')), bytes32(broker));
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(201)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |        setCurve(msg.sender, endpoint, curve);        
    |        db.pushBytesArray(keccak256(abi.encodePacked('oracles', msg.sender, 'endpoints')), endpoint);
  > |        db.setBytes32(keccak256(abi.encodePacked('oracles', msg.sender, endpoint, 'broker')), bytes32(broker));
    |
    |        emit NewCurve(msg.sender, endpoint, curve, broker);
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |        if(!isProviderParamInitialized(msg.sender, key)){
    |            // initialize this provider param
  > |            db.setNumber(keccak256(abi.encodePacked('oracles', msg.sender, 'is_param_set', key)), 1);
    |            db.pushBytesArray(keccak256(abi.encodePacked('oracles', msg.sender, 'providerParams')), key);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |            // initialize this provider param
    |            db.setNumber(keccak256(abi.encodePacked('oracles', msg.sender, 'is_param_set', key)), 1);
  > |            db.pushBytesArray(keccak256(abi.encodePacked('oracles', msg.sender, 'providerParams')), key);
    |        }
    |        db.setBytes(keccak256(abi.encodePacked('oracles', msg.sender, 'providerParams', key)), value);
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(217)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |            db.pushBytesArray(keccak256(abi.encodePacked('oracles', msg.sender, 'providerParams')), key);
    |        }
  > |        db.setBytes(keccak256(abi.encodePacked('oracles', msg.sender, 'providerParams', key)), value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(219)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |        require(isProviderInitiated(provider), "Error: Provider is not yet initiated");
    |        require(isProviderParamInitialized(provider, key), "Error: Provider Parameter is not yet initialized");
  > |        return db.getBytes(keccak256(abi.encodePacked('oracles', provider, 'providerParams', key)));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(227)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |        // Provider must be initiated
    |        require(isProviderInitiated(provider), "Error: Provider is not yet initiated");
  > |        return db.getBytesArray(keccak256(abi.encodePacked('oracles', provider, 'providerParams')));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(234)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |        require(!getCurveUnset(msg.sender, endpoint), "Error: Curve is not yet set");
    |
  > |        db.setBytesArray(keccak256(abi.encodePacked('oracles', msg.sender, 'endpointParams', endpoint)), endpointParams);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(244)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |    {
    |        require(!getCurveUnset(provider, endpoint), "Error: Curve is not yet set");
  > |        return db.getIntArray(keccak256(abi.encodePacked('oracles', provider, 'curves', endpoint)));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |    function getProviderCurveLength(address provider, bytes32 endpoint) public view returns (uint256){
    |        require(!getCurveUnset(provider, endpoint), "Error: Curve is not yet set");
  > |        return db.getIntArray(keccak256(abi.encodePacked('oracles', provider, 'curves', endpoint))).length;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(273)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |    /// @dev get public key of provider
    |    function getPublicKey(address provider) public view returns (uint256) {
  > |        return db.getNumber(keccak256(abi.encodePacked("oracles", provider, "publicKey")));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(286)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |    /// @dev get title of provider
    |    function getTitle(address provider) public view returns (bytes32) {
  > |        return db.getBytes32(keccak256(abi.encodePacked("oracles", provider, "title")));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |    /// @dev get the endpoints of a provider
    |    function getProviderEndpoints(address provider) public view returns (bytes32[]) {
  > |        return db.getBytesArray(keccak256(abi.encodePacked("oracles", provider, "endpoints")));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(296)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |    /// @dev get all endpoint params
    |    function getEndpointParams(address provider, bytes32 endpoint) public view returns (bytes32[]) {
  > |        return db.getBytesArray(keccak256(abi.encodePacked('oracles', provider, 'endpointParams', endpoint)));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(301)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |    /// @dev get broker address for endpoint
    |    function getEndpointBroker(address oracleAddress, bytes32 endpoint) public view returns (address) {
  > |        return address(db.getBytes32(keccak256(abi.encodePacked('oracles', oracleAddress, endpoint, 'broker'))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |
    |    function getCurveUnset(address provider, bytes32 endpoint) public view returns (bool) {
  > |        return db.getIntArrayLength(keccak256(abi.encodePacked('oracles', provider, 'curves', endpoint))) == 0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(310)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |    /// @dev get provider address by index
    |    function getOracleAddress(uint256 index) public view returns (address) {
  > |        return db.getAddressArrayIndex(keccak256(abi.encodePacked('oracleIndex')), index);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(315)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |    /// @dev get all oracle addresses
    |    function getAllOracles() external view returns (address[]) {
  > |        return db.getAddressArray(keccak256(abi.encodePacked('oracleIndex')));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(320)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |    ///  @dev add new provider to mapping
    |    function createOracle(address provider, uint256 publicKey, bytes32 title) private {
  > |        db.setNumber(keccak256(abi.encodePacked('oracles', provider, "publicKey")), uint256(publicKey));
    |        db.setBytes32(keccak256(abi.encodePacked('oracles', provider, "title")), title);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(325)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |    function createOracle(address provider, uint256 publicKey, bytes32 title) private {
    |        db.setNumber(keccak256(abi.encodePacked('oracles', provider, "publicKey")), uint256(publicKey));
  > |        db.setBytes32(keccak256(abi.encodePacked('oracles', provider, "title")), title);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(326)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |    /// @dev add new provider address to oracles array
    |    function addOracle(address provider) private {
  > |        db.pushAddressArray(keccak256(abi.encodePacked('oracleIndex')), provider);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(331)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |        }
    |
  > |        db.setIntArray(keccak256(abi.encodePacked('oracles', provider, 'curves', endpoint)), curve);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(366)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |    // Determines whether this parameter has been initialized
    |    function isProviderParamInitialized(address provider, bytes32 key) private view returns (bool){
  > |        uint256 val = db.getNumber(keccak256(abi.encodePacked('oracles', provider, 'is_param_set', key)));
    |        return (val == 1) ? true : false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'Registry':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'Registry':
    |    function _updateDependencies() internal {
    |        address databaseAddress = coordinator.getContract("DATABASE");
  > |        db = DatabaseInterface(databaseAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa863d9f98d43561b15de8c66bcb8ee1f6d427dd0.sol(162)


