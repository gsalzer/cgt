Processing contract: /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol:BondageInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol:Client1
Processing contract: /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol:Client2
Processing contract: /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol:Client3
Processing contract: /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol:Client4
Processing contract: /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol:ClientBytes32Array
Processing contract: /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol:ClientIntArray
Processing contract: /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol:DatabaseInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol:Destructible
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol:Dispatch
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol:DispatchInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol:OnChainProvider
Processing contract: /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol:Upgradable
Processing contract: /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol:ZapCoordinatorInterface
[33mWarning[0m for LockedEther in contract 'Destructible':
    |// File: contracts/lib/lifecycle/Destructible.sol
    |
  > |contract Destructible is Ownable {
    |	function selfDestruct() public onlyOwner {
    |		selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Destructible':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(23)

[31mViolation[0m for LockedEther in contract 'Dispatch':
    |
    |
  > |contract Dispatch is Destructible, DispatchInterface, Upgradable { 
    |
    |    enum Status { Pending, Fulfilled, Canceled }
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(216)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |
    |    function _updateDependencies() internal {
  > |        address databaseAddress = coordinator.getContract("DATABASE");
    |        db = DatabaseInterface(databaseAddress);
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(307)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |        db = DatabaseInterface(databaseAddress);
    |
  > |        bondageAddress = coordinator.getContract("BONDAGE");
    |        bondage = BondageInterface(bondageAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(310)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |        returns (uint256 id)
    |    {
  > |        uint256 dots = bondage.getBoundDots(msg.sender, provider, endpoint);
    |        bool onchainProvider = isContract(provider);
    |        bool onchainSubscriber = isContract(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(325)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |        if(dots >= 1) {
    |            //enough dots
  > |            bondage.escrowDots(msg.sender, provider, endpoint, 1);
    |
    |            id = uint256(keccak256(abi.encodePacked(block.number, now, userQuery, msg.sender, provider)));
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(330)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |            createQuery(id, provider, msg.sender, endpoint, userQuery, onchainSubscriber);
    |            if(onchainProvider) {
  > |                OnChainProvider(provider).receive(id, userQuery, endpoint, endpointParams, onchainSubscriber); 
    |            } else{
    |                emit Incoming(id, provider, msg.sender, userQuery, endpoint, endpointParams, onchainSubscriber);
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(336)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |
    |            // Re-escrow the previously returned dots
  > |            bondage.escrowDots(subscriber, provider, endpoint, 1);
    |
    |            // Emit the events
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(367)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |        setFulfilled(id);
    |
  > |        bondage.releaseDots(subscriber, provider, endpoint, 1);
    |
    |        emit FulfillQuery(subscriber, provider, endpoint);
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(375)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |
    |        // Return the dots to the subscriber
  > |        bondage.returnDots(subscriber, provider, endpoint, 1);
    |
    |        // Release an event
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(396)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |            revert();
    |        if(getSubscriberOnchain(id)) {
  > |            ClientBytes32Array(getSubscriber(id)).callback(id, response);
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(413)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |            revert();
    |        if(getSubscriberOnchain(id)) {
  > |            ClientIntArray(getSubscriber(id)).callback(id, response);
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(432)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |
    |        if(getSubscriberOnchain(id)) {
  > |            Client1(getSubscriber(id)).callback(id, response);
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(453)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |
    |        if(getSubscriberOnchain(id)) {
  > |            Client2(getSubscriber(id)).callback(id, response1, response2);
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(474)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |
    |        if(getSubscriberOnchain(id)) {
  > |            Client3(getSubscriber(id)).callback(id, response1, response2, response3);
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(497)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |
    |        if(getSubscriberOnchain(id)) {
  > |            Client4(getSubscriber(id)).callback(id, response1, response2, response3, response4);
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(521)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |    /// @param id request id
    |    function getProvider(uint256 id) public view returns (address) {
  > |        return address(db.getNumber(keccak256(abi.encodePacked('queries', id, 'provider'))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(535)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |    /// @param id request id
    |    function getSubscriber(uint256 id) public view returns (address) {
  > |        return address(db.getNumber(keccak256(abi.encodePacked('queries', id, 'subscriber'))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(541)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |    /// @param id request id
    |    function getEndpoint(uint256 id) public view returns (bytes32) {
  > |        return db.getBytes32(keccak256(abi.encodePacked('queries', id, 'endpoint')));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(547)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |    /// @param id request id
    |    function getStatus(uint256 id) public view returns (uint256) {
  > |        return db.getNumber(keccak256(abi.encodePacked('queries', id, 'status')));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(553)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |    /// @param id request id
    |    function getCancel(uint256 id) public view returns (uint256) {
  > |        return db.getNumber(keccak256(abi.encodePacked('queries', id, 'cancelBlock')));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(559)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |    /// @param id request id
    |    function getUserQuery(uint256 id) public view returns (string) {
  > |        return db.getString(keccak256(abi.encodePacked('queries', id, 'userQuery')));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(565)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |    /// @param id request id
    |    function getSubscriberOnchain(uint256 id) public view returns (bool) {
  > |        uint res = db.getNumber(keccak256(abi.encodePacked('queries', id, 'onchainSubscriber')));
    |        return res == 1 ? true : false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(571)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |        private
    |    {
  > |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'provider')), uint256(provider));
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'subscriber')), uint256(subscriber));
    |        db.setBytes32(keccak256(abi.encodePacked('queries', id, 'endpoint')), endpoint);
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(586)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |    {
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'provider')), uint256(provider));
  > |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'subscriber')), uint256(subscriber));
    |        db.setBytes32(keccak256(abi.encodePacked('queries', id, 'endpoint')), endpoint);
    |        db.setString(keccak256(abi.encodePacked('queries', id, 'userQuery')), userQuery);
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(587)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'provider')), uint256(provider));
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'subscriber')), uint256(subscriber));
  > |        db.setBytes32(keccak256(abi.encodePacked('queries', id, 'endpoint')), endpoint);
    |        db.setString(keccak256(abi.encodePacked('queries', id, 'userQuery')), userQuery);
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Pending));
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(588)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'subscriber')), uint256(subscriber));
    |        db.setBytes32(keccak256(abi.encodePacked('queries', id, 'endpoint')), endpoint);
  > |        db.setString(keccak256(abi.encodePacked('queries', id, 'userQuery')), userQuery);
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Pending));
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'onchainSubscriber')), onchainSubscriber ? 1 : 0);
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(589)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |        db.setBytes32(keccak256(abi.encodePacked('queries', id, 'endpoint')), endpoint);
    |        db.setString(keccak256(abi.encodePacked('queries', id, 'userQuery')), userQuery);
  > |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Pending));
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'onchainSubscriber')), onchainSubscriber ? 1 : 0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(590)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |        db.setString(keccak256(abi.encodePacked('queries', id, 'userQuery')), userQuery);
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Pending));
  > |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'onchainSubscriber')), onchainSubscriber ? 1 : 0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(591)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |
    |    function setFulfilled(uint256 id) private {
  > |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Fulfilled));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(595)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |    function setCanceled(uint256 id, bool canceled) private {
    |        if ( canceled ) {
  > |            db.setNumber(keccak256(abi.encodePacked('queries', id, 'cancelBlock')), block.number);
    |            db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Canceled));
    |        }
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(600)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |        if ( canceled ) {
    |            db.setNumber(keccak256(abi.encodePacked('queries', id, 'cancelBlock')), block.number);
  > |            db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Canceled));
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(601)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |        }
    |        else {
  > |            db.setNumber(keccak256(abi.encodePacked('queries', id, 'cancelBlock')), 0);
    |            db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Pending));            
    |        }
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(604)

