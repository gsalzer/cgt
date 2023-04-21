Processing contract: /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol:AetherAccessControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol:AetherAuction
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol:AetherBase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol:AetherClockAuction
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol:AetherConstruct
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol:AetherCore
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol:AetherOwnership
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol:ClockAuction
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol:ClockAuctionBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'AetherAccessControl':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for LockedEther in contract 'AetherAccessControl':
    |/// @title A facet of AetherCore that manages special access privileges.
    |/// @dev See the AetherCore contract documentation to understand how the various contract facets are arranged.
  > |contract AetherAccessControl {
    |    // This facet controls access control for Laputa. There are four roles managed here:
    |    //
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'AetherAccessControl':
    |
    |    // The addresses of the accounts (or contracts) that can execute actions within each roles.
  > |    address public ceoAddress;
    |    address public cfoAddress;
    |    address public cooAddress;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'AetherAccessControl':
    |    // The addresses of the accounts (or contracts) that can execute actions within each roles.
    |    address public ceoAddress;
  > |    address public cfoAddress;
    |    address public cooAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'AetherAccessControl':
    |    address public ceoAddress;
    |    address public cfoAddress;
  > |    address public cooAddress;
    |
    |    // @dev Keeps track whether the contract is paused. When that is true, most actions are blocked
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'AetherAccessControl':
    |
    |    // @dev Keeps track whether the contract is paused. When that is true, most actions are blocked
  > |    bool public paused = false;
    |
    |    /// @dev Access modifier for CEO-only functionality
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'AetherAccessControl':
    |    /// @dev Assigns a new address to act as the CEO. Only available to the current CEO.
    |    /// @param _newCEO The address of the new CEO
  > |    function setCEO(address _newCEO) public onlyCEO {
    |        require(_newCEO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'AetherAccessControl':
    |    /// @dev Assigns a new address to act as the CFO. Only available to the current CEO.
    |    /// @param _newCFO The address of the new CFO
  > |    function setCFO(address _newCFO) public onlyCEO {
    |        require(_newCFO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'AetherAccessControl':
    |    /// @dev Assigns a new address to act as the COO. Only available to the current CEO.
    |    /// @param _newCOO The address of the new COO
  > |    function setCOO(address _newCOO) public onlyCEO {
    |        require(_newCOO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'AetherAccessControl':
    |    }
    |
  > |    function withdrawBalance() external onlyCFO {
    |        cfoAddress.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'AetherAccessControl':
    |    /// @dev Called by any "C-level" role to pause the contract. Used only when
    |    ///  a bug or exploit is detected and we need to limit damage.
  > |    function pause() public onlyCLevel whenNotPaused {
    |        paused = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'AetherAccessControl':
    |    ///  one reason we may pause the contract is when CFO or COO accounts are
    |    ///  compromised.
  > |    function unpause() public onlyCEO whenPaused {
    |        // can't unpause if contract was upgraded
    |        paused = false;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(115)

[31mViolation[0m for TODAmount in contract 'AetherAccessControl':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[31mViolation[0m for TODReceiver in contract 'AetherAccessControl':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for UnhandledException in contract 'AetherAccessControl':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherAccessControl':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAccessControl':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAccessControl':
    |        require(_newCFO != address(0));
    |
  > |        cfoAddress = _newCFO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAccessControl':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAccessControl':
    |    ///  a bug or exploit is detected and we need to limit damage.
    |    function pause() public onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAccessControl':
    |    function unpause() public onlyCEO whenPaused {
    |        // can't unpause if contract was upgraded
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(117)

[33mWarning[0m for DAOConstantGas in contract 'AetherAuction':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for LockedEther in contract 'AetherAuction':
    |///  This wrapper of ReverseAuction exists only so that users can create
    |///  auctions with only one transaction.
  > |contract AetherAuction is AetherOwnership{
    |
    |    /// @dev The address of the ClockAuction contract that handles sales of Aether. This
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1256)

[31mViolation[0m for TODAmount in contract 'AetherAuction':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[31mViolation[0m for TODReceiver in contract 'AetherAuction':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for UnhandledException in contract 'AetherAuction':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for UnhandledException in contract 'AetherAuction':
    |
    |        // NOTE: verify that a contract is what we expect
  > |        require(candidateContract.isAetherClockAuction());
    |
    |        // Set the new contract address
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1269)

[33mWarning[0m for UnhandledException in contract 'AetherAuction':
    |        // Sale auction throws if inputs are invalid and clears
    |        // transfer and sire approval after escrowing the property.
  > |        saleAuction.createAuction(
    |            _propertyId,
    |            _startingPrice,
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1293)

[33mWarning[0m for UnhandledException in contract 'AetherAuction':
    |    /// prevent two transfer calls in the auction bid function.
    |    function withdrawAuctionBalances() external onlyCOO {
  > |        saleAuction.withdrawBalance();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherAuction':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherAuction':
    |
    |        // NOTE: verify that a contract is what we expect
  > |        require(candidateContract.isAetherClockAuction());
    |
    |        // Set the new contract address
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherAuction':
    |        // Sale auction throws if inputs are invalid and clears
    |        // transfer and sire approval after escrowing the property.
  > |        saleAuction.createAuction(
    |            _propertyId,
    |            _startingPrice,
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherAuction':
    |    /// prevent two transfer calls in the auction bid function.
    |    function withdrawAuctionBalances() external onlyCOO {
  > |        saleAuction.withdrawBalance();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1306)

[31mViolation[0m for UnrestrictedWrite in contract 'AetherAuction':
    |///  This wrapper of ReverseAuction exists only so that users can create
    |///  auctions with only one transaction.
  > |contract AetherAuction is AetherOwnership{
    |
    |    /// @dev The address of the ClockAuction contract that handles sales of Aether. This
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1256)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAuction':
    |      // When creating new properties _from is 0x0, but we can't account that address.
    |      if (_from != address(0)) {
  > |          ownershipTokenCount[_from]--;
    |          // clear any previously approved ownership exchange
    |          delete propertyIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAuction':
    |          ownershipTokenCount[_from]--;
    |          // clear any previously approved ownership exchange
  > |          delete propertyIndexToApproved[_tokenId];
    |      }
    |      // Emit the transfer event.
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAuction':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAuction':
    |        require(_newCFO != address(0));
    |
  > |        cfoAddress = _newCFO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAuction':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAuction':
    |    ///  a bug or exploit is detected and we need to limit damage.
    |    function pause() public onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAuction':
    |    function unpause() public onlyCEO whenPaused {
    |        // can't unpause if contract was upgraded
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAuction':
    |      // since the number of properties is capped to 2^32
    |      // there is no way to overflow this
  > |      ownershipTokenCount[_to]++;
    |      // transfer ownership
    |      propertyIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAuction':
    |      ownershipTokenCount[_to]++;
    |      // transfer ownership
  > |      propertyIndexToOwner[_tokenId] = _to;
    |      // When creating new properties _from is 0x0, but we can't account that address.
    |      if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAuction':
    |    function updateBuildingPrivacy(uint _tokenId, bool _public) public {
    |        require(propertyIndexToOwner[_tokenId] == msg.sender);
  > |        buildingIsPublic[_tokenId] = _public;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAuction':
    |    ///  there is no value in spamming the log with Approval events in that case.
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        propertyIndexToApproved[_tokenId] = _approved;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(549)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAuction':
    |///  This wrapper of ReverseAuction exists only so that users can create
    |///  auctions with only one transaction.
  > |contract AetherAuction is AetherOwnership{
    |
    |    /// @dev The address of the ClockAuction contract that handles sales of Aether. This
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1256)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherAuction':
    |
    |        // Set the new contract address
  > |        saleAuction = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1272)

[33mWarning[0m for DAOConstantGas in contract 'AetherBase':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for LockedEther in contract 'AetherBase':
    |/// @author Project Aether (https://www.aether.city)
    |/// @dev See the PropertyCore contract documentation to understand how the various contract facets are arranged.
  > |contract AetherBase is AetherAccessControl {
    |    /*** EVENTS ***/
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(126)

[31mViolation[0m for TODAmount in contract 'AetherBase':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[31mViolation[0m for TODReceiver in contract 'AetherBase':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for UnhandledException in contract 'AetherBase':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherBase':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'AetherBase':
    |/// @author Project Aether (https://www.aether.city)
    |/// @dev See the PropertyCore contract documentation to understand how the various contract facets are arranged.
  > |contract AetherBase is AetherAccessControl {
    |    /*** EVENTS ***/
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherBase':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherBase':
    |        require(_newCFO != address(0));
    |
  > |        cfoAddress = _newCFO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherBase':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherBase':
    |    ///  a bug or exploit is detected and we need to limit damage.
    |    function pause() public onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherBase':
    |    function unpause() public onlyCEO whenPaused {
    |        // can't unpause if contract was upgraded
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherBase':
    |/// @author Project Aether (https://www.aether.city)
    |/// @dev See the PropertyCore contract documentation to understand how the various contract facets are arranged.
  > |contract AetherBase is AetherAccessControl {
    |    /*** EVENTS ***/
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherBase':
    |    function updateBuildingPrivacy(uint _tokenId, bool _public) public {
    |        require(propertyIndexToOwner[_tokenId] == msg.sender);
  > |        buildingIsPublic[_tokenId] = _public;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(463)

[33mWarning[0m for DAOConstantGas in contract 'AetherClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1060)

[33mWarning[0m for LockedEther in contract 'AetherClockAuction':
    |
    |/// @title Clock auction modified for sale of property
  > |contract AetherClockAuction is ClockAuction {
    |
    |    // @dev Sanity check that allows us to ensure that we are pointing to the
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1178)

[31mViolation[0m for TODAmount in contract 'AetherClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1060)

[33mWarning[0m for TODAmount in contract 'AetherClockAuction':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(839)

[33mWarning[0m for TODReceiver in contract 'AetherClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1060)

[33mWarning[0m for UnhandledException in contract 'AetherClockAuction':
    |    function _escrow(address _owner, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transferFrom(_owner, this, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(757)

[33mWarning[0m for UnhandledException in contract 'AetherClockAuction':
    |    function _transfer(address _receiver, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transfer(_receiver, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(766)

[33mWarning[0m for UnhandledException in contract 'AetherClockAuction':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(839)

[33mWarning[0m for UnhandledException in contract 'AetherClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1060)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherClockAuction':
    |    function _escrow(address _owner, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transferFrom(_owner, this, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(757)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherClockAuction':
    |    function _transfer(address _receiver, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transfer(_receiver, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(766)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1060)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherClockAuction':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(839)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherClockAuction':
    |        require(_auction.duration >= 1 minutes);
    |
  > |        tokenIdToAuction[_tokenId] = _auction;
    |
    |        AuctionCreated(
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(778)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherClockAuction':
    |    /// @param _tokenId - ID of NFT on auction.
    |    function _removeAuction(uint256 _tokenId) internal {
  > |        delete tokenIdToAuction[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(851)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherClockAuction':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(975)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherClockAuction':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1014)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherClockAuction':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1023)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherClockAuction':
    |        if (seller == address(nonFungibleContract)) {
    |            // Track gen0 sale prices
  > |            lastSalePrices[saleCount % 5] = price;
    |            saleCount++;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1237)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherClockAuction':
    |            // Track gen0 sale prices
    |            lastSalePrices[saleCount % 5] = price;
  > |            saleCount++;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1238)

[33mWarning[0m for DAOConstantGas in contract 'AetherConstruct':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for LockedEther in contract 'AetherConstruct':
    |
    |/// @title all functions related to creating property
  > |contract AetherConstruct is AetherAuction {
    |
    |    uint256 public districtLimit = 16;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1316)

[31mViolation[0m for TODAmount in contract 'AetherConstruct':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[31mViolation[0m for TODAmount in contract 'AetherConstruct':
    |        require(msg.value >= unitCreationFee);
    |        if (msg.value > unitCreationFee)
  > |            msg.sender.transfer(msg.value - unitCreationFee);
    |        uint256 propertyId = _createUnitHelper(_buildingId, msg.sender);
    |        return propertyId;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1331)

[31mViolation[0m for TODReceiver in contract 'AetherConstruct':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for TODReceiver in contract 'AetherConstruct':
    |        require(msg.value >= unitCreationFee);
    |        if (msg.value > unitCreationFee)
  > |            msg.sender.transfer(msg.value - unitCreationFee);
    |        uint256 propertyId = _createUnitHelper(_buildingId, msg.sender);
    |        return propertyId;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1331)

[33mWarning[0m for UnhandledException in contract 'AetherConstruct':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for UnhandledException in contract 'AetherConstruct':
    |
    |        // NOTE: verify that a contract is what we expect
  > |        require(candidateContract.isAetherClockAuction());
    |
    |        // Set the new contract address
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1269)

[33mWarning[0m for UnhandledException in contract 'AetherConstruct':
    |        // Sale auction throws if inputs are invalid and clears
    |        // transfer and sire approval after escrowing the property.
  > |        saleAuction.createAuction(
    |            _propertyId,
    |            _startingPrice,
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1293)

[33mWarning[0m for UnhandledException in contract 'AetherConstruct':
    |    /// prevent two transfer calls in the auction bid function.
    |    function withdrawAuctionBalances() external onlyCOO {
  > |        saleAuction.withdrawBalance();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1306)

[33mWarning[0m for UnhandledException in contract 'AetherConstruct':
    |        require(msg.value >= unitCreationFee);
    |        if (msg.value > unitCreationFee)
  > |            msg.sender.transfer(msg.value - unitCreationFee);
    |        uint256 propertyId = _createUnitHelper(_buildingId, msg.sender);
    |        return propertyId;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1331)

[33mWarning[0m for UnhandledException in contract 'AetherConstruct':
    |        _approve(propertyId, saleAuction);
    |
  > |        saleAuction.createAuction(
    |            propertyId,
    |            _computeNextPrice(),
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1400)

[33mWarning[0m for UnhandledException in contract 'AetherConstruct':
    |    ///  5 prices + 50%.
    |    function _computeNextPrice() internal view returns (uint256) {
  > |        uint256 avePrice = saleAuction.averageSalePrice();
    |
    |        // sanity check to ensure we don't overflow arithmetic (this big number is 2^128-1).
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1431)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherConstruct':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherConstruct':
    |
    |        // NOTE: verify that a contract is what we expect
  > |        require(candidateContract.isAetherClockAuction());
    |
    |        // Set the new contract address
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherConstruct':
    |        // Sale auction throws if inputs are invalid and clears
    |        // transfer and sire approval after escrowing the property.
  > |        saleAuction.createAuction(
    |            _propertyId,
    |            _startingPrice,
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherConstruct':
    |    /// prevent two transfer calls in the auction bid function.
    |    function withdrawAuctionBalances() external onlyCOO {
  > |        saleAuction.withdrawBalance();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherConstruct':
    |        require(msg.value >= unitCreationFee);
    |        if (msg.value > unitCreationFee)
  > |            msg.sender.transfer(msg.value - unitCreationFee);
    |        uint256 propertyId = _createUnitHelper(_buildingId, msg.sender);
    |        return propertyId;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1331)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherConstruct':
    |        _approve(propertyId, saleAuction);
    |
  > |        saleAuction.createAuction(
    |            propertyId,
    |            _computeNextPrice(),
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1400)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherConstruct':
    |    ///  5 prices + 50%.
    |    function _computeNextPrice() internal view returns (uint256) {
  > |        uint256 avePrice = saleAuction.averageSalePrice();
    |
    |        // sanity check to ensure we don't overflow arithmetic (this big number is 2^128-1).
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1431)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |pragma solidity ^0.4.18;
    |
  > |// File: contracts-origin/AetherAccessControl.sol
    |
    |/// @title A facet of AetherCore that manages special access privileges.
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |        require(_newCFO != address(0));
    |
  > |        cfoAddress = _newCFO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |    ///  a bug or exploit is detected and we need to limit damage.
    |    function pause() public onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |    function unpause() public onlyCEO whenPaused {
    |        // can't unpause if contract was upgraded
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |      // since the number of properties is capped to 2^32
    |      // there is no way to overflow this
  > |      ownershipTokenCount[_to]++;
    |      // transfer ownership
    |      propertyIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |      ownershipTokenCount[_to]++;
    |      // transfer ownership
  > |      propertyIndexToOwner[_tokenId] = _to;
    |      // When creating new properties _from is 0x0, but we can't account that address.
    |      if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |      // When creating new properties _from is 0x0, but we can't account that address.
    |      if (_from != address(0)) {
  > |          ownershipTokenCount[_from]--;
    |          // clear any previously approved ownership exchange
    |          delete propertyIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |          ownershipTokenCount[_from]--;
    |          // clear any previously approved ownership exchange
  > |          delete propertyIndexToApproved[_tokenId];
    |      }
    |      // Emit the transfer event.
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |      require(_z == uint256(uint8(_z)));
    |      require(!world[_x][_y][_z]);
  > |      world[_x][_y][_z] = true;
    |      return _createProperty(
    |        _parent,
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |      );
    |
  > |      districtToBuildingsCount[_parent]++;
    |      districtToBuildings[_parent].push(propertyId);
    |      buildingIsPublic[propertyId] = _public;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |
    |      districtToBuildingsCount[_parent]++;
  > |      districtToBuildings[_parent].push(propertyId);
    |      buildingIsPublic[propertyId] = _public;
    |      return propertyId;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |      districtToBuildingsCount[_parent]++;
    |      districtToBuildings[_parent].push(propertyId);
  > |      buildingIsPublic[propertyId] = _public;
    |      return propertyId;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |      );
    |
  > |      districts.push(propertyId);
    |      return propertyId;
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |            dz: uint8(_dz)
    |        });
  > |        uint256 _tokenId = properties.push(_property) - 1;
    |
    |        // It's never going to happen, 4 billion properties is A LOT, but
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |        );
    |
  > |        buildingToUnitCount[_buildingId]++;
    |        buildingToUnits[_buildingId].push(unitId);
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |
    |        buildingToUnitCount[_buildingId]++;
  > |        buildingToUnits[_buildingId].push(unitId);
    |
    |        // Return the new unit's ID.
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(454)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |    function updateBuildingPrivacy(uint _tokenId, bool _public) public {
    |        require(propertyIndexToOwner[_tokenId] == msg.sender);
  > |        buildingIsPublic[_tokenId] = _public;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |    ///  there is no value in spamming the log with Approval events in that case.
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        propertyIndexToApproved[_tokenId] = _approved;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(549)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |
    |        // Set the new contract address
  > |        saleAuction = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1272)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |
    |/// @title all functions related to creating property
  > |contract AetherConstruct is AetherAuction {
    |
    |    uint256 public districtLimit = 16;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1316)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |    ///  be called by the COO address.
    |    function setUnitCreationFee(uint256 _value) public onlyCOO {
  > |        unitCreationFee = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1412)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |        require(_progress <= 100);
    |        require(_progress > progress);
  > |        progress = _progress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1420)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherConstruct':
    |    /// @dev Set property data updates flag. Only callable by COO.
    |    function setUpdateState(bool _updateEnabled) public onlyCOO {
  > |        updateEnabled = _updateEnabled;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1425)

[33mWarning[0m for DAOConstantGas in contract 'AetherCore':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for LockedEther in contract 'AetherCore':
    |/// @title Aether: A city on the Ethereum blockchain.
    |/// @author Axiom Zen (https://www.axiomzen.co)
  > |contract AetherCore is AetherConstruct {
    |
    |    // This is the main Aether contract. In order to keep our code seperated into logical sections,
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1451)

[31mViolation[0m for TODAmount in contract 'AetherCore':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[31mViolation[0m for TODAmount in contract 'AetherCore':
    |        require(msg.value >= unitCreationFee);
    |        if (msg.value > unitCreationFee)
  > |            msg.sender.transfer(msg.value - unitCreationFee);
    |        uint256 propertyId = _createUnitHelper(_buildingId, msg.sender);
    |        return propertyId;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1331)

[31mViolation[0m for TODReceiver in contract 'AetherCore':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for TODReceiver in contract 'AetherCore':
    |        require(msg.value >= unitCreationFee);
    |        if (msg.value > unitCreationFee)
  > |            msg.sender.transfer(msg.value - unitCreationFee);
    |        uint256 propertyId = _createUnitHelper(_buildingId, msg.sender);
    |        return propertyId;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1331)

[33mWarning[0m for UnhandledException in contract 'AetherCore':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for UnhandledException in contract 'AetherCore':
    |
    |        // NOTE: verify that a contract is what we expect
  > |        require(candidateContract.isAetherClockAuction());
    |
    |        // Set the new contract address
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1269)

[33mWarning[0m for UnhandledException in contract 'AetherCore':
    |        // Sale auction throws if inputs are invalid and clears
    |        // transfer and sire approval after escrowing the property.
  > |        saleAuction.createAuction(
    |            _propertyId,
    |            _startingPrice,
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1293)

[33mWarning[0m for UnhandledException in contract 'AetherCore':
    |    /// prevent two transfer calls in the auction bid function.
    |    function withdrawAuctionBalances() external onlyCOO {
  > |        saleAuction.withdrawBalance();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1306)

[33mWarning[0m for UnhandledException in contract 'AetherCore':
    |        require(msg.value >= unitCreationFee);
    |        if (msg.value > unitCreationFee)
  > |            msg.sender.transfer(msg.value - unitCreationFee);
    |        uint256 propertyId = _createUnitHelper(_buildingId, msg.sender);
    |        return propertyId;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1331)

[33mWarning[0m for UnhandledException in contract 'AetherCore':
    |        _approve(propertyId, saleAuction);
    |
  > |        saleAuction.createAuction(
    |            propertyId,
    |            _computeNextPrice(),
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1400)

[33mWarning[0m for UnhandledException in contract 'AetherCore':
    |    ///  5 prices + 50%.
    |    function _computeNextPrice() internal view returns (uint256) {
  > |        uint256 avePrice = saleAuction.averageSalePrice();
    |
    |        // sanity check to ensure we don't overflow arithmetic (this big number is 2^128-1).
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1431)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherCore':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherCore':
    |
    |        // NOTE: verify that a contract is what we expect
  > |        require(candidateContract.isAetherClockAuction());
    |
    |        // Set the new contract address
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherCore':
    |        // Sale auction throws if inputs are invalid and clears
    |        // transfer and sire approval after escrowing the property.
  > |        saleAuction.createAuction(
    |            _propertyId,
    |            _startingPrice,
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherCore':
    |    /// prevent two transfer calls in the auction bid function.
    |    function withdrawAuctionBalances() external onlyCOO {
  > |        saleAuction.withdrawBalance();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherCore':
    |        require(msg.value >= unitCreationFee);
    |        if (msg.value > unitCreationFee)
  > |            msg.sender.transfer(msg.value - unitCreationFee);
    |        uint256 propertyId = _createUnitHelper(_buildingId, msg.sender);
    |        return propertyId;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1331)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherCore':
    |        _approve(propertyId, saleAuction);
    |
  > |        saleAuction.createAuction(
    |            propertyId,
    |            _computeNextPrice(),
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1400)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherCore':
    |    ///  5 prices + 50%.
    |    function _computeNextPrice() internal view returns (uint256) {
  > |        uint256 avePrice = saleAuction.averageSalePrice();
    |
    |        // sanity check to ensure we don't overflow arithmetic (this big number is 2^128-1).
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1431)

[31mViolation[0m for UnrestrictedWrite in contract 'AetherCore':
    |                  revert();
    |              }
  > |              world[_x + i][0][_z + j] = true;
    |          }
    |      }
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |pragma solidity ^0.4.18;
    |
  > |// File: contracts-origin/AetherAccessControl.sol
    |
    |/// @title A facet of AetherCore that manages special access privileges.
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |      // since the number of properties is capped to 2^32
    |      // there is no way to overflow this
  > |      ownershipTokenCount[_to]++;
    |      // transfer ownership
    |      propertyIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |      ownershipTokenCount[_to]++;
    |      // transfer ownership
  > |      propertyIndexToOwner[_tokenId] = _to;
    |      // When creating new properties _from is 0x0, but we can't account that address.
    |      if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |      // When creating new properties _from is 0x0, but we can't account that address.
    |      if (_from != address(0)) {
  > |          ownershipTokenCount[_from]--;
    |          // clear any previously approved ownership exchange
    |          delete propertyIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |          ownershipTokenCount[_from]--;
    |          // clear any previously approved ownership exchange
  > |          delete propertyIndexToApproved[_tokenId];
    |      }
    |      // Emit the transfer event.
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |      require(_z == uint256(uint8(_z)));
    |      require(!world[_x][_y][_z]);
  > |      world[_x][_y][_z] = true;
    |      return _createProperty(
    |        _parent,
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |      );
    |
  > |      districtToBuildingsCount[_parent]++;
    |      districtToBuildings[_parent].push(propertyId);
    |      buildingIsPublic[propertyId] = _public;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |
    |      districtToBuildingsCount[_parent]++;
  > |      districtToBuildings[_parent].push(propertyId);
    |      buildingIsPublic[propertyId] = _public;
    |      return propertyId;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |      districtToBuildingsCount[_parent]++;
    |      districtToBuildings[_parent].push(propertyId);
  > |      buildingIsPublic[propertyId] = _public;
    |      return propertyId;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |      );
    |
  > |      districts.push(propertyId);
    |      return propertyId;
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |            dz: uint8(_dz)
    |        });
  > |        uint256 _tokenId = properties.push(_property) - 1;
    |
    |        // It's never going to happen, 4 billion properties is A LOT, but
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |        );
    |
  > |        buildingToUnitCount[_buildingId]++;
    |        buildingToUnits[_buildingId].push(unitId);
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |
    |        buildingToUnitCount[_buildingId]++;
  > |        buildingToUnits[_buildingId].push(unitId);
    |
    |        // Return the new unit's ID.
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(454)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |    ///  there is no value in spamming the log with Approval events in that case.
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        propertyIndexToApproved[_tokenId] = _approved;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(549)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |/// @title Aether: A city on the Ethereum blockchain.
    |/// @author Axiom Zen (https://www.axiomzen.co)
  > |contract AetherCore is AetherConstruct {
    |
    |    // This is the main Aether contract. In order to keep our code seperated into logical sections,
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1451)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |        require(_newCFO != address(0));
    |
  > |        cfoAddress = _newCFO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |    ///  a bug or exploit is detected and we need to limit damage.
    |    function pause() public onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |    function unpause() public onlyCEO whenPaused {
    |        // can't unpause if contract was upgraded
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |    function updateBuildingPrivacy(uint _tokenId, bool _public) public {
    |        require(propertyIndexToOwner[_tokenId] == msg.sender);
  > |        buildingIsPublic[_tokenId] = _public;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |
    |        // Set the new contract address
  > |        saleAuction = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1272)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |    ///  be called by the COO address.
    |    function setUnitCreationFee(uint256 _value) public onlyCOO {
  > |        unitCreationFee = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1412)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |        require(_progress <= 100);
    |        require(_progress > progress);
  > |        progress = _progress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1420)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |    /// @dev Set property data updates flag. Only callable by COO.
    |    function setUpdateState(bool _updateEnabled) public onlyCOO {
  > |        updateEnabled = _updateEnabled;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1425)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherCore':
    |    function setNewAddress(address _v2Address) public onlyCEO whenPaused {
    |        // See README.md for updgrade plan
  > |        newContractAddress = _v2Address;
    |        ContractUpgrade(_v2Address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1503)

[33mWarning[0m for DAOConstantGas in contract 'AetherOwnership':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for LockedEther in contract 'AetherOwnership':
    |/// @dev Ref: https://github.com/ethereum/EIPs/issues/721
    |///  See the PropertyCore contract documentation to understand how the various contract facets are arranged.
  > |contract AetherOwnership is AetherBase, ERC721 {
    |
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(514)

[31mViolation[0m for TODAmount in contract 'AetherOwnership':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[31mViolation[0m for TODReceiver in contract 'AetherOwnership':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for UnhandledException in contract 'AetherOwnership':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherOwnership':
    |
    |    function withdrawBalance() external onlyCFO {
  > |        cfoAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'AetherOwnership':
    |/// @dev Ref: https://github.com/ethereum/EIPs/issues/721
    |///  See the PropertyCore contract documentation to understand how the various contract facets are arranged.
  > |contract AetherOwnership is AetherBase, ERC721 {
    |
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(514)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherOwnership':
    |      // When creating new properties _from is 0x0, but we can't account that address.
    |      if (_from != address(0)) {
  > |          ownershipTokenCount[_from]--;
    |          // clear any previously approved ownership exchange
    |          delete propertyIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherOwnership':
    |          ownershipTokenCount[_from]--;
    |          // clear any previously approved ownership exchange
  > |          delete propertyIndexToApproved[_tokenId];
    |      }
    |      // Emit the transfer event.
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherOwnership':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherOwnership':
    |        require(_newCFO != address(0));
    |
  > |        cfoAddress = _newCFO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherOwnership':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherOwnership':
    |    ///  a bug or exploit is detected and we need to limit damage.
    |    function pause() public onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherOwnership':
    |    function unpause() public onlyCEO whenPaused {
    |        // can't unpause if contract was upgraded
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherOwnership':
    |      // since the number of properties is capped to 2^32
    |      // there is no way to overflow this
  > |      ownershipTokenCount[_to]++;
    |      // transfer ownership
    |      propertyIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherOwnership':
    |      ownershipTokenCount[_to]++;
    |      // transfer ownership
  > |      propertyIndexToOwner[_tokenId] = _to;
    |      // When creating new properties _from is 0x0, but we can't account that address.
    |      if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherOwnership':
    |    function updateBuildingPrivacy(uint _tokenId, bool _public) public {
    |        require(propertyIndexToOwner[_tokenId] == msg.sender);
  > |        buildingIsPublic[_tokenId] = _public;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherOwnership':
    |/// @dev Ref: https://github.com/ethereum/EIPs/issues/721
    |///  See the PropertyCore contract documentation to understand how the various contract facets are arranged.
  > |contract AetherOwnership is AetherBase, ERC721 {
    |
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(514)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherOwnership':
    |    ///  there is no value in spamming the log with Approval events in that case.
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        propertyIndexToApproved[_tokenId] = _approved;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(549)

[33mWarning[0m for DAOConstantGas in contract 'ClockAuction':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(839)

[33mWarning[0m for DAOConstantGas in contract 'ClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1060)

[33mWarning[0m for LockedEther in contract 'ClockAuction':
    |
    |/// @title Clock auction for non-fungible tokens.
  > |contract ClockAuction is Pausable, ClockAuctionBase {
    |
    |    /// @dev Constructor creates a reference to the NFT ownership contract
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1032)

[31mViolation[0m for TODAmount in contract 'ClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1060)

[33mWarning[0m for TODAmount in contract 'ClockAuction':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(839)

[33mWarning[0m for TODReceiver in contract 'ClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1060)

[33mWarning[0m for UnhandledException in contract 'ClockAuction':
    |    /// @param _tokenId - ID of token whose ownership to verify.
    |    function _owns(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return (nonFungibleContract.ownerOf(_tokenId) == _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(748)

[33mWarning[0m for UnhandledException in contract 'ClockAuction':
    |    function _escrow(address _owner, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transferFrom(_owner, this, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(757)

[33mWarning[0m for UnhandledException in contract 'ClockAuction':
    |    function _transfer(address _receiver, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transfer(_receiver, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(766)

[33mWarning[0m for UnhandledException in contract 'ClockAuction':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(839)

[33mWarning[0m for UnhandledException in contract 'ClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1060)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClockAuction':
    |    /// @param _tokenId - ID of token whose ownership to verify.
    |    function _owns(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return (nonFungibleContract.ownerOf(_tokenId) == _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(748)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClockAuction':
    |    function _escrow(address _owner, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transferFrom(_owner, this, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(757)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClockAuction':
    |    function _transfer(address _receiver, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transfer(_receiver, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(766)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1060)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClockAuction':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(839)

[33mWarning[0m for UnrestrictedWrite in contract 'ClockAuction':
    |        require(_auction.duration >= 1 minutes);
    |
  > |        tokenIdToAuction[_tokenId] = _auction;
    |
    |        AuctionCreated(
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(778)

[33mWarning[0m for UnrestrictedWrite in contract 'ClockAuction':
    |    /// @param _tokenId - ID of NFT on auction.
    |    function _removeAuction(uint256 _tokenId) internal {
  > |        delete tokenIdToAuction[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(851)

[33mWarning[0m for UnrestrictedWrite in contract 'ClockAuction':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(975)

[33mWarning[0m for UnrestrictedWrite in contract 'ClockAuction':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1014)

[33mWarning[0m for UnrestrictedWrite in contract 'ClockAuction':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1023)

[33mWarning[0m for LockedEther in contract 'ClockAuctionBase':
    |/// @title Auction Core
    |/// @dev Contains models, variables, and internal methods for the auction.
  > |contract ClockAuctionBase {
    |
    |    // Represents an auction on an NFT
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(698)

[33mWarning[0m for MissingInputValidation in contract 'ClockAuctionBase':
    |
    |    // Reference to contract tracking NFT ownership
  > |    ERC721 public nonFungibleContract;
    |
    |    // Cut owner takes on each auction, measured in basis points (1/100 of a percent).
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(716)

[33mWarning[0m for MissingInputValidation in contract 'ClockAuctionBase':
    |    // Cut owner takes on each auction, measured in basis points (1/100 of a percent).
    |    // Values 0-10,000 map to 0%-100%
  > |    uint256 public ownerCut;
    |
    |    // Map from token ID to their corresponding auction.
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(720)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(947)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(948)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(973)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(975)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(987)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(948)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(973)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(991)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused returns (bool) {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1013)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused returns (bool) {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1022)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(975)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1014)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x31d4c5be1082a88f2abafea549b6c189c2cf057f.sol(1023)


