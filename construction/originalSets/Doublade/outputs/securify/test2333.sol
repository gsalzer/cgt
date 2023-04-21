Processing contract: /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol:ClockAuctionBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol:EthernautsAccessControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol:EthernautsBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol:EthernautsLogic
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol:EthernautsMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol:EthernautsOwnership
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol:EthernautsStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ClockAuctionBase':
    |/// @dev Contains models, variables, and internal methods for the auction.
    |/// @notice We omit a fallback function to prevent accidental sends to this contract.
  > |contract ClockAuctionBase {
    |
    |    // Represents an auction on an NFT
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'ClockAuctionBase':
    |
    |    // Reference to contract tracking NFT ownership
  > |    ERC721 public nonFungibleContract;
    |
    |    // Cut owner takes on each auction, measured in basis points (1/100 of a percent).
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'ClockAuctionBase':
    |    // Cut owner takes on each auction, measured in basis points (1/100 of a percent).
    |    // Values 0-10,000 map to 0%-100%
  > |    uint256 public ownerCut;
    |
    |    // Map from token ID to their corresponding auction.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(128)

[33mWarning[0m for LockedEther in contract 'EthernautsAccessControl':
    |/// @notice This contract manages the various addresses and constraints for operations
    |//          that can be executed only by specific roles. Namely CEO and CTO. it also includes pausable pattern.
  > |contract EthernautsAccessControl is EthernautsBase {
    |
    |    // This facet controls access control for Ethernauts.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(394)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    /// @dev due solidity limitation we cannot return dynamic array from methods
    |    /// so it creates incompability between functions across different contracts
  > |    uint8 public constant STATS_SIZE = 10;
    |    uint8 public constant SHIP_SLOTS = 5;
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(361)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    /// so it creates incompability between functions across different contracts
    |    uint8 public constant STATS_SIZE = 10;
  > |    uint8 public constant SHIP_SLOTS = 5;
    |
    |    // Possible state of any asset
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(362)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    /// 01000000 - Tradable - Buyable and sellable on the market.
    |    /// 10000000 - Hot Potato - Automatically gets put up for sale after acquiring.
  > |    bytes2 public ATTR_SEEDED     = bytes2(2**0);
    |    bytes2 public ATTR_PRODUCIBLE = bytes2(2**1);
    |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(382)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    /// 10000000 - Hot Potato - Automatically gets put up for sale after acquiring.
    |    bytes2 public ATTR_SEEDED     = bytes2(2**0);
  > |    bytes2 public ATTR_PRODUCIBLE = bytes2(2**1);
    |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
    |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(383)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    bytes2 public ATTR_SEEDED     = bytes2(2**0);
    |    bytes2 public ATTR_PRODUCIBLE = bytes2(2**1);
  > |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
    |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
    |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(384)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    bytes2 public ATTR_PRODUCIBLE = bytes2(2**1);
    |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
  > |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
    |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
    |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(385)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
    |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
  > |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
    |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
    |    bytes2 public ATTR_TRADABLE   = bytes2(2**6);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(386)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
    |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
  > |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
    |    bytes2 public ATTR_TRADABLE   = bytes2(2**6);
    |    bytes2 public ATTR_GOLDENGOOSE = bytes2(2**7);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(387)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
    |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
  > |    bytes2 public ATTR_TRADABLE   = bytes2(2**6);
    |    bytes2 public ATTR_GOLDENGOOSE = bytes2(2**7);
    |}
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(388)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
    |    bytes2 public ATTR_TRADABLE   = bytes2(2**6);
  > |    bytes2 public ATTR_GOLDENGOOSE = bytes2(2**7);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(389)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |
    |    // The addresses of the accounts (or contracts) that can execute actions within each roles.
  > |    address public ceoAddress;
    |    address public ctoAddress;
    |    address public cooAddress;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(411)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    // The addresses of the accounts (or contracts) that can execute actions within each roles.
    |    address public ceoAddress;
  > |    address public ctoAddress;
    |    address public cooAddress;
    |    address public oracleAddress;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(412)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    address public ceoAddress;
    |    address public ctoAddress;
  > |    address public cooAddress;
    |    address public oracleAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(413)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    address public ctoAddress;
    |    address public cooAddress;
  > |    address public oracleAddress;
    |
    |    // @dev Keeps track whether the contract is paused. When that is true, most actions are blocked
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(414)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |
    |    // @dev Keeps track whether the contract is paused. When that is true, most actions are blocked
  > |    bool public paused = false;
    |
    |    /// @dev Access modifier for CEO-only functionality
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(417)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    /// @dev Assigns a new address to act as the CEO. Only available to the current CEO.
    |    /// @param _newCEO The address of the new CEO
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(448)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    /// @dev Assigns a new address to act as the CTO. Only available to the current CTO or CEO.
    |    /// @param _newCTO The address of the new CTO
  > |    function setCTO(address _newCTO) external {
    |        require(
    |            msg.sender == ceoAddress ||
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(456)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    /// @dev Assigns a new address to act as the COO. Only available to the current COO or CEO.
    |    /// @param _newCOO The address of the new COO
  > |    function setCOO(address _newCOO) external {
    |        require(
    |            msg.sender == ceoAddress ||
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(468)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    /// @dev Assigns a new address to act as oracle.
    |    /// @param _newOracle The address of oracle
  > |    function setOracle(address _newOracle) external {
    |        require(msg.sender == ctoAddress);
    |        require(_newOracle != address(0));
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(480)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    /// @dev Called by any "C-level" role to pause the contract. Used only when
    |    ///  a bug or exploit is detected and we need to limit damage.
  > |    function pause() external onlyCLevel whenNotPaused {
    |        paused = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(503)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsAccessControl':
    |    /// @notice This is public rather than external so it can be called by
    |    ///  derived contracts.
  > |    function unpause() public onlyCEO whenPaused {
    |        // can't unpause if contract was upgraded
    |        paused = false;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(511)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsAccessControl':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsAccessControl':
    |        require(_newCTO != address(0));
    |
  > |        ctoAddress = _newCTO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsAccessControl':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(475)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsAccessControl':
    |        require(_newOracle != address(0));
    |
  > |        oracleAddress = _newOracle;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(484)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsAccessControl':
    |    ///  a bug or exploit is detected and we need to limit damage.
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsAccessControl':
    |    function unpause() public onlyCEO whenPaused {
    |        // can't unpause if contract was upgraded
  > |        paused = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(513)

[33mWarning[0m for LockedEther in contract 'EthernautsBase':
    |
    |/// @dev Base contract for all Ethernauts contracts holding global constants and functions.
  > |contract EthernautsBase {
    |
    |    /*** CONSTANTS USED ACROSS CONTRACTS ***/
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(338)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsBase':
    |    /// @dev due solidity limitation we cannot return dynamic array from methods
    |    /// so it creates incompability between functions across different contracts
  > |    uint8 public constant STATS_SIZE = 10;
    |    uint8 public constant SHIP_SLOTS = 5;
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(361)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsBase':
    |    /// so it creates incompability between functions across different contracts
    |    uint8 public constant STATS_SIZE = 10;
  > |    uint8 public constant SHIP_SLOTS = 5;
    |
    |    // Possible state of any asset
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(362)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsBase':
    |    /// 01000000 - Tradable - Buyable and sellable on the market.
    |    /// 10000000 - Hot Potato - Automatically gets put up for sale after acquiring.
  > |    bytes2 public ATTR_SEEDED     = bytes2(2**0);
    |    bytes2 public ATTR_PRODUCIBLE = bytes2(2**1);
    |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(382)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsBase':
    |    /// 10000000 - Hot Potato - Automatically gets put up for sale after acquiring.
    |    bytes2 public ATTR_SEEDED     = bytes2(2**0);
  > |    bytes2 public ATTR_PRODUCIBLE = bytes2(2**1);
    |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
    |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(383)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsBase':
    |    bytes2 public ATTR_SEEDED     = bytes2(2**0);
    |    bytes2 public ATTR_PRODUCIBLE = bytes2(2**1);
  > |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
    |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
    |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(384)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsBase':
    |    bytes2 public ATTR_PRODUCIBLE = bytes2(2**1);
    |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
  > |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
    |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
    |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(385)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsBase':
    |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
    |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
  > |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
    |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
    |    bytes2 public ATTR_TRADABLE   = bytes2(2**6);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(386)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsBase':
    |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
    |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
  > |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
    |    bytes2 public ATTR_TRADABLE   = bytes2(2**6);
    |    bytes2 public ATTR_GOLDENGOOSE = bytes2(2**7);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(387)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsBase':
    |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
    |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
  > |    bytes2 public ATTR_TRADABLE   = bytes2(2**6);
    |    bytes2 public ATTR_GOLDENGOOSE = bytes2(2**7);
    |}
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(388)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsBase':
    |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
    |    bytes2 public ATTR_TRADABLE   = bytes2(2**6);
  > |    bytes2 public ATTR_GOLDENGOOSE = bytes2(2**7);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(389)

[33mWarning[0m for DAO in contract 'EthernautsLogic':
    |    /// @param _tokenId asset UniqueId, only valid when > 0
    |    function _owns(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return ethernautsStorage.ownerOf(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(978)

[33mWarning[0m for DAO in contract 'EthernautsLogic':
    |    /// @param _tokenId asset UniqueId, only valid when > 0
    |    function _approvedFor(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return ethernautsStorage.approvedFor(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(985)

[33mWarning[0m for DAO in contract 'EthernautsLogic':
    |    ///  there is no value in spamming the log with Approval events in that case.
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        ethernautsStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(994)

[33mWarning[0m for DAO in contract 'EthernautsLogic':
    |
    |        // Reassign ownership (also clears pending approvals and emits Transfer event).
  > |        ethernautsStorage.transfer(_from, _to, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1081)

[33mWarning[0m for DAOConstantGas in contract 'EthernautsLogic':
    |    // @dev Allows the COO to capture the balance available to the contract.
    |    function withdrawBalances(address _to) public onlyCLevel {
  > |        _to.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1245)

[33mWarning[0m for LockedEther in contract 'EthernautsLogic':
    |/// @title The facet of the Ethernauts Logic contract handle all common code for logic/business contracts
    |/// @author Ethernatus - Fernando Pauer
  > |contract EthernautsLogic is EthernautsOwnership {
    |
    |    // Set in case the logic contract is broken and an upgrade is required
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1191)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @param _owner The owner address to check.
    |    /// @dev Required for ERC-721 compliance
  > |    function balanceOf(address _owner) public view returns (uint256 count) {
    |        return ethernautsStorage.balanceOf(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1000)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @param _to The address of the recipient, can be a user or contract.
    |    /// @param _tokenId The ID of the Asset to transfer.
  > |    function transfer(
    |        address _to,
    |        uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1010)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    ///  clear all approvals.
    |    /// @param _tokenId The ID of the Asset that can be transferred if this call succeeds.
  > |    function approve(
    |        address _to,
    |        uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1041)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    ///  including the caller.
    |    /// @param _tokenId The ID of the Asset to be transferred.
  > |    function transferFrom(
    |        address _from,
    |        address _to,
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1091)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @notice Allow pre-approved user to take ownership of a token
    |    /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
  > |    function takeOwnership(uint256 _tokenId) public {
    |        address _from = ethernautsStorage.ownerOf(_tokenId);
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1105)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @param _tokenId Token ID to get owner.
    |    /// @dev Required for ERC-721 compliance.
  > |    function ownerOf(uint256 _tokenId)
    |    external
    |    view
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1122)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @param _attributes see Asset Struct description
    |    /// @param _stats see Asset Struct description
  > |    function createNewAsset(
    |        uint256 _creatorTokenID,
    |        address _owner,
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1139)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @notice verify if token is in exploration time
    |    /// @param _tokenId The Token ID that can be upgraded
  > |    function isExploring(uint256 _tokenId) public view returns (bool) {
    |        uint256 cooldown;
    |        uint64 cooldownEndBlock;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1180)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    ///  be paused indefinitely if such an upgrade takes place.)
    |    /// @param _v2Address new address
  > |    function setNewAddress(address _v2Address) external onlyCTO whenPaused {
    |        // See README.md for updgrade plan
    |        newContractAddress = _v2Address;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1214)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsLogic':
    |
    |    // @dev Allows the COO to capture the balance available to the contract.
  > |    function withdrawBalances(address _to) public onlyCLevel {
    |        _to.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1244)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @dev due solidity limitation we cannot return dynamic array from methods
    |    /// so it creates incompability between functions across different contracts
  > |    uint8 public constant STATS_SIZE = 10;
    |    uint8 public constant SHIP_SLOTS = 5;
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(361)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// so it creates incompability between functions across different contracts
    |    uint8 public constant STATS_SIZE = 10;
  > |    uint8 public constant SHIP_SLOTS = 5;
    |
    |    // Possible state of any asset
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(362)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// 01000000 - Tradable - Buyable and sellable on the market.
    |    /// 10000000 - Hot Potato - Automatically gets put up for sale after acquiring.
  > |    bytes2 public ATTR_SEEDED     = bytes2(2**0);
    |    bytes2 public ATTR_PRODUCIBLE = bytes2(2**1);
    |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(382)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// 10000000 - Hot Potato - Automatically gets put up for sale after acquiring.
    |    bytes2 public ATTR_SEEDED     = bytes2(2**0);
  > |    bytes2 public ATTR_PRODUCIBLE = bytes2(2**1);
    |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
    |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(383)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    bytes2 public ATTR_SEEDED     = bytes2(2**0);
    |    bytes2 public ATTR_PRODUCIBLE = bytes2(2**1);
  > |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
    |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
    |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(384)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    bytes2 public ATTR_PRODUCIBLE = bytes2(2**1);
    |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
  > |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
    |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
    |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(385)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
    |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
  > |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
    |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
    |    bytes2 public ATTR_TRADABLE   = bytes2(2**6);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(386)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
    |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
  > |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
    |    bytes2 public ATTR_TRADABLE   = bytes2(2**6);
    |    bytes2 public ATTR_GOLDENGOOSE = bytes2(2**7);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(387)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
    |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
  > |    bytes2 public ATTR_TRADABLE   = bytes2(2**6);
    |    bytes2 public ATTR_GOLDENGOOSE = bytes2(2**7);
    |}
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(388)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
    |    bytes2 public ATTR_TRADABLE   = bytes2(2**6);
  > |    bytes2 public ATTR_GOLDENGOOSE = bytes2(2**7);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(389)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |
    |    // The addresses of the accounts (or contracts) that can execute actions within each roles.
  > |    address public ceoAddress;
    |    address public ctoAddress;
    |    address public cooAddress;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(411)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    // The addresses of the accounts (or contracts) that can execute actions within each roles.
    |    address public ceoAddress;
  > |    address public ctoAddress;
    |    address public cooAddress;
    |    address public oracleAddress;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(412)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    address public ceoAddress;
    |    address public ctoAddress;
  > |    address public cooAddress;
    |    address public oracleAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(413)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    address public ctoAddress;
    |    address public cooAddress;
  > |    address public oracleAddress;
    |
    |    // @dev Keeps track whether the contract is paused. When that is true, most actions are blocked
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(414)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |
    |    // @dev Keeps track whether the contract is paused. When that is true, most actions are blocked
  > |    bool public paused = false;
    |
    |    /// @dev Access modifier for CEO-only functionality
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(417)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @dev Assigns a new address to act as the CEO. Only available to the current CEO.
    |    /// @param _newCEO The address of the new CEO
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(448)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @dev Assigns a new address to act as the CTO. Only available to the current CTO or CEO.
    |    /// @param _newCTO The address of the new CTO
  > |    function setCTO(address _newCTO) external {
    |        require(
    |            msg.sender == ceoAddress ||
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(456)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @dev Assigns a new address to act as the COO. Only available to the current COO or CEO.
    |    /// @param _newCOO The address of the new COO
  > |    function setCOO(address _newCOO) external {
    |        require(
    |            msg.sender == ceoAddress ||
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(468)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @dev Assigns a new address to act as oracle.
    |    /// @param _newOracle The address of oracle
  > |    function setOracle(address _newOracle) external {
    |        require(msg.sender == ctoAddress);
    |        require(_newOracle != address(0));
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(480)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @dev Called by any "C-level" role to pause the contract. Used only when
    |    ///  a bug or exploit is detected and we need to limit damage.
  > |    function pause() external onlyCLevel whenNotPaused {
    |        paused = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(503)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @notice This is public rather than external so it can be called by
    |    ///  derived contracts.
  > |    function unpause() public onlyCEO whenPaused {
    |        // can't unpause if contract was upgraded
    |        paused = false;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(511)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |
    |    /// @dev Contract holding only data.
  > |    EthernautsStorage public ethernautsStorage;
    |
    |    /*** CONSTANTS ***/
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(937)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /*** CONSTANTS ***/
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
  > |    string public constant name = "Ethernauts";
    |    string public constant symbol = "ETNT";
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(941)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
    |    string public constant name = "Ethernauts";
  > |    string public constant symbol = "ETNT";
    |
    |    /********* ERC 721 - COMPLIANCE CONSTANTS AND FUNCTIONS ***************/
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(942)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    event Build(address owner, uint256 tokenId, uint16 assetId, uint256 price);
    |
  > |    function implementsERC721() public pure returns (bool) {
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(962)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    ///  Returns true for any standardized interfaces implemented by this contract. ERC-165 and ERC-721.
    |    /// @param _interfaceID interface signature ID
  > |    function supportsInterface(bytes4 _interfaceID) external view returns (bool)
    |    {
    |        return ((_interfaceID == InterfaceSignature_ERC165) || (_interfaceID == InterfaceSignature_ERC721));
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(969)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @param _claimant the address we are validating against.
    |    /// @param _tokenId asset UniqueId, only valid when > 0
  > |    function _owns(address _claimant, uint256 _tokenId) internal view returns (bool) {
    |        return ethernautsStorage.ownerOf(_tokenId) == _claimant;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(977)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @param _claimant the address we are confirming asset is approved for.
    |    /// @param _tokenId asset UniqueId, only valid when > 0
  > |    function _approvedFor(address _claimant, uint256 _tokenId) internal view returns (bool) {
    |        return ethernautsStorage.approvedFor(_tokenId) == _claimant;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(984)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    ///  _approve() and transferFrom() are used together for putting Assets on auction, and
    |    ///  there is no value in spamming the log with Approval events in that case.
  > |    function _approve(uint256 _tokenId, address _approved) internal {
    |        ethernautsStorage.approve(_tokenId, _approved);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(993)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    ///  including the caller.
    |    /// @param _tokenId The ID of the Asset to be transferred.
  > |    function _transferFrom(
    |        address _from,
    |        address _to,
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1065)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @notice Returns the total number of Assets currently in existence.
    |    /// @dev Required for ERC-721 compliance.
  > |    function totalSupply() public view returns (uint256) {
    |        return ethernautsStorage.totalSupply();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1115)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |
    |    // Set in case the logic contract is broken and an upgrade is required
  > |    address public newContractAddress;
    |
    |    /// @dev Constructor
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1194)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @dev set a new reference to the NFT ownership contract
    |    /// @param _CStorageAddress - address of a deployed contract implementing EthernautsStorage.
  > |    function setEthernautsStorageContract(address _CStorageAddress) public onlyCLevel whenPaused {
    |        EthernautsStorage candidateContract = EthernautsStorage(_CStorageAddress);
    |        require(candidateContract.isEthernautsStorage());
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1222)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |    /// @notice This is public rather than external so we can call super.unpause
    |    ///  without using an expensive CALL.
  > |    function unpause() public onlyCEO whenPaused {
    |        require(ethernautsStorage != address(0));
    |        require(newContractAddress == address(0));
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1233)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsLogic':
    |
    |    /// return current contract balance
  > |    function getBalance() public view onlyCLevel returns (uint256) {
    |        return this.balance;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1249)

[31mViolation[0m for TODAmount in contract 'EthernautsLogic':
    |    // @dev Allows the COO to capture the balance available to the contract.
    |    function withdrawBalances(address _to) public onlyCLevel {
  > |        _to.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1245)

[33mWarning[0m for TODReceiver in contract 'EthernautsLogic':
    |    // @dev Allows the COO to capture the balance available to the contract.
    |    function withdrawBalances(address _to) public onlyCLevel {
  > |        _to.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1245)

[33mWarning[0m for UnhandledException in contract 'EthernautsLogic':
    |    /// @param _tokenId asset UniqueId, only valid when > 0
    |    function _owns(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return ethernautsStorage.ownerOf(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(978)

[33mWarning[0m for UnhandledException in contract 'EthernautsLogic':
    |    /// @param _tokenId asset UniqueId, only valid when > 0
    |    function _approvedFor(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return ethernautsStorage.approvedFor(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(985)

[33mWarning[0m for UnhandledException in contract 'EthernautsLogic':
    |    ///  there is no value in spamming the log with Approval events in that case.
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        ethernautsStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(994)

[33mWarning[0m for UnhandledException in contract 'EthernautsLogic':
    |    /// @dev Required for ERC-721 compliance
    |    function balanceOf(address _owner) public view returns (uint256 count) {
  > |        return ethernautsStorage.balanceOf(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1001)

[33mWarning[0m for UnhandledException in contract 'EthernautsLogic':
    |
    |        // Reassign ownership, clear pending approvals, emit Transfer event.
  > |        ethernautsStorage.transfer(msg.sender, _to, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1032)

[33mWarning[0m for UnhandledException in contract 'EthernautsLogic':
    |
    |        // Reassign ownership (also clears pending approvals and emits Transfer event).
  > |        ethernautsStorage.transfer(_from, _to, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1081)

[33mWarning[0m for UnhandledException in contract 'EthernautsLogic':
    |    /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |    function takeOwnership(uint256 _tokenId) public {
  > |        address _from = ethernautsStorage.ownerOf(_tokenId);
    |
    |        // Safety check to prevent against an unexpected 0x0 default.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1106)

[33mWarning[0m for UnhandledException in contract 'EthernautsLogic':
    |    /// @dev Required for ERC-721 compliance.
    |    function totalSupply() public view returns (uint256) {
  > |        return ethernautsStorage.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1116)

[33mWarning[0m for UnhandledException in contract 'EthernautsLogic':
    |    returns (address owner)
    |    {
  > |        owner = ethernautsStorage.ownerOf(_tokenId);
    |
    |        require(owner != address(0));
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1127)

[33mWarning[0m for UnhandledException in contract 'EthernautsLogic':
    |        require(_owner != address(0));
    |
  > |        uint256 tokenID = ethernautsStorage.createAsset(
    |            _creatorTokenID,
    |            _owner,
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1154)

[33mWarning[0m for UnhandledException in contract 'EthernautsLogic':
    |        uint256 cooldown;
    |        uint64 cooldownEndBlock;
  > |        (,,,,,cooldownEndBlock, cooldown,) = ethernautsStorage.assets(_tokenId);
    |        return (cooldown > now) || (cooldownEndBlock > uint64(block.number));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1183)

[33mWarning[0m for UnhandledException in contract 'EthernautsLogic':
    |    function setEthernautsStorageContract(address _CStorageAddress) public onlyCLevel whenPaused {
    |        EthernautsStorage candidateContract = EthernautsStorage(_CStorageAddress);
  > |        require(candidateContract.isEthernautsStorage());
    |        ethernautsStorage = candidateContract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1224)

[33mWarning[0m for UnhandledException in contract 'EthernautsLogic':
    |        require(newContractAddress == address(0));
    |        // require this contract to have access to storage contract
  > |        require(ethernautsStorage.contractsGrantedAccess(address(this)) == true);
    |
    |        // Actually unpause the contract.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1237)

[33mWarning[0m for UnhandledException in contract 'EthernautsLogic':
    |    // @dev Allows the COO to capture the balance available to the contract.
    |    function withdrawBalances(address _to) public onlyCLevel {
  > |        _to.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1245)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsLogic':
    |    /// @param _tokenId asset UniqueId, only valid when > 0
    |    function _owns(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return ethernautsStorage.ownerOf(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(978)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsLogic':
    |    /// @param _tokenId asset UniqueId, only valid when > 0
    |    function _approvedFor(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return ethernautsStorage.approvedFor(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(985)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsLogic':
    |    ///  there is no value in spamming the log with Approval events in that case.
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        ethernautsStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(994)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsLogic':
    |    /// @dev Required for ERC-721 compliance
    |    function balanceOf(address _owner) public view returns (uint256 count) {
  > |        return ethernautsStorage.balanceOf(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1001)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsLogic':
    |
    |        // Reassign ownership, clear pending approvals, emit Transfer event.
  > |        ethernautsStorage.transfer(msg.sender, _to, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1032)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsLogic':
    |
    |        // Reassign ownership (also clears pending approvals and emits Transfer event).
  > |        ethernautsStorage.transfer(_from, _to, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1081)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsLogic':
    |    /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |    function takeOwnership(uint256 _tokenId) public {
  > |        address _from = ethernautsStorage.ownerOf(_tokenId);
    |
    |        // Safety check to prevent against an unexpected 0x0 default.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsLogic':
    |    /// @dev Required for ERC-721 compliance.
    |    function totalSupply() public view returns (uint256) {
  > |        return ethernautsStorage.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1116)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsLogic':
    |    returns (address owner)
    |    {
  > |        owner = ethernautsStorage.ownerOf(_tokenId);
    |
    |        require(owner != address(0));
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsLogic':
    |        require(_owner != address(0));
    |
  > |        uint256 tokenID = ethernautsStorage.createAsset(
    |            _creatorTokenID,
    |            _owner,
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsLogic':
    |        uint256 cooldown;
    |        uint64 cooldownEndBlock;
  > |        (,,,,,cooldownEndBlock, cooldown,) = ethernautsStorage.assets(_tokenId);
    |        return (cooldown > now) || (cooldownEndBlock > uint64(block.number));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsLogic':
    |    function setEthernautsStorageContract(address _CStorageAddress) public onlyCLevel whenPaused {
    |        EthernautsStorage candidateContract = EthernautsStorage(_CStorageAddress);
  > |        require(candidateContract.isEthernautsStorage());
    |        ethernautsStorage = candidateContract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1224)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsLogic':
    |        require(newContractAddress == address(0));
    |        // require this contract to have access to storage contract
  > |        require(ethernautsStorage.contractsGrantedAccess(address(this)) == true);
    |
    |        // Actually unpause the contract.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1237)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsLogic':
    |    // @dev Allows the COO to capture the balance available to the contract.
    |    function withdrawBalances(address _to) public onlyCLevel {
  > |        _to.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1245)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsLogic':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsLogic':
    |        require(_newCTO != address(0));
    |
  > |        ctoAddress = _newCTO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsLogic':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(475)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsLogic':
    |        require(_newOracle != address(0));
    |
  > |        oracleAddress = _newOracle;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(484)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsLogic':
    |    ///  a bug or exploit is detected and we need to limit damage.
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsLogic':
    |    function unpause() public onlyCEO whenPaused {
    |        // can't unpause if contract was upgraded
  > |        paused = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsLogic':
    |    function setNewAddress(address _v2Address) external onlyCTO whenPaused {
    |        // See README.md for updgrade plan
  > |        newContractAddress = _v2Address;
    |        ContractUpgrade(_v2Address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1216)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsLogic':
    |        EthernautsStorage candidateContract = EthernautsStorage(_CStorageAddress);
    |        require(candidateContract.isEthernautsStorage());
  > |        ethernautsStorage = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1225)

[33mWarning[0m for DAOConstantGas in contract 'EthernautsMarket':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(222)

[33mWarning[0m for DAOConstantGas in contract 'EthernautsMarket':
    |        // not susceptible to a re-entry attack because the auction is
    |        // removed before any transfers occur.
  > |        msg.sender.transfer(bidExcess);
    |
    |        // Tell the world!
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(234)

[33mWarning[0m for DAOConstantGas in contract 'EthernautsMarket':
    |    // @dev Allows the COO to capture the balance available to the contract.
    |    function withdrawBalances(address _to) public onlyCLevel {
  > |        _to.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1245)

[33mWarning[0m for DAOConstantGas in contract 'EthernautsMarket':
    |        // Pay previous tokenOwner if owner is not contract
    |        if (oldOwner != address(this)) {
  > |            oldOwner.transfer(payment); //(1-0.06)
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1530)

[33mWarning[0m for DAOConstantGas in contract 'EthernautsMarket':
    |
    |        // send excess back to buyer
  > |        msg.sender.transfer(purchaseExcess);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1542)

[33mWarning[0m for LockedEther in contract 'EthernautsMarket':
    |///      - Purchase: This provides public methods for buying GoldenGoose assets.
    |/// @author Ethernatus - Fernando Pauer
  > |contract EthernautsMarket is EthernautsLogic, ClockAuctionBase {
    |
    |    /// @dev Constructor creates a reference to the NFT ownership contract
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1263)

[31mViolation[0m for TODAmount in contract 'EthernautsMarket':
    |    // @dev Allows the COO to capture the balance available to the contract.
    |    function withdrawBalances(address _to) public onlyCLevel {
  > |        _to.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1245)

[33mWarning[0m for TODAmount in contract 'EthernautsMarket':
    |        // not susceptible to a re-entry attack because the auction is
    |        // removed before any transfers occur.
  > |        msg.sender.transfer(bidExcess);
    |
    |        // Tell the world!
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(234)

[33mWarning[0m for TODAmount in contract 'EthernautsMarket':
    |
    |        // send excess back to buyer
  > |        msg.sender.transfer(purchaseExcess);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1542)

[33mWarning[0m for TODAmount in contract 'EthernautsMarket':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(222)

[33mWarning[0m for TODAmount in contract 'EthernautsMarket':
    |        // Pay previous tokenOwner if owner is not contract
    |        if (oldOwner != address(this)) {
  > |            oldOwner.transfer(payment); //(1-0.06)
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1530)

[33mWarning[0m for TODReceiver in contract 'EthernautsMarket':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(222)

[33mWarning[0m for TODReceiver in contract 'EthernautsMarket':
    |        // not susceptible to a re-entry attack because the auction is
    |        // removed before any transfers occur.
  > |        msg.sender.transfer(bidExcess);
    |
    |        // Tell the world!
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(234)

[33mWarning[0m for TODReceiver in contract 'EthernautsMarket':
    |    // @dev Allows the COO to capture the balance available to the contract.
    |    function withdrawBalances(address _to) public onlyCLevel {
  > |        _to.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1245)

[33mWarning[0m for TODReceiver in contract 'EthernautsMarket':
    |        // Pay previous tokenOwner if owner is not contract
    |        if (oldOwner != address(this)) {
  > |            oldOwner.transfer(payment); //(1-0.06)
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1530)

[33mWarning[0m for TODReceiver in contract 'EthernautsMarket':
    |
    |        // send excess back to buyer
  > |        msg.sender.transfer(purchaseExcess);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1542)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |    /// @param _tokenId - ID of token whose ownership to verify.
    |    function _owns(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return (nonFungibleContract.ownerOf(_tokenId) == _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(141)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |    function _transfer(address _receiver, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transfer(_receiver, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(150)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(222)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |        // not susceptible to a re-entry attack because the auction is
    |        // removed before any transfers occur.
  > |        msg.sender.transfer(bidExcess);
    |
    |        // Tell the world!
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(234)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |    /// @param _tokenId asset UniqueId, only valid when > 0
    |    function _approvedFor(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return ethernautsStorage.approvedFor(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(985)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |    ///  there is no value in spamming the log with Approval events in that case.
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        ethernautsStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(994)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |    /// @dev Required for ERC-721 compliance
    |    function balanceOf(address _owner) public view returns (uint256 count) {
  > |        return ethernautsStorage.balanceOf(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1001)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |
    |        // Reassign ownership, clear pending approvals, emit Transfer event.
  > |        ethernautsStorage.transfer(msg.sender, _to, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1032)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |
    |        // Reassign ownership (also clears pending approvals and emits Transfer event).
  > |        ethernautsStorage.transfer(_from, _to, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1081)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |    /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |    function takeOwnership(uint256 _tokenId) public {
  > |        address _from = ethernautsStorage.ownerOf(_tokenId);
    |
    |        // Safety check to prevent against an unexpected 0x0 default.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1106)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |    /// @dev Required for ERC-721 compliance.
    |    function totalSupply() public view returns (uint256) {
  > |        return ethernautsStorage.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1116)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |    returns (address owner)
    |    {
  > |        owner = ethernautsStorage.ownerOf(_tokenId);
    |
    |        require(owner != address(0));
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1127)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |        require(_owner != address(0));
    |
  > |        uint256 tokenID = ethernautsStorage.createAsset(
    |            _creatorTokenID,
    |            _owner,
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1154)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |        uint256 cooldown;
    |        uint64 cooldownEndBlock;
  > |        (,,,,,cooldownEndBlock, cooldown,) = ethernautsStorage.assets(_tokenId);
    |        return (cooldown > now) || (cooldownEndBlock > uint64(block.number));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1183)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |    function setEthernautsStorageContract(address _CStorageAddress) public onlyCLevel whenPaused {
    |        EthernautsStorage candidateContract = EthernautsStorage(_CStorageAddress);
  > |        require(candidateContract.isEthernautsStorage());
    |        ethernautsStorage = candidateContract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1224)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |        require(newContractAddress == address(0));
    |        // require this contract to have access to storage contract
  > |        require(ethernautsStorage.contractsGrantedAccess(address(this)) == true);
    |
    |        // Actually unpause the contract.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1237)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |    // @dev Allows the COO to capture the balance available to the contract.
    |    function withdrawBalances(address _to) public onlyCLevel {
  > |        _to.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1245)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |
    |        // only set new price after transfer
  > |        ethernautsStorage.setPrice(_tokenId, newPrice);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1306)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |        require(_seller != address(0));
    |
  > |        ethernautsStorage.approve(_tokenId, address(this));
    |
    |        /// Escrows the NFT, assigning ownership to this contract.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1369)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |        // Ensure the asset is Tradeable and not GoldenGoose to prevent the auction
    |        // contract accidentally receiving ownership of the child.
  > |        require(ethernautsStorage.hasAllAttrs(_tokenId, ATTR_TRADABLE));
    |        require(!ethernautsStorage.hasAllAttrs(_tokenId, ATTR_GOLDENGOOSE));
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1449)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |        // contract accidentally receiving ownership of the child.
    |        require(ethernautsStorage.hasAllAttrs(_tokenId, ATTR_TRADABLE));
  > |        require(!ethernautsStorage.hasAllAttrs(_tokenId, ATTR_GOLDENGOOSE));
    |
    |        // Ensure the asset is in available state, otherwise it cannot be sold
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1450)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |
    |        // Ensure the asset is in available state, otherwise it cannot be sold
  > |        require(ethernautsStorage.isState(_tokenId, uint8(AssetState.Available)));
    |
    |        // asset or object could not be in exploration
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1453)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |        require(!isExploring(_tokenId));
    |
  > |        ethernautsStorage.approve(_tokenId, address(this));
    |
    |        /// Escrows the NFT, assigning ownership to this contract.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1458)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |    function purchase(uint256 _tokenId) external payable whenNotPaused {
    |        // Checking if Asset is a GoldenGoose, if not this purchase is not allowed
  > |        require(ethernautsStorage.hasAnyAttrs(_tokenId, ATTR_GOLDENGOOSE));
    |
    |        // asset could not be in exploration
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1487)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |        require(!isExploring(_tokenId));
    |
  > |        address oldOwner = ethernautsStorage.ownerOf(_tokenId);
    |        address newOwner = msg.sender;
    |        uint256 sellingPrice = ethernautsStorage.priceOf(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1492)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |        address oldOwner = ethernautsStorage.ownerOf(_tokenId);
    |        address newOwner = msg.sender;
  > |        uint256 sellingPrice = ethernautsStorage.priceOf(_tokenId);
    |
    |        // Making sure token owner is not sending to self
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1494)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |        // Pay previous tokenOwner if owner is not contract
    |        if (oldOwner != address(this)) {
  > |            oldOwner.transfer(payment); //(1-0.06)
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1530)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |
    |        // only transfer token after confirmed transaction
  > |        ethernautsStorage.transfer(oldOwner, newOwner, _tokenId);
    |
    |        // only set new price after confirmed transaction
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1534)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |
    |        // only set new price after confirmed transaction
  > |        ethernautsStorage.setPrice(_tokenId, newPrice);
    |
    |        Purchase(_tokenId, sellingPrice, newPrice, oldOwner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1537)

[33mWarning[0m for UnhandledException in contract 'EthernautsMarket':
    |
    |        // send excess back to buyer
  > |        msg.sender.transfer(purchaseExcess);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1542)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |    /// @param _tokenId - ID of token whose ownership to verify.
    |    function _owns(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return (nonFungibleContract.ownerOf(_tokenId) == _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(141)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |    function _transfer(address _receiver, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transfer(_receiver, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(150)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(222)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |        // not susceptible to a re-entry attack because the auction is
    |        // removed before any transfers occur.
  > |        msg.sender.transfer(bidExcess);
    |
    |        // Tell the world!
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(234)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |    /// @param _tokenId asset UniqueId, only valid when > 0
    |    function _approvedFor(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return ethernautsStorage.approvedFor(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(985)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |    ///  there is no value in spamming the log with Approval events in that case.
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        ethernautsStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(994)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |    /// @dev Required for ERC-721 compliance
    |    function balanceOf(address _owner) public view returns (uint256 count) {
  > |        return ethernautsStorage.balanceOf(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1001)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |
    |        // Reassign ownership, clear pending approvals, emit Transfer event.
  > |        ethernautsStorage.transfer(msg.sender, _to, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1032)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |
    |        // Reassign ownership (also clears pending approvals and emits Transfer event).
  > |        ethernautsStorage.transfer(_from, _to, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1081)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |    /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |    function takeOwnership(uint256 _tokenId) public {
  > |        address _from = ethernautsStorage.ownerOf(_tokenId);
    |
    |        // Safety check to prevent against an unexpected 0x0 default.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |    /// @dev Required for ERC-721 compliance.
    |    function totalSupply() public view returns (uint256) {
  > |        return ethernautsStorage.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1116)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |    returns (address owner)
    |    {
  > |        owner = ethernautsStorage.ownerOf(_tokenId);
    |
    |        require(owner != address(0));
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |        require(_owner != address(0));
    |
  > |        uint256 tokenID = ethernautsStorage.createAsset(
    |            _creatorTokenID,
    |            _owner,
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |        uint256 cooldown;
    |        uint64 cooldownEndBlock;
  > |        (,,,,,cooldownEndBlock, cooldown,) = ethernautsStorage.assets(_tokenId);
    |        return (cooldown > now) || (cooldownEndBlock > uint64(block.number));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |    function setEthernautsStorageContract(address _CStorageAddress) public onlyCLevel whenPaused {
    |        EthernautsStorage candidateContract = EthernautsStorage(_CStorageAddress);
  > |        require(candidateContract.isEthernautsStorage());
    |        ethernautsStorage = candidateContract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1224)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |        require(newContractAddress == address(0));
    |        // require this contract to have access to storage contract
  > |        require(ethernautsStorage.contractsGrantedAccess(address(this)) == true);
    |
    |        // Actually unpause the contract.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1237)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |    // @dev Allows the COO to capture the balance available to the contract.
    |    function withdrawBalances(address _to) public onlyCLevel {
  > |        _to.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1245)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |
    |        // only set new price after transfer
  > |        ethernautsStorage.setPrice(_tokenId, newPrice);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |        require(_seller != address(0));
    |
  > |        ethernautsStorage.approve(_tokenId, address(this));
    |
    |        /// Escrows the NFT, assigning ownership to this contract.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1369)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |        // Ensure the asset is Tradeable and not GoldenGoose to prevent the auction
    |        // contract accidentally receiving ownership of the child.
  > |        require(ethernautsStorage.hasAllAttrs(_tokenId, ATTR_TRADABLE));
    |        require(!ethernautsStorage.hasAllAttrs(_tokenId, ATTR_GOLDENGOOSE));
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1449)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |        // contract accidentally receiving ownership of the child.
    |        require(ethernautsStorage.hasAllAttrs(_tokenId, ATTR_TRADABLE));
  > |        require(!ethernautsStorage.hasAllAttrs(_tokenId, ATTR_GOLDENGOOSE));
    |
    |        // Ensure the asset is in available state, otherwise it cannot be sold
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1450)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |
    |        // Ensure the asset is in available state, otherwise it cannot be sold
  > |        require(ethernautsStorage.isState(_tokenId, uint8(AssetState.Available)));
    |
    |        // asset or object could not be in exploration
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1453)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |        require(!isExploring(_tokenId));
    |
  > |        ethernautsStorage.approve(_tokenId, address(this));
    |
    |        /// Escrows the NFT, assigning ownership to this contract.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1458)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |    function purchase(uint256 _tokenId) external payable whenNotPaused {
    |        // Checking if Asset is a GoldenGoose, if not this purchase is not allowed
  > |        require(ethernautsStorage.hasAnyAttrs(_tokenId, ATTR_GOLDENGOOSE));
    |
    |        // asset could not be in exploration
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1487)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |        require(!isExploring(_tokenId));
    |
  > |        address oldOwner = ethernautsStorage.ownerOf(_tokenId);
    |        address newOwner = msg.sender;
    |        uint256 sellingPrice = ethernautsStorage.priceOf(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1492)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |        address oldOwner = ethernautsStorage.ownerOf(_tokenId);
    |        address newOwner = msg.sender;
  > |        uint256 sellingPrice = ethernautsStorage.priceOf(_tokenId);
    |
    |        // Making sure token owner is not sending to self
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1494)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |        // Pay previous tokenOwner if owner is not contract
    |        if (oldOwner != address(this)) {
  > |            oldOwner.transfer(payment); //(1-0.06)
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1530)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |
    |        // only transfer token after confirmed transaction
  > |        ethernautsStorage.transfer(oldOwner, newOwner, _tokenId);
    |
    |        // only set new price after confirmed transaction
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1534)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |
    |        // only set new price after confirmed transaction
  > |        ethernautsStorage.setPrice(_tokenId, newPrice);
    |
    |        Purchase(_tokenId, sellingPrice, newPrice, oldOwner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1537)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsMarket':
    |
    |        // send excess back to buyer
  > |        msg.sender.transfer(purchaseExcess);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1542)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |        require(_auction.duration >= 1 minutes);
    |
  > |        tokenIdToAuction[_tokenId] = _auction;
    |
    |        AuctionCreated(
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |    /// @param _tokenId - ID of NFT on auction.
    |    function _removeAuction(uint256 _tokenId) internal {
  > |        delete tokenIdToAuction[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |        require(_newCTO != address(0));
    |
  > |        ctoAddress = _newCTO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(475)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |        require(_newOracle != address(0));
    |
  > |        oracleAddress = _newOracle;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(484)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |    ///  a bug or exploit is detected and we need to limit damage.
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |    function unpause() public onlyCEO whenPaused {
    |        // can't unpause if contract was upgraded
  > |        paused = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |    function setNewAddress(address _v2Address) external onlyCTO whenPaused {
    |        // See README.md for updgrade plan
  > |        newContractAddress = _v2Address;
    |        ContractUpgrade(_v2Address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1216)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |        EthernautsStorage candidateContract = EthernautsStorage(_CStorageAddress);
    |        require(candidateContract.isEthernautsStorage());
  > |        ethernautsStorage = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1225)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |    /// @notice Any C-level can change sales cut.
    |    function setOwnerCut(uint256 _ownerCut) public onlyCLevel {
  > |        ownerCut = _ownerCut;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1477)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |        uint256 _secondStepLimit
    |    ) public onlyCLevel {
  > |        firstStepLimit = _firstStepLimit;
    |        secondStepLimit = _secondStepLimit;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1550)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |    ) public onlyCLevel {
    |        firstStepLimit = _firstStepLimit;
  > |        secondStepLimit = _secondStepLimit;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1551)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |        uint8 _Steps
    |    ) public onlyCLevel {
  > |        percentageFee1Step = _Fee1;
    |        percentageFee2Step = _Fee2;
    |        percentageFeeSteps = _Fees;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1563)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |    ) public onlyCLevel {
    |        percentageFee1Step = _Fee1;
  > |        percentageFee2Step = _Fee2;
    |        percentageFeeSteps = _Fees;
    |        percentage1Step = _1Step;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1564)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |        percentageFee1Step = _Fee1;
    |        percentageFee2Step = _Fee2;
  > |        percentageFeeSteps = _Fees;
    |        percentage1Step = _1Step;
    |        percentage2Step = _2Step;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1565)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |        percentageFee2Step = _Fee2;
    |        percentageFeeSteps = _Fees;
  > |        percentage1Step = _1Step;
    |        percentage2Step = _2Step;
    |        percentageSteps = _Steps;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1566)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |        percentageFeeSteps = _Fees;
    |        percentage1Step = _1Step;
  > |        percentage2Step = _2Step;
    |        percentageSteps = _Steps;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1567)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsMarket':
    |        percentage1Step = _1Step;
    |        percentage2Step = _2Step;
  > |        percentageSteps = _Steps;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1568)

[33mWarning[0m for DAO in contract 'EthernautsOwnership':
    |    /// @param _tokenId asset UniqueId, only valid when > 0
    |    function _owns(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return ethernautsStorage.ownerOf(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(978)

[33mWarning[0m for DAO in contract 'EthernautsOwnership':
    |    /// @param _tokenId asset UniqueId, only valid when > 0
    |    function _approvedFor(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return ethernautsStorage.approvedFor(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(985)

[33mWarning[0m for DAO in contract 'EthernautsOwnership':
    |    ///  there is no value in spamming the log with Approval events in that case.
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        ethernautsStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(994)

[33mWarning[0m for DAO in contract 'EthernautsOwnership':
    |
    |        // Reassign ownership (also clears pending approvals and emits Transfer event).
  > |        ethernautsStorage.transfer(_from, _to, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1081)

[33mWarning[0m for LockedEther in contract 'EthernautsOwnership':
    |/// @author Ethernatus - Fernando Pauer
    |/// @dev Ref: https://github.com/ethereum/EIPs/issues/721
  > |contract EthernautsOwnership is EthernautsAccessControl, ERC721 {
    |
    |    /// @dev Contract holding only data.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(934)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// @param _owner The owner address to check.
    |    /// @dev Required for ERC-721 compliance
  > |    function balanceOf(address _owner) public view returns (uint256 count) {
    |        return ethernautsStorage.balanceOf(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1000)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// @param _to The address of the recipient, can be a user or contract.
    |    /// @param _tokenId The ID of the Asset to transfer.
  > |    function transfer(
    |        address _to,
    |        uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1010)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    ///  clear all approvals.
    |    /// @param _tokenId The ID of the Asset that can be transferred if this call succeeds.
  > |    function approve(
    |        address _to,
    |        uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1041)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    ///  including the caller.
    |    /// @param _tokenId The ID of the Asset to be transferred.
  > |    function transferFrom(
    |        address _from,
    |        address _to,
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1091)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// @notice Allow pre-approved user to take ownership of a token
    |    /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
  > |    function takeOwnership(uint256 _tokenId) public {
    |        address _from = ethernautsStorage.ownerOf(_tokenId);
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1105)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// @param _tokenId Token ID to get owner.
    |    /// @dev Required for ERC-721 compliance.
  > |    function ownerOf(uint256 _tokenId)
    |    external
    |    view
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1122)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// @param _attributes see Asset Struct description
    |    /// @param _stats see Asset Struct description
  > |    function createNewAsset(
    |        uint256 _creatorTokenID,
    |        address _owner,
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1139)

[31mViolation[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// @notice verify if token is in exploration time
    |    /// @param _tokenId The Token ID that can be upgraded
  > |    function isExploring(uint256 _tokenId) public view returns (bool) {
    |        uint256 cooldown;
    |        uint64 cooldownEndBlock;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1180)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// @dev due solidity limitation we cannot return dynamic array from methods
    |    /// so it creates incompability between functions across different contracts
  > |    uint8 public constant STATS_SIZE = 10;
    |    uint8 public constant SHIP_SLOTS = 5;
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(361)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// so it creates incompability between functions across different contracts
    |    uint8 public constant STATS_SIZE = 10;
  > |    uint8 public constant SHIP_SLOTS = 5;
    |
    |    // Possible state of any asset
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(362)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// 01000000 - Tradable - Buyable and sellable on the market.
    |    /// 10000000 - Hot Potato - Automatically gets put up for sale after acquiring.
  > |    bytes2 public ATTR_SEEDED     = bytes2(2**0);
    |    bytes2 public ATTR_PRODUCIBLE = bytes2(2**1);
    |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(382)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// 10000000 - Hot Potato - Automatically gets put up for sale after acquiring.
    |    bytes2 public ATTR_SEEDED     = bytes2(2**0);
  > |    bytes2 public ATTR_PRODUCIBLE = bytes2(2**1);
    |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
    |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(383)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    bytes2 public ATTR_SEEDED     = bytes2(2**0);
    |    bytes2 public ATTR_PRODUCIBLE = bytes2(2**1);
  > |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
    |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
    |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(384)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    bytes2 public ATTR_PRODUCIBLE = bytes2(2**1);
    |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
  > |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
    |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
    |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(385)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    bytes2 public ATTR_EXPLORABLE = bytes2(2**2);
    |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
  > |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
    |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
    |    bytes2 public ATTR_TRADABLE   = bytes2(2**6);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(386)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    bytes2 public ATTR_LEASABLE   = bytes2(2**3);
    |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
  > |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
    |    bytes2 public ATTR_TRADABLE   = bytes2(2**6);
    |    bytes2 public ATTR_GOLDENGOOSE = bytes2(2**7);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(387)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    bytes2 public ATTR_PERMANENT  = bytes2(2**4);
    |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
  > |    bytes2 public ATTR_TRADABLE   = bytes2(2**6);
    |    bytes2 public ATTR_GOLDENGOOSE = bytes2(2**7);
    |}
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(388)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    bytes2 public ATTR_CONSUMABLE = bytes2(2**5);
    |    bytes2 public ATTR_TRADABLE   = bytes2(2**6);
  > |    bytes2 public ATTR_GOLDENGOOSE = bytes2(2**7);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(389)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |
    |    // The addresses of the accounts (or contracts) that can execute actions within each roles.
  > |    address public ceoAddress;
    |    address public ctoAddress;
    |    address public cooAddress;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(411)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    // The addresses of the accounts (or contracts) that can execute actions within each roles.
    |    address public ceoAddress;
  > |    address public ctoAddress;
    |    address public cooAddress;
    |    address public oracleAddress;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(412)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    address public ceoAddress;
    |    address public ctoAddress;
  > |    address public cooAddress;
    |    address public oracleAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(413)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    address public ctoAddress;
    |    address public cooAddress;
  > |    address public oracleAddress;
    |
    |    // @dev Keeps track whether the contract is paused. When that is true, most actions are blocked
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(414)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |
    |    // @dev Keeps track whether the contract is paused. When that is true, most actions are blocked
  > |    bool public paused = false;
    |
    |    /// @dev Access modifier for CEO-only functionality
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(417)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// @dev Assigns a new address to act as the CEO. Only available to the current CEO.
    |    /// @param _newCEO The address of the new CEO
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(448)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// @dev Assigns a new address to act as the CTO. Only available to the current CTO or CEO.
    |    /// @param _newCTO The address of the new CTO
  > |    function setCTO(address _newCTO) external {
    |        require(
    |            msg.sender == ceoAddress ||
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(456)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// @dev Assigns a new address to act as the COO. Only available to the current COO or CEO.
    |    /// @param _newCOO The address of the new COO
  > |    function setCOO(address _newCOO) external {
    |        require(
    |            msg.sender == ceoAddress ||
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(468)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// @dev Assigns a new address to act as oracle.
    |    /// @param _newOracle The address of oracle
  > |    function setOracle(address _newOracle) external {
    |        require(msg.sender == ctoAddress);
    |        require(_newOracle != address(0));
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(480)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// @dev Called by any "C-level" role to pause the contract. Used only when
    |    ///  a bug or exploit is detected and we need to limit damage.
  > |    function pause() external onlyCLevel whenNotPaused {
    |        paused = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(503)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// @notice This is public rather than external so it can be called by
    |    ///  derived contracts.
  > |    function unpause() public onlyCEO whenPaused {
    |        // can't unpause if contract was upgraded
    |        paused = false;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(511)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |
    |    /// @dev Contract holding only data.
  > |    EthernautsStorage public ethernautsStorage;
    |
    |    /*** CONSTANTS ***/
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(937)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /*** CONSTANTS ***/
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
  > |    string public constant name = "Ethernauts";
    |    string public constant symbol = "ETNT";
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(941)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// @notice Name and symbol of the non fungible token, as defined in ERC721.
    |    string public constant name = "Ethernauts";
  > |    string public constant symbol = "ETNT";
    |
    |    /********* ERC 721 - COMPLIANCE CONSTANTS AND FUNCTIONS ***************/
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(942)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    event Build(address owner, uint256 tokenId, uint16 assetId, uint256 price);
    |
  > |    function implementsERC721() public pure returns (bool) {
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(962)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    ///  Returns true for any standardized interfaces implemented by this contract. ERC-165 and ERC-721.
    |    /// @param _interfaceID interface signature ID
  > |    function supportsInterface(bytes4 _interfaceID) external view returns (bool)
    |    {
    |        return ((_interfaceID == InterfaceSignature_ERC165) || (_interfaceID == InterfaceSignature_ERC721));
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(969)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// @param _claimant the address we are validating against.
    |    /// @param _tokenId asset UniqueId, only valid when > 0
  > |    function _owns(address _claimant, uint256 _tokenId) internal view returns (bool) {
    |        return ethernautsStorage.ownerOf(_tokenId) == _claimant;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(977)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// @param _claimant the address we are confirming asset is approved for.
    |    /// @param _tokenId asset UniqueId, only valid when > 0
  > |    function _approvedFor(address _claimant, uint256 _tokenId) internal view returns (bool) {
    |        return ethernautsStorage.approvedFor(_tokenId) == _claimant;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(984)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    ///  _approve() and transferFrom() are used together for putting Assets on auction, and
    |    ///  there is no value in spamming the log with Approval events in that case.
  > |    function _approve(uint256 _tokenId, address _approved) internal {
    |        ethernautsStorage.approve(_tokenId, _approved);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(993)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    ///  including the caller.
    |    /// @param _tokenId The ID of the Asset to be transferred.
  > |    function _transferFrom(
    |        address _from,
    |        address _to,
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1065)

[33mWarning[0m for MissingInputValidation in contract 'EthernautsOwnership':
    |    /// @notice Returns the total number of Assets currently in existence.
    |    /// @dev Required for ERC-721 compliance.
  > |    function totalSupply() public view returns (uint256) {
    |        return ethernautsStorage.totalSupply();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1115)

[33mWarning[0m for UnhandledException in contract 'EthernautsOwnership':
    |    /// @param _tokenId asset UniqueId, only valid when > 0
    |    function _owns(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return ethernautsStorage.ownerOf(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(978)

[33mWarning[0m for UnhandledException in contract 'EthernautsOwnership':
    |    /// @param _tokenId asset UniqueId, only valid when > 0
    |    function _approvedFor(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return ethernautsStorage.approvedFor(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(985)

[33mWarning[0m for UnhandledException in contract 'EthernautsOwnership':
    |    ///  there is no value in spamming the log with Approval events in that case.
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        ethernautsStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(994)

[33mWarning[0m for UnhandledException in contract 'EthernautsOwnership':
    |    /// @dev Required for ERC-721 compliance
    |    function balanceOf(address _owner) public view returns (uint256 count) {
  > |        return ethernautsStorage.balanceOf(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1001)

[33mWarning[0m for UnhandledException in contract 'EthernautsOwnership':
    |
    |        // Reassign ownership, clear pending approvals, emit Transfer event.
  > |        ethernautsStorage.transfer(msg.sender, _to, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1032)

[33mWarning[0m for UnhandledException in contract 'EthernautsOwnership':
    |
    |        // Reassign ownership (also clears pending approvals and emits Transfer event).
  > |        ethernautsStorage.transfer(_from, _to, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1081)

[33mWarning[0m for UnhandledException in contract 'EthernautsOwnership':
    |    /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |    function takeOwnership(uint256 _tokenId) public {
  > |        address _from = ethernautsStorage.ownerOf(_tokenId);
    |
    |        // Safety check to prevent against an unexpected 0x0 default.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1106)

[33mWarning[0m for UnhandledException in contract 'EthernautsOwnership':
    |    /// @dev Required for ERC-721 compliance.
    |    function totalSupply() public view returns (uint256) {
  > |        return ethernautsStorage.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1116)

[33mWarning[0m for UnhandledException in contract 'EthernautsOwnership':
    |    returns (address owner)
    |    {
  > |        owner = ethernautsStorage.ownerOf(_tokenId);
    |
    |        require(owner != address(0));
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1127)

[33mWarning[0m for UnhandledException in contract 'EthernautsOwnership':
    |        require(_owner != address(0));
    |
  > |        uint256 tokenID = ethernautsStorage.createAsset(
    |            _creatorTokenID,
    |            _owner,
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1154)

[33mWarning[0m for UnhandledException in contract 'EthernautsOwnership':
    |        uint256 cooldown;
    |        uint64 cooldownEndBlock;
  > |        (,,,,,cooldownEndBlock, cooldown,) = ethernautsStorage.assets(_tokenId);
    |        return (cooldown > now) || (cooldownEndBlock > uint64(block.number));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsOwnership':
    |    /// @param _tokenId asset UniqueId, only valid when > 0
    |    function _owns(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return ethernautsStorage.ownerOf(_tokenId) == _claimant;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(978)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsOwnership':
    |    ///  there is no value in spamming the log with Approval events in that case.
    |    function _approve(uint256 _tokenId, address _approved) internal {
  > |        ethernautsStorage.approve(_tokenId, _approved);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(994)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsOwnership':
    |    /// @dev Required for ERC-721 compliance
    |    function balanceOf(address _owner) public view returns (uint256 count) {
  > |        return ethernautsStorage.balanceOf(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1001)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsOwnership':
    |
    |        // Reassign ownership, clear pending approvals, emit Transfer event.
  > |        ethernautsStorage.transfer(msg.sender, _to, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1032)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsOwnership':
    |    /// @param _tokenId The ID of the Token that can be transferred if this call succeeds.
    |    function takeOwnership(uint256 _tokenId) public {
  > |        address _from = ethernautsStorage.ownerOf(_tokenId);
    |
    |        // Safety check to prevent against an unexpected 0x0 default.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsOwnership':
    |    /// @dev Required for ERC-721 compliance.
    |    function totalSupply() public view returns (uint256) {
  > |        return ethernautsStorage.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1116)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsOwnership':
    |    returns (address owner)
    |    {
  > |        owner = ethernautsStorage.ownerOf(_tokenId);
    |
    |        require(owner != address(0));
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsOwnership':
    |        require(_owner != address(0));
    |
  > |        uint256 tokenID = ethernautsStorage.createAsset(
    |            _creatorTokenID,
    |            _owner,
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthernautsOwnership':
    |        uint256 cooldown;
    |        uint64 cooldownEndBlock;
  > |        (,,,,,cooldownEndBlock, cooldown,) = ethernautsStorage.assets(_tokenId);
    |        return (cooldown > now) || (cooldownEndBlock > uint64(block.number));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(1183)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsOwnership':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsOwnership':
    |        require(_newCTO != address(0));
    |
  > |        ctoAddress = _newCTO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsOwnership':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(475)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsOwnership':
    |        require(_newOracle != address(0));
    |
  > |        oracleAddress = _newOracle;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(484)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsOwnership':
    |    ///  a bug or exploit is detected and we need to limit damage.
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsOwnership':
    |    function unpause() public onlyCEO whenPaused {
    |        // can't unpause if contract was upgraded
  > |        paused = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(513)

[31mViolation[0m for LockedEther in contract 'EthernautsStorage':
    |//          a list of granted contracts defined by CTO
    |/// @author Ethernauts - Fernando Pauer
  > |contract EthernautsStorage is EthernautsAccessControl {
    |
    |    function EthernautsStorage() public {
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(531)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |pragma solidity ^0.4.19;
    |
  > |/// @title Interface for contracts conforming to ERC-721: Non-Fungible Tokens
    |/// @author Ethernauts
    |contract ERC721 {
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |//          a list of granted contracts defined by CTO
    |/// @author Ethernauts - Fernando Pauer
  > |contract EthernautsStorage is EthernautsAccessControl {
    |
    |    function EthernautsStorage() public {
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(531)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |    /// @param _price    asset price
    |    function setPrice(uint256 _tokenId, uint256 _price) public onlyGrantedContracts {
  > |        assetIndexToPrice[_tokenId] = _price;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(665)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |    /// @param _approved address approved
    |    function approve(uint256 _tokenId, address _approved) public onlyGrantedContracts {
  > |        assetIndexToApproved[_tokenId] = _approved;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(672)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |    function transfer(address _from, address _to, uint256 _tokenId) public onlyGrantedContracts {
    |        // Since the number of assets is capped to 2^32 we can't overflow this
  > |        ownershipTokenCount[_to]++;
    |        // transfer ownership
    |        assetIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(681)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |        ownershipTokenCount[_to]++;
    |        // transfer ownership
  > |        assetIndexToOwner[_tokenId] = _to;
    |        // When creating new assets _from is 0x0, but we can't account that address.
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(683)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |        // When creating new assets _from is 0x0, but we can't account that address.
    |        if (_from != address(0)) {
  > |            ownershipTokenCount[_from]--;
    |            // clear any previously approved ownership exchange
    |            delete assetIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(686)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |            ownershipTokenCount[_from]--;
    |            // clear any previously approved ownership exchange
  > |            delete assetIndexToApproved[_tokenId];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(688)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |            });
    |
  > |        uint256 newAssetUniqueId = assets.push(asset) - 1;
    |
    |        // Check it reached 4 billion assets but let's just be 100% sure.
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(736)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |
    |        // store price
  > |        assetIndexToPrice[newAssetUniqueId] = _price;
    |
    |        // This will assign ownership
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(742)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |        asset.attributes = bytes2(_attributes);
    |        asset.stats = _stats;
  > |        asset.state = _state;
    |        asset.cooldown = _cooldown;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(791)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |        asset.stats = _stats;
    |        asset.state = _state;
  > |        asset.cooldown = _cooldown;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(792)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |    /// @param _state asset state, see Asset Struct description
    |    function updateState(uint256 _tokenId, uint8 _state) public validAsset(_tokenId) onlyGrantedContracts {
  > |        assets[_tokenId].state = _state;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(806)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |    function setAssetCooldown(uint256 _tokenId, uint256 _cooldown, uint64 _cooldownEndBlock)
    |    public validAsset(_tokenId) onlyGrantedContracts {
  > |        assets[_tokenId].cooldown = _cooldown;
    |        assets[_tokenId].cooldownEndBlock = _cooldownEndBlock;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(814)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |    public validAsset(_tokenId) onlyGrantedContracts {
    |        assets[_tokenId].cooldown = _cooldown;
  > |        assets[_tokenId].cooldownEndBlock = _cooldownEndBlock;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(815)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |        require(_newCTO != address(0));
    |
  > |        ctoAddress = _newCTO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(475)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |        require(_newOracle != address(0));
    |
  > |        oracleAddress = _newOracle;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(484)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |    ///  a bug or exploit is detected and we need to limit damage.
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |    function unpause() public onlyCEO whenPaused {
    |        // can't unpause if contract was upgraded
  > |        paused = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |    function grantAccess(address _v2Address) public onlyCTO {
    |        // See README.md for updgrade plan
  > |        contractsGrantedAccess[_v2Address] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(560)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |    function removeAccess(address _v2Address) public onlyCTO {
    |        // See README.md for updgrade plan
  > |        delete contractsGrantedAccess[_v2Address];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(567)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |
    |        // store price
  > |        assetIndexToPrice[_tokenId] = _price;
    |
    |        Asset storage asset = assets[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(783)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |
    |        Asset storage asset = assets[_tokenId];
  > |        asset.ID = _ID;
    |        asset.category = _category;
    |        asset.builtBy = _creatorTokenID;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(786)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |        Asset storage asset = assets[_tokenId];
    |        asset.ID = _ID;
  > |        asset.category = _category;
    |        asset.builtBy = _creatorTokenID;
    |        asset.attributes = bytes2(_attributes);
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(787)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |        asset.ID = _ID;
    |        asset.category = _category;
  > |        asset.builtBy = _creatorTokenID;
    |        asset.attributes = bytes2(_attributes);
    |        asset.stats = _stats;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(788)

[33mWarning[0m for UnrestrictedWrite in contract 'EthernautsStorage':
    |        asset.category = _category;
    |        asset.builtBy = _creatorTokenID;
  > |        asset.attributes = bytes2(_attributes);
    |        asset.stats = _stats;
    |        asset.state = _state;
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(789)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |// Extend this library for child contracts
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x97d1761564c564fe0325e5538d35687a73970cd4.sol(37)