[33mWarning[0m for UnhandledException in contract 'Dispatch':
    |        else {
    |            db.setNumber(keccak256(abi.encodePacked('queries', id, 'cancelBlock')), 0);
  > |            db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Pending));            
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(605)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |
    |    function _updateDependencies() internal {
  > |        address databaseAddress = coordinator.getContract("DATABASE");
    |        db = DatabaseInterface(databaseAddress);
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(307)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |        db = DatabaseInterface(databaseAddress);
    |
  > |        bondageAddress = coordinator.getContract("BONDAGE");
    |        bondage = BondageInterface(bondageAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(310)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |        returns (uint256 id)
    |    {
  > |        uint256 dots = bondage.getBoundDots(msg.sender, provider, endpoint);
    |        bool onchainProvider = isContract(provider);
    |        bool onchainSubscriber = isContract(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(325)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |        if(dots >= 1) {
    |            //enough dots
  > |            bondage.escrowDots(msg.sender, provider, endpoint, 1);
    |
    |            id = uint256(keccak256(abi.encodePacked(block.number, now, userQuery, msg.sender, provider)));
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(330)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |            createQuery(id, provider, msg.sender, endpoint, userQuery, onchainSubscriber);
    |            if(onchainProvider) {
  > |                OnChainProvider(provider).receive(id, userQuery, endpoint, endpointParams, onchainSubscriber); 
    |            } else{
    |                emit Incoming(id, provider, msg.sender, userQuery, endpoint, endpointParams, onchainSubscriber);
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(336)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |
    |            // Re-escrow the previously returned dots
  > |            bondage.escrowDots(subscriber, provider, endpoint, 1);
    |
    |            // Emit the events
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(367)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |        setFulfilled(id);
    |
  > |        bondage.releaseDots(subscriber, provider, endpoint, 1);
    |
    |        emit FulfillQuery(subscriber, provider, endpoint);
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(375)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |
    |        // Return the dots to the subscriber
  > |        bondage.returnDots(subscriber, provider, endpoint, 1);
    |
    |        // Release an event
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(396)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |            revert();
    |        if(getSubscriberOnchain(id)) {
  > |            ClientBytes32Array(getSubscriber(id)).callback(id, response);
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(413)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |            revert();
    |        if(getSubscriberOnchain(id)) {
  > |            ClientIntArray(getSubscriber(id)).callback(id, response);
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(432)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |
    |        if(getSubscriberOnchain(id)) {
  > |            Client1(getSubscriber(id)).callback(id, response);
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(453)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |
    |        if(getSubscriberOnchain(id)) {
  > |            Client2(getSubscriber(id)).callback(id, response1, response2);
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(474)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |
    |        if(getSubscriberOnchain(id)) {
  > |            Client3(getSubscriber(id)).callback(id, response1, response2, response3);
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(497)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |
    |        if(getSubscriberOnchain(id)) {
  > |            Client4(getSubscriber(id)).callback(id, response1, response2, response3, response4);
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(521)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |    /// @param id request id
    |    function getProvider(uint256 id) public view returns (address) {
  > |        return address(db.getNumber(keccak256(abi.encodePacked('queries', id, 'provider'))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(535)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |    /// @param id request id
    |    function getSubscriber(uint256 id) public view returns (address) {
  > |        return address(db.getNumber(keccak256(abi.encodePacked('queries', id, 'subscriber'))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(541)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |    /// @param id request id
    |    function getEndpoint(uint256 id) public view returns (bytes32) {
  > |        return db.getBytes32(keccak256(abi.encodePacked('queries', id, 'endpoint')));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(547)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |    /// @param id request id
    |    function getStatus(uint256 id) public view returns (uint256) {
  > |        return db.getNumber(keccak256(abi.encodePacked('queries', id, 'status')));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(553)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |    /// @param id request id
    |    function getCancel(uint256 id) public view returns (uint256) {
  > |        return db.getNumber(keccak256(abi.encodePacked('queries', id, 'cancelBlock')));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(559)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |    /// @param id request id
    |    function getUserQuery(uint256 id) public view returns (string) {
  > |        return db.getString(keccak256(abi.encodePacked('queries', id, 'userQuery')));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(565)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |    /// @param id request id
    |    function getSubscriberOnchain(uint256 id) public view returns (bool) {
  > |        uint res = db.getNumber(keccak256(abi.encodePacked('queries', id, 'onchainSubscriber')));
    |        return res == 1 ? true : false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(571)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |        private
    |    {
  > |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'provider')), uint256(provider));
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'subscriber')), uint256(subscriber));
    |        db.setBytes32(keccak256(abi.encodePacked('queries', id, 'endpoint')), endpoint);
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(586)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |    {
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'provider')), uint256(provider));
  > |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'subscriber')), uint256(subscriber));
    |        db.setBytes32(keccak256(abi.encodePacked('queries', id, 'endpoint')), endpoint);
    |        db.setString(keccak256(abi.encodePacked('queries', id, 'userQuery')), userQuery);
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(587)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'provider')), uint256(provider));
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'subscriber')), uint256(subscriber));
  > |        db.setBytes32(keccak256(abi.encodePacked('queries', id, 'endpoint')), endpoint);
    |        db.setString(keccak256(abi.encodePacked('queries', id, 'userQuery')), userQuery);
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Pending));
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(588)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'subscriber')), uint256(subscriber));
    |        db.setBytes32(keccak256(abi.encodePacked('queries', id, 'endpoint')), endpoint);
  > |        db.setString(keccak256(abi.encodePacked('queries', id, 'userQuery')), userQuery);
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Pending));
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'onchainSubscriber')), onchainSubscriber ? 1 : 0);
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(589)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |        db.setBytes32(keccak256(abi.encodePacked('queries', id, 'endpoint')), endpoint);
    |        db.setString(keccak256(abi.encodePacked('queries', id, 'userQuery')), userQuery);
  > |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Pending));
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'onchainSubscriber')), onchainSubscriber ? 1 : 0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(590)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |        db.setString(keccak256(abi.encodePacked('queries', id, 'userQuery')), userQuery);
    |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Pending));
  > |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'onchainSubscriber')), onchainSubscriber ? 1 : 0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(591)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |
    |    function setFulfilled(uint256 id) private {
  > |        db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Fulfilled));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(595)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |    function setCanceled(uint256 id, bool canceled) private {
    |        if ( canceled ) {
  > |            db.setNumber(keccak256(abi.encodePacked('queries', id, 'cancelBlock')), block.number);
    |            db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Canceled));
    |        }
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(600)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |        if ( canceled ) {
    |            db.setNumber(keccak256(abi.encodePacked('queries', id, 'cancelBlock')), block.number);
  > |            db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Canceled));
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(601)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |        }
    |        else {
  > |            db.setNumber(keccak256(abi.encodePacked('queries', id, 'cancelBlock')), 0);
    |            db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Pending));            
    |        }
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(604)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dispatch':
    |        else {
    |            db.setNumber(keccak256(abi.encodePacked('queries', id, 'cancelBlock')), 0);
  > |            db.setNumber(keccak256(abi.encodePacked('queries', id, 'status')), uint256(Status.Pending));            
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(605)

[33mWarning[0m for UnrestrictedWrite in contract 'Dispatch':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'Dispatch':
    |    function _updateDependencies() internal {
    |        address databaseAddress = coordinator.getContract("DATABASE");
  > |        db = DatabaseInterface(databaseAddress);
    |
    |        bondageAddress = coordinator.getContract("BONDAGE");
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'Dispatch':
    |        db = DatabaseInterface(databaseAddress);
    |
  > |        bondageAddress = coordinator.getContract("BONDAGE");
    |        bondage = BondageInterface(bondageAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'Dispatch':
    |
    |        bondageAddress = coordinator.getContract("BONDAGE");
  > |        bondage = BondageInterface(bondageAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(311)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |// File: contracts/lib/ownership/Ownable.sol
    |
  > |contract Ownable {
    |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner,address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner,address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    /// @dev Allows the current owner to transfer control of the contract to a newOwner.
    |    /// @param newOwner The address to transfer ownership to.
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac0f9620c5940085eb5f3a07210d890aa4ceee11.sol(23)


