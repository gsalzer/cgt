Processing contract: /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol:DarknodeRegistryStore
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol:LinkedList
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol:RepublicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(327)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(593)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(610)

[33mWarning[0m for LockedEther in contract 'DarknodeRegistryStore':
    |/// contract. The data / fund logic and storage have been separated to improve
    |/// upgradability.
  > |contract DarknodeRegistryStore is Ownable {
    |    string public VERSION; // Passed in as a constructor parameter.
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(645)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistryStore':
    |        delete darknodeRegistry[darknodeID];
    |        LinkedList.remove(darknodes, darknodeID);
  > |        require(ren.transfer(owner, bond), "bond transfer failed");
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(742)

[33mWarning[0m for UnhandledException in contract 'DarknodeRegistryStore':
    |        darknodeRegistry[darknodeID].bond = bond;
    |        if (previousBond > bond) {
  > |            require(ren.transfer(owner, previousBond - bond), "cannot transfer bond");
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(751)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistryStore':
    |        delete darknodeRegistry[darknodeID];
    |        LinkedList.remove(darknodes, darknodeID);
  > |        require(ren.transfer(owner, bond), "bond transfer failed");
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(742)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarknodeRegistryStore':
    |        darknodeRegistry[darknodeID].bond = bond;
    |        if (previousBond > bond) {
  > |            require(ren.transfer(owner, previousBond - bond), "cannot transfer bond");
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(751)

[31mViolation[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |/// contract. The data / fund logic and storage have been separated to improve
    |/// upgradability.
  > |contract DarknodeRegistryStore is Ownable {
    |    string public VERSION; // Passed in as a constructor parameter.
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(645)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |        address n = self.list[target].next;
    |
  > |        self.list[newNode].previous = target;
    |        self.list[newNode].next = n;
    |        self.list[target].next = newNode;
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |
    |        self.list[newNode].previous = target;
  > |        self.list[newNode].next = n;
    |        self.list[target].next = newNode;
    |        self.list[n].previous = newNode;
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |        self.list[newNode].previous = target;
    |        self.list[newNode].next = n;
  > |        self.list[target].next = newNode;
    |        self.list[n].previous = newNode;
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |        self.list[newNode].next = n;
    |        self.list[target].next = newNode;
  > |        self.list[n].previous = newNode;
    |
    |        self.list[newNode].inList = true;
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |        self.list[n].previous = newNode;
    |
  > |        self.list[newNode].inList = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |        address n = self.list[node].next;
    |
  > |        self.list[p].next = n;
    |        self.list[n].previous = p;
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |
    |        self.list[p].next = n;
  > |        self.list[n].previous = p;
    |
    |        // Deleting the node should set this value to false, but we set it here for
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |        // Deleting the node should set this value to false, but we set it here for
    |        // explicitness.
  > |        self.list[node].inList = false;
    |        delete self.list[node];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |        // explicitness.
    |        self.list[node].inList = false;
  > |        delete self.list[node];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |/// contract. The data / fund logic and storage have been separated to improve
    |/// upgradability.
  > |contract DarknodeRegistryStore is Ownable {
    |    string public VERSION; // Passed in as a constructor parameter.
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(645)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |            deregisteredAt: _deregisteredAt
    |        });
  > |        darknodeRegistry[_darknodeID] = darknode;
    |        LinkedList.append(darknodes, _darknodeID);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(721)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |    function removeDarknode(address darknodeID) external onlyOwner {
    |        uint256 bond = darknodeRegistry[darknodeID].bond;
  > |        delete darknodeRegistry[darknodeID];
    |        LinkedList.remove(darknodes, darknodeID);
    |        require(ren.transfer(owner, bond), "bond transfer failed");
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(740)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |    function updateDarknodeBond(address darknodeID, uint256 bond) external onlyOwner {
    |        uint256 previousBond = darknodeRegistry[darknodeID].bond;
  > |        darknodeRegistry[darknodeID].bond = bond;
    |        if (previousBond > bond) {
    |            require(ren.transfer(owner, previousBond - bond), "cannot transfer bond");
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(749)

[33mWarning[0m for UnrestrictedWrite in contract 'DarknodeRegistryStore':
    |    /// @notice Updates the deregistration timestamp of a darknode.
    |    function updateDarknodeDeregisteredAt(address darknodeID, uint256 deregisteredAt) external onlyOwner {
  > |        darknodeRegistry[darknodeID].deregisteredAt = deregisteredAt;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(757)

[33mWarning[0m for LockedEther in contract 'LinkedList':
    | * @notice LinkedList is a library for a circular double linked list.
    | */
  > |library LinkedList {
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'LinkedList':
    |    * NULL.next is the head, and NULL.previous is the tail.
    |    */
  > |    address public constant NULL = 0x0;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(74)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(61)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(486)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(490)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(512)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(520)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(521)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(530)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(521)

[33mWarning[0m for LockedEther in contract 'RepublicToken':
    |}
    |
  > |contract RepublicToken is PausableToken, BurnableToken {
    |
    |    string public constant name = "Republic Token";
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(617)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(610)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(611)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |        require(amount > 0);
    |
  > |        balances[owner] = balances[owner].sub(amount);
    |        balances[beneficiary] = balances[beneficiary].add(amount);
    |        emit Transfer(owner, beneficiary, amount);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(634)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |
    |        balances[owner] = balances[owner].sub(amount);
  > |        balances[beneficiary] = balances[beneficiary].add(amount);
    |        emit Transfer(owner, beneficiary, amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(635)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'RepublicToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(521)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(254)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x06df0657ba5e8f5339e742212669f6e7ee3c5057.sol(474)


