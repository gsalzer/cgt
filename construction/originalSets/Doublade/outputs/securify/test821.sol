Processing contract: /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol:DarknodeRegistry
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol:DarknodeRegistryStore
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol:LinkedList
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol:RepublicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(154)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(437)

[33mWarning[0m for LockedEther in contract 'DarknodeRegistry':
    |/// @notice DarknodeRegistry is responsible for the registration and
    |/// deregistration of Darknodes.
  > |contract DarknodeRegistry is Ownable {
    |    string public VERSION; // Passed in as a constructor parameter.
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(788)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |        require(_bond >= minimumBond, "insufficient bond");
    |        // require(ren.allowance(msg.sender, address(this)) >= _bond);
  > |        require(ren.transferFrom(msg.sender, address(this), _bond), "bond transfer failed");
    |        ren.transfer(address(store), _bond);
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(937)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |        // require(ren.allowance(msg.sender, address(this)) >= _bond);
    |        require(ren.transferFrom(msg.sender, address(this), _bond), "bond transfer failed");
  > |        ren.transfer(address(store), _bond);
    |
    |        // Flag this darknode for registration
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(938)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |
    |        // Flag this darknode for registration
  > |        store.appendDarknode(
    |            _darknodeID,
    |            msg.sender,
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(941)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |    /// @param _newOwner The address to transfer the ownership to.
    |    function transferStoreOwnership(address _newOwner) external onlyOwner {
  > |        store.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1021)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |        onlySlasher
    |    {
  > |        uint256 penalty = store.darknodeBond(_prover) / 2;
    |        uint256 reward = penalty / 4;
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1066)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |
    |        // Slash the bond of the failed prover in half
  > |        store.updateDarknodeBond(_prover, penalty);
    |
    |        // If the darknode has not been deregistered then deregister it
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1070)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |    ///        of this method must be the owner of this darknode.
    |    function refund(address _darknodeID) external onlyRefundable(_darknodeID) {
  > |        address darknodeOwner = store.darknodeOwner(_darknodeID);
    |
    |        // Remember the bond amount
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1092)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |
    |        // Remember the bond amount
  > |        uint256 amount = store.darknodeBond(_darknodeID);
    |
    |        // Erase the darknode from the registry
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1095)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |
    |        // Erase the darknode from the registry
  > |        store.removeDarknode(_darknodeID);
    |
    |        // Refund the owner by transferring REN
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1098)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |
    |        // Refund the owner by transferring REN
  > |        ren.transfer(darknodeOwner, amount);
    |
    |        // Emit an event.
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1101)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |    /// @param _darknodeID The ID of the darknode to retrieve the owner for.
    |    function getDarknodeOwner(address _darknodeID) external view returns (address) {
  > |        return store.darknodeOwner(_darknodeID);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1110)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |    /// @param _darknodeID The ID of the darknode to retrieve the bond for.
    |    function getDarknodeBond(address _darknodeID) external view returns (uint256) {
  > |        return store.darknodeBond(_darknodeID);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1116)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |    /// @param _darknodeID The ID of the darknode to retrieve the public key for.
    |    function getDarknodePublicKey(address _darknodeID) external view returns (bytes) {
  > |        return store.darknodePublicKey(_darknodeID);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1122)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |    /// @param _darknodeID The ID of the darknode to return
    |    function isPendingRegistration(address _darknodeID) external view returns (bool) {
  > |        uint256 registeredAt = store.darknodeRegisteredAt(_darknodeID);
    |        return registeredAt != 0 && registeredAt > currentEpoch.blocknumber;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1157)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |    /// this state a darknode is still considered registered.
    |    function isPendingDeregistration(address _darknodeID) external view returns (bool) {
  > |        uint256 deregisteredAt = store.darknodeDeregisteredAt(_darknodeID);
    |        return deregisteredAt != 0 && deregisteredAt > currentEpoch.blocknumber;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1164)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |    /// @notice Returns if a darknode is in the deregistered state.
    |    function isDeregistered(address _darknodeID) public view returns (bool) {
  > |        uint256 deregisteredAt = store.darknodeDeregisteredAt(_darknodeID);
    |        return deregisteredAt != 0 && deregisteredAt <= currentEpoch.blocknumber;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1170)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |    /// deregister yet.
    |    function isDeregisterable(address _darknodeID) public view returns (bool) {
  > |        uint256 deregisteredAt = store.darknodeDeregisteredAt(_darknodeID);
    |        // The Darknode is currently in the registered state and has not been
    |        // transitioned to the pending deregistration, or deregistered, state
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1178)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |    /// been deregistered and refunded.
    |    function isRefunded(address _darknodeID) public view returns (bool) {
  > |        uint256 registeredAt = store.darknodeRegisteredAt(_darknodeID);
    |        uint256 deregisteredAt = store.darknodeDeregisteredAt(_darknodeID);
    |        return registeredAt == 0 && deregisteredAt == 0;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1188)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |    function isRefunded(address _darknodeID) public view returns (bool) {
    |        uint256 registeredAt = store.darknodeRegisteredAt(_darknodeID);
  > |        uint256 deregisteredAt = store.darknodeDeregisteredAt(_darknodeID);
    |        return registeredAt == 0 && deregisteredAt == 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1189)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |    /// that have been in the deregistered state for one full epoch.
    |    function isRefundable(address _darknodeID) public view returns (bool) {
  > |        return isDeregistered(_darknodeID) && store.darknodeDeregisteredAt(_darknodeID) <= previousEpoch.blocknumber;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1196)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |    /// @param _epoch One of currentEpoch, previousEpoch
    |    function isRegisteredInEpoch(address _darknodeID, Epoch _epoch) private view returns (bool) {
  > |        uint256 registeredAt = store.darknodeRegisteredAt(_darknodeID);
    |        uint256 deregisteredAt = store.darknodeDeregisteredAt(_darknodeID);
    |        bool registered = registeredAt != 0 && registeredAt <= _epoch.blocknumber;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1214)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |    function isRegisteredInEpoch(address _darknodeID, Epoch _epoch) private view returns (bool) {
    |        uint256 registeredAt = store.darknodeRegisteredAt(_darknodeID);
  > |        uint256 deregisteredAt = store.darknodeDeregisteredAt(_darknodeID);
    |        bool registered = registeredAt != 0 && registeredAt <= _epoch.blocknumber;
    |        bool notDeregistered = deregisteredAt == 0 || deregisteredAt > _epoch.blocknumber;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1215)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |        address next = _start;
    |        if (next == 0x0) {
  > |            next = store.begin();
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1240)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |            }
    |            if (!includeNext) {
  > |                next = store.next(next);
    |                continue;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1256)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistry':
    |            }
    |            nodes[n] = next;
  > |            next = store.next(next);
    |            n += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1260)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |        require(_bond >= minimumBond, "insufficient bond");
    |        // require(ren.allowance(msg.sender, address(this)) >= _bond);
  > |        require(ren.transferFrom(msg.sender, address(this), _bond), "bond transfer failed");
    |        ren.transfer(address(store), _bond);
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(937)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |        // require(ren.allowance(msg.sender, address(this)) >= _bond);
    |        require(ren.transferFrom(msg.sender, address(this), _bond), "bond transfer failed");
  > |        ren.transfer(address(store), _bond);
    |
    |        // Flag this darknode for registration
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(938)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |
    |        // Flag this darknode for registration
  > |        store.appendDarknode(
    |            _darknodeID,
    |            msg.sender,
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(941)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |    /// @param _newOwner The address to transfer the ownership to.
    |    function transferStoreOwnership(address _newOwner) external onlyOwner {
  > |        store.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1021)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |        onlySlasher
    |    {
  > |        uint256 penalty = store.darknodeBond(_prover) / 2;
    |        uint256 reward = penalty / 4;
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1066)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |
    |        // Slash the bond of the failed prover in half
  > |        store.updateDarknodeBond(_prover, penalty);
    |
    |        // If the darknode has not been deregistered then deregister it
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1070)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |    ///        of this method must be the owner of this darknode.
    |    function refund(address _darknodeID) external onlyRefundable(_darknodeID) {
  > |        address darknodeOwner = store.darknodeOwner(_darknodeID);
    |
    |        // Remember the bond amount
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1092)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |
    |        // Remember the bond amount
  > |        uint256 amount = store.darknodeBond(_darknodeID);
    |
    |        // Erase the darknode from the registry
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1095)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |
    |        // Erase the darknode from the registry
  > |        store.removeDarknode(_darknodeID);
    |
    |        // Refund the owner by transferring REN
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1098)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |
    |        // Refund the owner by transferring REN
  > |        ren.transfer(darknodeOwner, amount);
    |
    |        // Emit an event.
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1101)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |    /// @param _darknodeID The ID of the darknode to retrieve the owner for.
    |    function getDarknodeOwner(address _darknodeID) external view returns (address) {
  > |        return store.darknodeOwner(_darknodeID);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1110)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |    /// @param _darknodeID The ID of the darknode to retrieve the bond for.
    |    function getDarknodeBond(address _darknodeID) external view returns (uint256) {
  > |        return store.darknodeBond(_darknodeID);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1116)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |    /// @param _darknodeID The ID of the darknode to retrieve the public key for.
    |    function getDarknodePublicKey(address _darknodeID) external view returns (bytes) {
  > |        return store.darknodePublicKey(_darknodeID);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1122)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |    /// @param _darknodeID The ID of the darknode to return
    |    function isPendingRegistration(address _darknodeID) external view returns (bool) {
  > |        uint256 registeredAt = store.darknodeRegisteredAt(_darknodeID);
    |        return registeredAt != 0 && registeredAt > currentEpoch.blocknumber;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1157)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |    /// this state a darknode is still considered registered.
    |    function isPendingDeregistration(address _darknodeID) external view returns (bool) {
  > |        uint256 deregisteredAt = store.darknodeDeregisteredAt(_darknodeID);
    |        return deregisteredAt != 0 && deregisteredAt > currentEpoch.blocknumber;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1164)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |    /// @notice Returns if a darknode is in the deregistered state.
    |    function isDeregistered(address _darknodeID) public view returns (bool) {
  > |        uint256 deregisteredAt = store.darknodeDeregisteredAt(_darknodeID);
    |        return deregisteredAt != 0 && deregisteredAt <= currentEpoch.blocknumber;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1170)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |    /// deregister yet.
    |    function isDeregisterable(address _darknodeID) public view returns (bool) {
  > |        uint256 deregisteredAt = store.darknodeDeregisteredAt(_darknodeID);
    |        // The Darknode is currently in the registered state and has not been
    |        // transitioned to the pending deregistration, or deregistered, state
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |    /// been deregistered and refunded.
    |    function isRefunded(address _darknodeID) public view returns (bool) {
  > |        uint256 registeredAt = store.darknodeRegisteredAt(_darknodeID);
    |        uint256 deregisteredAt = store.darknodeDeregisteredAt(_darknodeID);
    |        return registeredAt == 0 && deregisteredAt == 0;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |    function isRefunded(address _darknodeID) public view returns (bool) {
    |        uint256 registeredAt = store.darknodeRegisteredAt(_darknodeID);
  > |        uint256 deregisteredAt = store.darknodeDeregisteredAt(_darknodeID);
    |        return registeredAt == 0 && deregisteredAt == 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1189)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |    /// that have been in the deregistered state for one full epoch.
    |    function isRefundable(address _darknodeID) public view returns (bool) {
  > |        return isDeregistered(_darknodeID) && store.darknodeDeregisteredAt(_darknodeID) <= previousEpoch.blocknumber;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |    /// @param _epoch One of currentEpoch, previousEpoch
    |    function isRegisteredInEpoch(address _darknodeID, Epoch _epoch) private view returns (bool) {
  > |        uint256 registeredAt = store.darknodeRegisteredAt(_darknodeID);
    |        uint256 deregisteredAt = store.darknodeDeregisteredAt(_darknodeID);
    |        bool registered = registeredAt != 0 && registeredAt <= _epoch.blocknumber;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1214)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |    function isRegisteredInEpoch(address _darknodeID, Epoch _epoch) private view returns (bool) {
    |        uint256 registeredAt = store.darknodeRegisteredAt(_darknodeID);
  > |        uint256 deregisteredAt = store.darknodeDeregisteredAt(_darknodeID);
    |        bool registered = registeredAt != 0 && registeredAt <= _epoch.blocknumber;
    |        bool notDeregistered = deregisteredAt == 0 || deregisteredAt > _epoch.blocknumber;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |        address next = _start;
    |        if (next == 0x0) {
  > |            next = store.begin();
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1240)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |            }
    |            if (!includeNext) {
  > |                next = store.next(next);
    |                continue;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1256)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistry':
    |            }
    |            nodes[n] = next;
  > |            next = store.next(next);
    |            n += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1260)

[31mViolation[0m for UnrestrictedWrite in contract 'DarknodeRegistry':
    |        );
    |
  > |        numDarknodesNextEpoch += 1;
    |
    |        // Emit an event.
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(950)

[31mViolation[0m for UnrestrictedWrite in contract 'DarknodeRegistry':
    |
    |        // Update the epoch hash and timestamp
  > |        previousEpoch = currentEpoch;
    |        currentEpoch = Epoch({
    |            epochhash: epochhash,
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(985)

[31mViolation[0m for UnrestrictedWrite in contract 'DarknodeRegistry':
    |        // Update the epoch hash and timestamp
    |        previousEpoch = currentEpoch;
  > |        currentEpoch = Epoch({
    |            epochhash: epochhash,
    |            blocknumber: block.number
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(986)

[31mViolation[0m for UnrestrictedWrite in contract 'DarknodeRegistry':
    |
    |        // Update the registry information
  > |        numDarknodesPreviousEpoch = numDarknodes;
    |        numDarknodes = numDarknodesNextEpoch;
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(992)

[31mViolation[0m for UnrestrictedWrite in contract 'DarknodeRegistry':
    |        // Update the registry information
    |        numDarknodesPreviousEpoch = numDarknodes;
  > |        numDarknodes = numDarknodesNextEpoch;
    |
    |        // If any update functions have been called, update the values now
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(993)

[31mViolation[0m for UnrestrictedWrite in contract 'DarknodeRegistry':
    |        // If any update functions have been called, update the values now
    |        if (nextMinimumBond != minimumBond) {
  > |            minimumBond = nextMinimumBond;
    |            emit LogMinimumBondUpdated(minimumBond, nextMinimumBond);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(997)

[31mViolation[0m for UnrestrictedWrite in contract 'DarknodeRegistry':
    |        }
    |        if (nextMinimumPodSize != minimumPodSize) {
  > |            minimumPodSize = nextMinimumPodSize;
    |            emit LogMinimumPodSizeUpdated(minimumPodSize, nextMinimumPodSize);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1001)

[31mViolation[0m for UnrestrictedWrite in contract 'DarknodeRegistry':
    |        }
    |        if (nextMinimumEpochInterval != minimumEpochInterval) {
  > |            minimumEpochInterval = nextMinimumEpochInterval;
    |            emit LogMinimumEpochIntervalUpdated(minimumEpochInterval, nextMinimumEpochInterval);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1005)

[31mViolation[0m for UnrestrictedWrite in contract 'DarknodeRegistry':
    |        }
    |        if (nextSlasher != slasher) {
  > |            slasher = nextSlasher;
    |            emit LogSlasherUpdated(slasher, nextSlasher);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1009)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistry':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistry':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistry':
    |    function updateMinimumBond(uint256 _nextMinimumBond) external onlyOwner {
    |        // Will be updated next epoch
  > |        nextMinimumBond = _nextMinimumBond;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1029)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistry':
    |    function updateMinimumPodSize(uint256 _nextMinimumPodSize) external onlyOwner {
    |        // Will be updated next epoch
  > |        nextMinimumPodSize = _nextMinimumPodSize;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1036)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistry':
    |    function updateMinimumEpochInterval(uint256 _nextMinimumEpochInterval) external onlyOwner {
    |        // Will be updated next epoch
  > |        nextMinimumEpochInterval = _nextMinimumEpochInterval;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1043)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistry':
    |    /// @param _slasher The new slasher address.
    |    function updateSlasher(address _slasher) external onlyOwner {
  > |        nextSlasher = _slasher;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(1050)

[33mWarning[0m for LockedEther in contract 'DarknodeRegistryStore':
    |/// contract. The data / fund logic and storage have been separated to improve
    |/// upgradability.
  > |contract DarknodeRegistryStore is Ownable {
    |    string public VERSION; // Passed in as a constructor parameter.
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(645)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistryStore':
    |        delete darknodeRegistry[darknodeID];
    |        LinkedList.remove(darknodes, darknodeID);
  > |        require(ren.transfer(owner, bond), "bond transfer failed");
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(742)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistryStore':
    |        darknodeRegistry[darknodeID].bond = bond;
    |        if (previousBond > bond) {
  > |            require(ren.transfer(owner, previousBond - bond), "cannot transfer bond");
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(751)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistryStore':
    |        delete darknodeRegistry[darknodeID];
    |        LinkedList.remove(darknodes, darknodeID);
  > |        require(ren.transfer(owner, bond), "bond transfer failed");
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(742)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistryStore':
    |        darknodeRegistry[darknodeID].bond = bond;
    |        if (previousBond > bond) {
  > |            require(ren.transfer(owner, previousBond - bond), "cannot transfer bond");
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(751)

[31mViolation[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |/// contract. The data / fund logic and storage have been separated to improve
    |/// upgradability.
  > |contract DarknodeRegistryStore is Ownable {
    |    string public VERSION; // Passed in as a constructor parameter.
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(645)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |        address n = self.list[target].next;
    |
  > |        self.list[newNode].previous = target;
    |        self.list[newNode].next = n;
    |        self.list[target].next = newNode;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(535)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |
    |        self.list[newNode].previous = target;
  > |        self.list[newNode].next = n;
    |        self.list[target].next = newNode;
    |        self.list[n].previous = newNode;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(536)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |        self.list[newNode].previous = target;
    |        self.list[newNode].next = n;
  > |        self.list[target].next = newNode;
    |        self.list[n].previous = newNode;
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(537)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |        self.list[newNode].next = n;
    |        self.list[target].next = newNode;
  > |        self.list[n].previous = newNode;
    |
    |        self.list[newNode].inList = true;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(538)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |        self.list[n].previous = newNode;
    |
  > |        self.list[newNode].inList = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(540)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |        address n = self.list[node].next;
    |
  > |        self.list[p].next = n;
    |        self.list[n].previous = p;
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(559)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |
    |        self.list[p].next = n;
  > |        self.list[n].previous = p;
    |
    |        // Deleting the node should set this value to false, but we set it here for
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(560)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |        // Deleting the node should set this value to false, but we set it here for
    |        // explicitness.
  > |        self.list[node].inList = false;
    |        delete self.list[node];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(564)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |        // explicitness.
    |        self.list[node].inList = false;
  > |        delete self.list[node];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(565)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |/// contract. The data / fund logic and storage have been separated to improve
    |/// upgradability.
  > |contract DarknodeRegistryStore is Ownable {
    |    string public VERSION; // Passed in as a constructor parameter.
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(645)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |            deregisteredAt: _deregisteredAt
    |        });
  > |        darknodeRegistry[_darknodeID] = darknode;
    |        LinkedList.append(darknodes, _darknodeID);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(721)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |    function removeDarknode(address darknodeID) external onlyOwner {
    |        uint256 bond = darknodeRegistry[darknodeID].bond;
  > |        delete darknodeRegistry[darknodeID];
    |        LinkedList.remove(darknodes, darknodeID);
    |        require(ren.transfer(owner, bond), "bond transfer failed");
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(740)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |    function updateDarknodeBond(address darknodeID, uint256 bond) external onlyOwner {
    |        uint256 previousBond = darknodeRegistry[darknodeID].bond;
  > |        darknodeRegistry[darknodeID].bond = bond;
    |        if (previousBond > bond) {
    |            require(ren.transfer(owner, previousBond - bond), "cannot transfer bond");
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(749)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |    /// @notice Updates the deregistration timestamp of a darknode.
    |    function updateDarknodeDeregisteredAt(address darknodeID, uint256 deregisteredAt) external onlyOwner {
  > |        darknodeRegistry[darknodeID].deregisteredAt = deregisteredAt;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(757)

[33mWarning[0m for LockedEther in contract 'LinkedList':
    | * @notice LinkedList is a library for a circular double linked list.
    | */
  > |library LinkedList {
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(472)

[33mWarning[0m for MissingInputValidation in contract 'LinkedList':
    |    * NULL.next is the head, and NULL.previous is the tail.
    |    */
  > |    address public constant NULL = 0x0;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(478)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(61)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(313)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(317)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(339)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(347)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(348)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(348)

[33mWarning[0m for LockedEther in contract 'RepublicToken':
    |}
    |
  > |contract RepublicToken is PausableToken, BurnableToken {
    |
    |    string public constant name = "Republic Token";
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(444)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |        require(amount > 0);
    |
  > |        balances[owner] = balances[owner].sub(amount);
    |        balances[beneficiary] = balances[beneficiary].add(amount);
    |        emit Transfer(owner, beneficiary, amount);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(461)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |
    |        balances[owner] = balances[owner].sub(amount);
  > |        balances[beneficiary] = balances[beneficiary].add(amount);
    |        emit Transfer(owner, beneficiary, amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(462)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(348)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(81)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x34bd421c7948bc16f826fd99f9b785929b121633.sol(301)


